/**
 * Project Name:ssmdemo
 * File Name:AdminController.java
 * Package Name:com.java.controller
 * Date:2017��9��23������3:36:23
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.pojo.Activity;
import com.java.pojo.Order;
import com.java.service.ActivityService;
import com.java.service.OrderService;
import com.java.service.PclyService;

/**
 * Description: <br/>
 * Date: 2017��9��23�� ����3:36:23 <br/>
 * 
 * @author WenH
 * @version
 * @see
 */
@Controller
public class IndexController {
    @Autowired
    private ActivityService activityService;

    @Autowired
    private PclyService pclyService;

    @Autowired
    private OrderService orderService;

    private Activity activity = new Activity();

    @RequestMapping("selectAjax")
    public @ResponseBody Map<String, Object> selectAjax(Model model, HttpServletRequest request) {
        String Hdaddres = request.getParameter("Hdaddres");
        String hdtyp = request.getParameter("hdtyp");
        System.out.println(Hdaddres);
        System.out.println(hdtyp);
        activity.setHdaddress(Hdaddres);
        activity.setHdtype(hdtyp);
        List<Activity> la = activityService.selectActivity(activity);
        Map map = new HashMap();
        map.put("la", la);
        return map;

    }

    @RequestMapping("selectHdtype")
    public String selecthdtype(Model model, HttpServletRequest request) {
        model.addAttribute("hd", activityService.selectActivity(activity));
        model.addAttribute("Hdaddres", activityService.selectHdaddress());
        model.addAttribute("hdtyp", activityService.selecThdtype());
        return "parent-offspring_activity_in.jsp";

    }

    @RequestMapping("selectindex")
    public String select1(Model model) {
        model.addAttribute("lytype", pclyService.selecThdtype());
        model.addAttribute("hd", activityService.selectActivity(activity));
        activityService.selectActivity(activity);
        return "index.jsp";

    }

    @RequestMapping("selectly")
    public String select2(Model model) {
        model.addAttribute("lytype", pclyService.selecThdtype());
        model.addAttribute("ly", pclyService.selecLy());
        return "parent-offspring_travling.jsp";

    }

    @RequestMapping("selecthd")
    public String select3(Model model) {
        model.addAttribute("hd", activityService.selectActivity(activity));
        return "activityShow.jsp";

    }

    @RequestMapping("toparent-offspring_activity")
    public String topoa(HttpServletRequest request, Model model) {
        String hdaddress = request.getParameter("hdaddress");
        String hdprice = request.getParameter("hdprice");
        String hdname = request.getParameter("hdname");
        String hdtime = request.getParameter("hdtime");
        hdtime = hdtime.substring(5, 11);

        model.addAttribute("hdname", hdname);
        model.addAttribute("hdprice", hdprice);
        model.addAttribute("hdtime", hdtime);
        model.addAttribute("hdaddress", hdaddress);
        return "parent-offspring_activity.jsp";

    }

    @RequestMapping("tosubmitOrder")
    public String toso(HttpServletRequest request, Model model) {
        String hdaddress = request.getParameter("hdaddress");
        String hdprice = request.getParameter("hdprice");
        String hdname = request.getParameter("hdname");
        String tot = request.getParameter("tot");
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        model.addAttribute("tot", tot);
        model.addAttribute("hdname", hdname);
        model.addAttribute("hdprice", hdprice);
        model.addAttribute("hdaddress", hdaddress);
        model.addAttribute("num1", num1);
        model.addAttribute("num2", num2);

        return "submitOrder.jsp";

    }

    @RequestMapping("toordetrDetails")
    public String tood(Order order, Model model) {
        orderService.insertOrder(order);

        String oname = order.getOname();
        String odizhi = order.getOdizhi();
        String ochuxing = order.getOchuxing();
        String omessage = order.getOmessage();
        String omoney = order.getOmoney();
        String uname = order.getUname();
        String uphone = order.getUphone();
        String ut = order.getUt();

        model.addAttribute("oname", oname);
        model.addAttribute("odizhi", odizhi);
        model.addAttribute("ochuxing", ochuxing);
        model.addAttribute("omessage", omessage);
        model.addAttribute("omoney", omoney);
        model.addAttribute("uname", uname);
        model.addAttribute("uphone", uphone);
        model.addAttribute("ut", ut);

        return "ordetrDetails.jsp";

    }

}
