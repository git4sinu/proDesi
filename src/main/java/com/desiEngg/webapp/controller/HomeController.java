package com.desiEngg.webapp.controller;

import com.desiEngg.model.BaseModel;
import com.desiEngg.model.BucketModel;
import com.desiEngg.webapp.form.BucketForm;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.model.User;
import org.appfuse.service.UserExistsException;
import org.appfuse.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 4/28/14
 * Time: 8:48 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class HomeController {
    Log mLogger = LogFactory.getFactory().getInstance(HomeController.class);

    @Autowired
    BaseModel baseModel;

    @Autowired
    BucketModel bucketModel;

    @Autowired
    UserManager userManager;

    User user=null;

    @RequestMapping(value = {"/", "/home","/desiengg/home"})
    public String welcomePage(HttpServletRequest request, HttpServletResponse response) {
        mLogger.info("Inside Home");
        String fromBucket = request.getParameter("b");
        if (StringUtils.isNotEmpty(fromBucket) && fromBucket.equals("1")) {
            request.setAttribute("model", bucketModel);
        } else {
            request.setAttribute("model", baseModel);
        }
        return "homePage";
    }
    @RequestMapping(value = {"/home/contact", "/desiengg/home/contact"})
    public String contact(@ModelAttribute("bucketForm") BucketForm bucketForm,HttpServletRequest request) {
        try {
            if(StringUtils.isNotEmpty(bucketForm.getEmail())){
                user=bucketModel.SaveUser(bucketForm);
                return "homePage";
            }
        } catch (UserExistsException e) {
            mLogger.error(e);
        }
        return "contactUs";
    }
    @RequestMapping(value = {"/home/pricing", "/desiengg/home/pricing"})
    public String pricing(HttpServletRequest request, HttpServletResponse response) {
        return "pricing";
    }

}
