package com.desiEngg.webapp.controller;

import com.desiEngg.model.BucketModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 10/6/14
 * Time: 3:38 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class AdminController {

    @Autowired
    BucketModel bucketModel;

    @RequestMapping(value = {"/admin/panel", "/desiengg/admin/panel"})
    public String getRecords(HttpServletRequest request) {
        request.setAttribute("model", bucketModel);
        return "bucketList";
    }

}
