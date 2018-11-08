/**
 * Project Name:ala_ssm
 * File Name:FrontOoController.java
 * Package Name:com.java.controller
 * Date:2017年10月20日下午4:35:31
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Order;
import com.java.service.FrontOoService;

/**
 * Description: <br/>
 * Date: 2017年10月20日 下午4:35:31 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Controller
public class FrontOoController {

    @Autowired
    private FrontOoService fos;

    /**
     * 
     * Description:所有订单信息列表 <br/>
     *
     * @author chenWP
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/findoo")
    public String find(Model model) throws IOException {
        model.addAttribute("list", fos.find());
        return "oolist.jsp";

    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @param order
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/updateoo")
    public String update(Order order, Model model) throws IOException {
        fos.update(order);
        model.addAttribute(order);

        return "redirect:findoo.action";

    }

    /**
     * 
     * Description:通过id号获取当前信息 <br/>
     *
     * @author chenWP
     * @param order
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/getOrder")
    public String getOrder(Order order, Model model) throws IOException {
        model.addAttribute("order", fos.getOrder(order.getId()));
        return "ootoupdate.jsp";

    }

    /**
     * 
     * Description:删除信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/deleteoo")
    public String delete(Long id) throws IOException {
        fos.delete(id);
        return "redirect:findoo.action";
    }

}
