/**
 * Project Name:ala_ssm
 * File Name:FrontAcController.java
 * Package Name:com.java.controller
 * Date:2017年10月19日下午12:39:43
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.java.pojo.Pcly;
import com.java.service.FrontPcService;

/**
 * Description: <br/>
 * Date: 2017年10月19日 下午12:39:43 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Controller
public class FrontPcController {

    @Autowired
    private FrontPcService fps;

    /**
     * 
     * Description:所有信息列表 <br/>
     *
     * @author chenWP
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/findpc")
    public String find(Model model) throws IOException {
        model.addAttribute("list", fps.find());
        return "lylist.jsp";
    }

    /**
     * 
     * Description:添加信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/addpc")
    public String addActivity(Pcly pcly, HttpServletRequest request, Model model, MultipartFile myfile)
            throws IOException {
        String lypicture = myfile.getOriginalFilename();// 纯文件名，如：xx.jpg
        // upload文件路径
        String path = request.getSession().getServletContext().getRealPath("resources/images");
        // file后面加上文件名的路径就是文件的位置
        File file = new File(path + "/" + lypicture); // 创建一个文件对象用来映射当前上传文件在服务器中的地址+文件名

        myfile.transferTo(file); // 实现文件上传
        pcly.setLypicture(lypicture);
        fps.add(pcly);
        return "redirect:findpc.action";
    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/updatepc")
    public String update(Pcly pcly, Model model, HttpServletRequest request, MultipartFile myfile) throws IOException {

        String lypicture = myfile.getOriginalFilename();// 纯文件名，如：xx.jpg
        // upload文件路径
        if (lypicture != "") {
            String path = request.getSession().getServletContext().getRealPath("resources/images");
            // file后面加上文件名的路径就是文件的位置
            File file = new File(path + "/" + lypicture); // 创建一个文件对象用来映射当前上传文件在服务器中的地址+文件名

            myfile.transferTo(file);
            pcly.setLypicture(lypicture);
        }

        fps.update(pcly);
        model.addAttribute(pcly);
        return "redirect:findpc.action";
    }

    /**
     * 
     * Description:删除信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/deletepc")
    public String delete(Long lyid) throws IOException {
        fps.delete(lyid);
        return "redirect:findpc.action";
    }

    /**
     * 
     * Description: 通过id获取当前一条信息<br/>
     *
     * @author chenWP
     * @param person
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/getPcly")
    public String getPcly(Pcly pcly, Model model) throws Exception {

        Pcly a = fps.getPcly(pcly.getLyid());

        model.addAttribute("pcly", a);
        return "lytoupdate.jsp";

    }

    /**
     * 
     * Description:通过姓名进行模糊查询 <br/>
     *
     * @author chenWP
     * @param model
     * @param pcly
     * @return
     * @throws IOException
     */
    @RequestMapping("/getPcName")
    public String getPcName(Model model, Pcly pcly) throws IOException {
        List<Pcly> pclys = fps.getPcName(pcly);
        model.addAttribute("list", pclys);
        return "lylist.jsp";

    }
}
