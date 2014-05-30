package com.desiEngg.webapp.controller;

import com.desiEngg.webapp.form.BucketForm;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.dao.BucketDao;
import org.appfuse.model.BucketData;
import org.appfuse.service.BucketManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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


    BucketData bucketData=new BucketData();

    @RequestMapping(value = "/home/saveBucket", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("bucketForm") BucketForm bucketForm) {
        try {
            CalculateBucket(bucketData, bucketForm);
        } catch (Exception e) {
            dlogger.error(e);
        }
        dlogger.info(bucketForm.getCapacity());
        return new ModelAndView("homePage", "bucketForm", bucketForm);



    }

    public void CalculateBucket(BucketData bucketData, BucketForm bucketForm) {
        //To change body of created methods use File | Settings | File Templates.
        //find no of buckets /sec using 2/3 capacity in bucket

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
        Double noofBucketsperSide=bucketForm.getHeight()/bucketForm.getPitch();
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

        bucketData.setBeltSpeed(beltSpeed);
        bucketData.setDiameter(diameter);
        bucketData.setDriveSpeed(driveSpeed);
        bucketData.setChuteDepth(chuteDepth);
        bucketData.setChuteVertical(chuteVertical);
        bucketData.setBeltWidth(beltWidth);
        bucketData.setPulleyWidth(pulleyWidth);
        bucketData.setGrossWeight(grossWeight);
        bucketData.setTensionTight(tensionTight);
        bucketData.setTensionSlack(tensionSlack);
        bucketData.setPower(power);
        bucketData.setBucketCount(bucketCount);
        bucketData.setTorque(torque);
        bucketData.setDiameter(diameter);
        bucketData.setGearLoad(gearLoad);
        bucketData.setShaftLoad(shaftLoad);
        bucketData.setPulleyThickness(pulleyThickness);
        bucketData.setPulleyArmsCount(pulleyArmsCount);
        bucketData.setTwoPoleGearRatio(twoPoleGearRatio);
        bucketData.setFourPoleGearRatio(fourPoleGearRatio);
        bucketData.setSixPoleGearRatio(sixPoleGearRatio);
        bucketManager.saveBucket(bucketData);
    }

}
