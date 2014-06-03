package com.desiEngg.webapp.controller;

import com.desiEngg.model.BucketModel;
import com.desiEngg.webapp.form.BucketForm;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.appfuse.dao.BucketDao;
import org.appfuse.model.BucketData;
import org.appfuse.model.User;
import org.appfuse.service.BucketManager;
import org.appfuse.service.UserExistsException;
import org.appfuse.service.UserManager;
import org.appfuse.util.ConvertUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.StringWriter;
import java.util.Map;
import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/6/14
 * Time: 3:01 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class RegisterBucketController {

    Log dlogger= LogFactory.getFactory().getInstance(RegisterBucketController.class);

    BucketForm bucketForm;

    @Autowired
    BucketDao bucketDao;

    @Autowired
    BucketManager bucketManager;

    @Autowired
    UserManager userManager;

    @Autowired
    BucketModel bucketModel;

    @Autowired
    VelocityEngine velocityEngine;

    BucketData bucketData;

    User user=null;

    @RequestMapping(value = {"/home/viewBucket","/desiengg/home/viewBucket"})
    public String viewHome(HttpServletRequest request) {
        bucketModel.setBucketData(null);
        request.setAttribute("model", bucketModel);
        return "bucketPage";
    }

    @RequestMapping(value = {"/home/test","/desiengg/home/test"})
    public String test(HttpServletRequest request) {
        bucketModel.setBucketData(null);
        request.setAttribute("model", bucketModel);
        return "test";
    }

    @RequestMapping(value = {"/home/saveBucket","/desiengg/home/saveBucket"}, method = RequestMethod.POST)
    public String save(@ModelAttribute("bucketForm") BucketForm bucketForm,HttpServletRequest request) {
        try {
            user=SaveUser(bucketForm);
            bucketData=CalculateBucket(bucketForm);
            String tranID=bucketModel.calculatePayu(bucketForm);
            bucketData.setTransactionID(tranID);
            bucketManager.saveBucket(bucketData);
        } catch (Exception e) {
            dlogger.error(e);
        }
        //login here
        bucketModel.setBucketData(bucketData);
        bucketModel.setUser(user);
        request.getSession().setAttribute("user",user);
        bucketModel.login();
        request.setAttribute("model", bucketModel);
        //return "payUPage";
        return "bucketPage";
    }

    @RequestMapping(value = {"/home/showBucket","/desiengg/home/showBucket"})
    public String showDetails(HttpServletRequest request) {
        bucketData = bucketModel.getBucketData();
        if (bucketData == null) {
            //get transaction ID
            Map requestParameterMap = request.getParameterMap();
            if (requestParameterMap != null) {
                String transID = request.getParameter("txnid");
                if (StringUtils.isNotEmpty(transID)) {
                    bucketData = bucketManager.getBucketDatabyTransactionId(transID);
                }
            }
        }
        if (bucketData != null) {
            bucketData.setPaymentStatus(true);
            bucketData = bucketManager.saveBucket(bucketData);
            bucketModel.setBucketData(bucketData);
            user = userManager.getUserByID(bucketData.getUserId());
            bucketModel.setUser(user);
            request.getSession().setAttribute("user",user);
        }
        request.setAttribute("model", bucketModel);
        return "bucketPage";
    }


    @RequestMapping(value = {"/user/pdf/{bId}","/desiengg/user/pdf/{bId}"})
    public String generatePDF(@PathVariable String bId ,@ModelAttribute("bucketForm") BucketForm bucketForm,
                              HttpServletResponse response) throws Exception {
        if (StringUtils.isNotEmpty(bId)) {
            Document document = new Document();
            bucketData = bucketManager.getBucketData(bId);
            if (bucketData != null) {
                try {
                    bucketModel.setBucketData(bucketData);
                    response.setContentType("application/pdf");
                    PdfWriter.getInstance(document, response.getOutputStream());
                    document.open();
                    String templateName = "bucketPDF.vm";
                     /*  create a context and add data */
                    StringWriter writer = new StringWriter();
                    VelocityContext context = new VelocityContext();
                    context.put("model", bucketModel);
                    Template t = velocityEngine.getTemplate(templateName);
                    t.merge(context, writer);
                    document.add(new Paragraph(writer.toString()));
                } catch (Exception e) {
                    dlogger.error(e);
                } finally {
                    document.close();
                }
            }
        }
        return null;
    }
    @RequestMapping(value = {"/user/view","/desiengg/user/view"})
    public String viewList(HttpServletRequest request) {
        request.setAttribute("model", bucketModel);
        return "bucketList";
    }
    public User SaveUser(BucketForm bucketForm) throws UserExistsException {
        if (StringUtils.isNotEmpty(bucketForm.getEmail())) {
            user = userManager.getUserbyEmailid(bucketForm.getEmail());
            Random r = new Random(System.currentTimeMillis());
            int rNumber=(1 + r.nextInt(2)) * 10000 + r.nextInt(10000);
            if (user == null) {
                user = new User();
                user.setUsername(bucketForm.getFirstName()+rNumber);
            }
            user.setFirstName(bucketForm.getFirstName());
            user.setPassword(bucketForm.getPassword());
            user.setConfirmPassword(bucketForm.getConfirmPassword());
            user.setEmail(bucketForm.getEmail());
            user.setEnabled(true);
            user.setPhoneNumber(bucketForm.getPhoneNumber());
            user.getAddress().setAddress(bucketForm.getAddress());
            user=userManager.saveUser(user);
        }
        return user;
    }

    public BucketData CalculateBucket(BucketForm bucketForm) {
        //To change body of created methods use File | Settings | File Templates.
        //find no of buckets /sec using 2/3 capacity in bucket

        Double productCapacity=bucketForm.getDensity()*bucketForm.getVolume();
        Double capacitytwothird=2*productCapacity/3;
        bucketForm.setCapacityTwoThird(capacitytwothird);
        Double noOfBuckets=bucketForm.getCapacity()/(bucketForm.getCapacityTwoThird()*3600);

        //determine belt speed using noOfBuckets and capacityTwoThird
        Double beltSpeed=noOfBuckets*bucketForm.getPitch();

        //determine diameter using beltSpeed and noOfBuckets
        Double radius=(beltSpeed*beltSpeed)/bucketForm.getGravity();
        Double diameter=2*radius;

        //determine driveSpeed using noOfBuckets and diameter
        Double noofBucketsSpacing=noOfBuckets*bucketForm.getPitch();
        Double driveSpeed=noofBucketsSpacing*60/(3.14*diameter);

        //determine chuteDepth using noOfBuckets and horizontalDirection
        Double horizontalDirection=.5*noofBucketsSpacing;
        Double chuteDepth=horizontalDirection;

        //determine chuteVertical using horizontalDirection and .6 factor
        Double chuteVertical=horizontalDirection*0.6;

        //determine beltWidth using radius and .02 factor
        Double beltWidth=bucketForm.getWidth()+0.02;

        //determine pulleyWidth using beltWidth and .02 factor
        Double pulleyWidth=beltWidth+.02;

        //determine grossWeight using EmptyBucketWeight(.15) and capacityTwoThird
        Double grossWeight=bucketForm.getCapacityTwoThird()+.15;

        //determine tensionTight using beltWidth and thickness and Stress
        Double thickness=.012;
        if (beltWidth < .300 && beltWidth > .200) {
            thickness = 0.01;
        } else if (beltWidth < .200 && beltWidth > .120) {
            thickness = 0.008;
        } else if (beltWidth < .120 && beltWidth > .060) {
            thickness = 0.007;
        } else if (beltWidth < .060 && beltWidth > .0025) {
            thickness = 0.005;
        }
        Double tensionTight=beltWidth*thickness*bucketForm.getStress();

        //determine tensionSlack using tensionTight and Math.exp
        Double exp=Math.exp(0.3*3.14);
        Double tensionSlack=tensionTight/exp;

        //determine power using power1 and power2
        //determine power1 using load and velocity
        Double noofBucketsperSide=(bucketForm.getHeight()/bucketForm.getPitch())+(diameter*3.14/bucketForm.getPitch());
        Double loadwithBuckets=(noofBucketsperSide*(grossWeight+bucketForm.getWeight()))*9.81;
        Double velocity=noofBucketsSpacing;
        Double power1=(loadwithBuckets*velocity)/1000;

        Double f1=tensionTight;
        Double f2=f1/exp;
        Double power2=((f1-f2)*velocity)/1000;
        Double power=power1+power2;

        //determine bucketCount using noofBucketsperSide
        Double bucketCount=noofBucketsperSide;

        //determine torque using (f1-f2)*radius
        Double torque=(f1-f2)*radius;

        //determine shaftDiameter using Math.pow
        Double d3=torque*1000/((3.14/16)*60);
        Double d=Math.pow(d3,0.333333333);
        Double shaftDiameter=d/1000;

        //determine gearLoad using
        Double fg=(power*1000*60)/(6*3.14*shaftDiameter);
        Double gearLoad=fg/1000;

        //determine shaftLoad using gearLoad
        Double shaftLoad=0.333333333*gearLoad;

        //determine pulleyThickness
        Double pulleyThickness=0.005*diameter+0.003;

        //determine pulleyArmsCount
        Double pulleyArmsCount=9.5*Math.sqrt(diameter)/2;

        //determine twoPoleGearRatio
        Double rpm=(velocity*60/(3.14*diameter));
        Double twoPoleGearRatio=3000/rpm;
        Double fourPoleGearRatio=1500/rpm;
        Double sixPoleGearRatio=1000/rpm;

        if(StringUtils.isNotEmpty(bucketForm.getId())){
            bucketData=bucketManager.getBucketData(bucketForm.getId());
        }else {
            bucketData=new BucketData();
        }
        bucketData.setCapacity(ConvertUtil.roundDouble(bucketForm.getCapacity(),0));
        bucketData.setDensity(ConvertUtil.roundDouble(bucketForm.getDensity(),0));
        bucketData.setVolume(ConvertUtil.roundDouble(bucketForm.getVolume(),3));
        bucketData.setPitch(ConvertUtil.roundDouble(bucketForm.getPitch(),2));
        bucketData.setWidth(ConvertUtil.roundDouble(bucketForm.getWidth(),2));
        bucketData.setHeight(ConvertUtil.roundDouble(bucketForm.getHeight(),0));
        bucketData.setWeight(ConvertUtil.roundDouble(bucketForm.getWeight(),2));
        bucketData.setStress(ConvertUtil.roundDouble(bucketForm.getStress(),0));
        bucketData.setAngle(ConvertUtil.roundDouble(bucketForm.getAngle(),2));
        bucketData.setBeltSpeed(ConvertUtil.roundDouble(beltSpeed,2));
        bucketData.setDiameter(ConvertUtil.roundDouble(diameter,3));
        bucketData.setShaftDiameter(ConvertUtil.roundDouble(shaftDiameter,3));
        bucketData.setDriveSpeed(ConvertUtil.roundDouble(driveSpeed,2));
        bucketData.setChuteDepth(ConvertUtil.roundDouble(chuteDepth,3));
        bucketData.setChuteVertical(ConvertUtil.roundDouble(chuteVertical,3));
        bucketData.setBeltWidth(ConvertUtil.roundDouble(beltWidth,2));
        bucketData.setPulleyWidth(ConvertUtil.roundDouble(pulleyWidth,2));
        bucketData.setGrossWeight(ConvertUtil.roundDouble(grossWeight,2));
        bucketData.setTensionTight(ConvertUtil.roundDouble(tensionTight,3));
        bucketData.setTensionSlack(ConvertUtil.roundDouble(tensionSlack,2));
        bucketData.setPower(ConvertUtil.roundDouble(power,2));
        bucketData.setBucketCount(ConvertUtil.roundDouble(bucketCount,3));
        bucketData.setTorque(ConvertUtil.roundDouble(torque,3));
        bucketData.setGearLoad(ConvertUtil.roundDouble(gearLoad,3));
        bucketData.setShaftLoad(ConvertUtil.roundDouble(shaftLoad,3));
        bucketData.setPulleyThickness(ConvertUtil.roundDouble(pulleyThickness,3));
        bucketData.setPulleyArmsCount(ConvertUtil.roundDouble(pulleyArmsCount,0));
        bucketData.setTwoPoleGearRatio(ConvertUtil.roundDouble(twoPoleGearRatio,3));
        bucketData.setFourPoleGearRatio(ConvertUtil.roundDouble(fourPoleGearRatio,3));
        bucketData.setSixPoleGearRatio(ConvertUtil.roundDouble(sixPoleGearRatio,3));
        bucketData.setPaymentStatus(false);
        if(StringUtils.isNotEmpty(user.getId()))bucketData.setUserId(user.getId());
        return  bucketData;
    }


}
