package com.java.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SessionController {
    // 点击退出，立即让session中的信息失效，返回登录界面
    @RequestMapping("/sessionInvalidate")
    public String sessionInvalidate(HttpServletRequest request) {
        // 让session中的信息失效
        request.getSession().invalidate();
        return "login.jsp";
    }
}
