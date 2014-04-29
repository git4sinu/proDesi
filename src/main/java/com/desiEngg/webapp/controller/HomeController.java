package com.desiEngg.webapp.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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

    @RequestMapping(value = {"/", "/home"})
    public String welcomePage(HttpServletRequest request, HttpServletResponse response) {
        mLogger.info("Inside Home");
        return "homePage";
    }
}
