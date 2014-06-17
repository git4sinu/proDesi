package com.desiEngg.webapp.controller;

import com.desiEngg.model.BucketModel;
import com.desiEngg.webapp.form.BucketForm;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.model.User;
import org.appfuse.service.UserExistsException;
import org.appfuse.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    Log dlogger= LogFactory.getFactory().getInstance(UserController.class);

    @Autowired
    UserManager userManager;

    User user=null;

    @Autowired
    BucketModel bucketModel;

    @RequestMapping("/users*")
    public String execute(ModelMap model) {
        model.addAttribute("userList", userManager.getUsers());
        return "userList";
    }



    @RequestMapping(value = {"/home/registerUser","/desiengg/home/registerUser"}, method = RequestMethod.POST)
    public String save(@ModelAttribute("bucketForm") BucketForm bucketForm,HttpServletRequest request) {
        try {
            user=bucketModel.SaveUser(bucketForm);
            bucketModel.setUser(user);
            bucketModel.login();
        } catch (UserExistsException e) {
            dlogger.error(e);
        }
        return "homePage";

    }
}
