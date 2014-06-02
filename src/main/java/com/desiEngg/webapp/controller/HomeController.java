package com.desiEngg.webapp.controller;

import com.desiEngg.model.BaseModel;
import com.desiEngg.model.BucketModel;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.appfuse.model.User;
import org.appfuse.service.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @Autowired
    BucketModel bucketModel;

    @Autowired
    UserManager userManager;

    @RequestMapping(value = {"/", "/home","/desiengg/home"})
    public String welcomePage(HttpServletRequest request, HttpServletResponse response) {
        mLogger.info("Inside Home");
        try {
            if (request.getSession().getAttribute("user") == null) {
                request.getSession().setAttribute("user", baseModel.getLogedinUser());
            }

        } catch (Exception e) {
            mLogger.error(e);
        }
        String fromBucket = request.getParameter("b");
        if (StringUtils.isNotEmpty(fromBucket) && fromBucket.equals("1")) {
            request.setAttribute("model", bucketModel);
        } else {
            request.setAttribute("model", baseModel);
        }
        return "homePage";
    }
}
