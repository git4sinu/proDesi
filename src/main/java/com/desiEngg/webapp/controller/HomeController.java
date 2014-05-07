package com.desiEngg.webapp.controller;

import com.desiEngg.model.BaseModel;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping(value = {"/", "/home"})
    public String welcomePage(HttpServletRequest request, HttpServletResponse response) {
        mLogger.info("Inside Home");
        String fromBucket=request.getParameter("b");
        if(StringUtils.isNotEmpty(fromBucket) && fromBucket.equals("1"))
        request.setAttribute("baseModel",baseModel);
        return "homePage";
    }
}
