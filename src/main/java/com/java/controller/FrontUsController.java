/**
 * Project Name:ala_ssm
 * File Name:FrontAcController.java
 * Package Name:com.java.controller
 * Date:2017年10月19日下午12:39:43
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.User;
import com.java.service.FrontUsService;
import com.java.utils.MD5Tools;

/**
 * Description:管理员信息 <br/>
 * Date: 2017年10月19日 下午12:39:43 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Controller
public class FrontUsController {

    @Autowired
    private FrontUsService fus;

    /**
     * 
     * Description:所有管理员信息列表 <br/>
     *
     * @author chenWP
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/findus")
    public String find(Model model) throws IOException {
        model.addAttribute("list", fus.find());
        return "uslist.jsp";
    }

    /**
     * 
     * Description:所有管理员信息列表 <br/>
     *
     * @author chenWP
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/findall")
    public String findall(Model model) throws IOException {
        model.addAttribute("list", fus.findall());
        return "alllist.jsp";
    }

    /**
     * 
     * Description:添加管理员信息 <br/>
     *
     * @author chenWP
     * @param user
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/addus")
    public String add(User user, Model model) throws IOException {
        fus.add(user);
        return "redirect:findus.action";
    }

    /**
     * 
     * Description:修改管理员信息 <br/>
     *
     * @author chenWP
     * @param user
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/updateus")
    public String update(User user, Model model) throws IOException {
        fus.update(user);
        model.addAttribute(user);
        return "redirect:findus.action";

    }

    /**
     * 
     * Description:修改会员信息 <br/>
     *
     * @author chenWP
     * @param user
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/updateall")
    public String updateall(User user, Model model) throws IOException {
        fus.update(user);
        model.addAttribute(user);
        return "redirect:findall.action";

    }

    @RequestMapping("/getUserA")
    public String getUserA(User user, Model model) throws IOException {
        User a = fus.getUserA(user.getUserID());
        a.setUserID(user.getUserID());
        model.addAttribute("userA", a);
        return "ustoupdate.jsp";

    }

    /**
     * 
     * Description: 获取会员当前的信息<br/>
     *
     * @author chenWP
     * @param user
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/getUserB")
    public String getUserB(User user, Model model) throws IOException {
        User a = fus.getUserB(user.getUserID());
        a.setUserID(user.getUserID());
        model.addAttribute("userB", a);
        return "alltoupdate.jsp";

    }

    @RequestMapping("/deleteall")
    public String deleteus(Long userID) throws IOException {
        fus.delete(userID);
        return "redirect:findall.action";

    }

    @RequestMapping("/updatepp")
    public String updatepp(User user, Model model) throws Exception {
        user.setPassword(MD5Tools.MD5Code(user.getPassword()));
        fus.updatepp(user);
        model.addAttribute(user);

        return "redirect:findus.action";

    }
}
