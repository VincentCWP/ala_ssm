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

import com.java.pojo.Activity;
import com.java.service.FrontAcService;

/**
 * Description: <br/>
 * Date: 2017年10月19日 下午12:39:43 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Controller
public class FrontAcController {

    @Autowired
    private FrontAcService fas;

    /**
     * 
     * Description:所有信息列表 <br/>
     *
     * @author chenWP
     * @param model
     * @return
     * @throws IOException
     */
    @RequestMapping("/find")
    public String find(Model model) throws IOException {
        model.addAttribute("list", fas.find());
        return "list.jsp";
    }
		
    /**
     * 
     * Description:添加信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/addActivity")
    public String addActivity(Activity activity, HttpServletRequest request, Model model, MultipartFile myfile)
            throws IOException {

        // 上传的图片不会使用原始的名字，需要重新命名一个唯一的名字
        // 防止多个用户上传名字相同内容不同的图片，导致覆盖，只保存了一张的情况
        // 名字： 时间戳，内容dm5 后的字符串，UUID
        // String filename = myfile.getOriginalFilename();
        // String filename = String.valueOf(new Date().getTime());
        // String path = request.getServletContext().getRealPath("/") +
        // "upload/" + filename;
        // upload/resources/images/
        // File file = new File(path);

        String hdpicture = myfile.getOriginalFilename();// 纯文件名，如：xx.jpg
                                                        // //upload文件路径

        String path = request.getSession().getServletContext().getRealPath("resources/images"); // file后面加上文件名的路径就是文件的位置
        File file = new File(path + "/" + hdpicture); // 创建一个文件对象用来映射当前上传文件在服务器中的地址+文件名

        myfile.transferTo(file); // 实现文件上传
        activity.setHdpicture(hdpicture);

        fas.addActivity(activity);

        return "redirect:find.action";
    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/update")
    public String update(Activity activity, Model model, HttpServletRequest request, MultipartFile myfile)
            throws IOException {

        String hdpicture = myfile.getOriginalFilename();// 纯文件名，如：xx.jpg
        // //upload文件路径
        if (hdpicture != "") {
            String path = request.getSession().getServletContext().getRealPath("resources/images"); // file后面加上文件名的路径就是文件的位置
            File file = new File(path + "/" + hdpicture); // 创建一个文件对象用来映射当前上传文件在服务器中的地址+文件名

            myfile.transferTo(file); // 实现文件上传
            activity.setHdpicture(hdpicture);
        }
        fas.update(activity);
        model.addAttribute(activity);
        return "redirect:find.action";
    }

    /**
     * 
     * Description:删除信息 <br/>
     *
     * @author chenWP
     * @throws IOException
     */
    @RequestMapping("/delete")
    public String delete(Long hdid) throws IOException {
        fas.delete(hdid);
        return "redirect:find.action";
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
    @RequestMapping("/getActivity")
    public String getPerson(Activity activity, Model model) throws Exception {

        Activity a = fas.getActivity(activity.getHdid());

        model.addAttribute("activity", a);
        return "toupdate.jsp";

    }

    /**
     * 
     * Description: 通过name模糊/查询获取当前一条信息<br/>
     *
     * @author chenWP
     * @param person
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/getName")
    public String getName(Activity activity, Model model) throws Exception {
        List<Activity> activities = fas.getName(activity);
        model.addAttribute("list", activities);
        System.out.println(activities);
        return "list.jsp";

    }
}
