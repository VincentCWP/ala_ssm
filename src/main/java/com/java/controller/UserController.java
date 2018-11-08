package com.java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.java.pojo.User;
import com.java.service.UserService;
import com.java.utils.MD5Tools;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    MD5Tools md5 = new MD5Tools();

    // //跳转到登录页面
    // @RequestMapping("/toLogin")
    // public String toLogin(User user){
    // return "login";
    // }

    // 验证登录
    @RequestMapping("/login")
    public ModelAndView login(User user, HttpSession session) throws Exception {
        // System.out.println("hhhah");
        ModelAndView modelAndView = new ModelAndView();
        // 对获取到表单的password进行二次加密

        // User user1 = new User();
        user.setUsername(user.getUsername());
        user.setPassword(MD5Tools.MD5Code(MD5Tools.MD5Code(user.getPassword())));
        // System.out.println(MD5Tools.MD5Co(user1.getPassword()));
        user = userService.findUserByNameAndPassword(user);

        if (user != null) {
            // 登录成功，将 user 对象存入 session 并跳转到 page/success.jsp 页面
            session.setAttribute("user", user);

            // 判斷 如果role為1 就是管理員，頁面調到frontindex.jsp，如果role為0 就調到index.jsp
            if (user.getRole() == 1) {

                // 转发到main请求
                modelAndView.setViewName("frontindex.jsp");
            } else {
                modelAndView.setViewName("index.jsp");
            }
            // 登录成功，将 user 对象存入 session 并跳转到 page/success.jsp 页面

            // 判斷 如果role為1 就是管理員，頁面調到frontindex.jsp，如果role為0 就調到index.jsp

        } else {
            // 登录失败，设置失败信息，并调转到登录页面
            modelAndView.setViewName("login.jsp");
        }
        return modelAndView;
    }

    /**
     * 
     * Description:添加用户(注册) <br/>
     *
     * @author zhouL
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping("/addUser")
    public String addUser(User user) throws Exception {

        String password = md5.MD5Code(md5.MD5Code(user.getPassword()));
        User user2 = new User(user.getUserID(), user.getUsername(), password, user.getEmail(), user.getPhone(),
                user.getAddress(), user.getQq(), user.getBabyname(), user.getRole());

        userService.addUser(user2);
        return "login.jsp";
    }

    // 修改资料信息
    @RequestMapping("/updatePassword")
    public String updatePassword(HttpServletRequest request, HttpSession session) throws Exception {
        String username = request.getParameter("username");
        String password = md5.MD5Code(md5.MD5Code(request.getParameter("password")));
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        System.out.println(username);
        User user1 = new User();
        user1.setUsername(username);
        user1.setPassword(password);
        user1.setPhone(phone);
        user1.setEmail(email);
        userService.updateByUsername(user1);

        User user = userService.isUserExists(user1);
        session.setAttribute("user", user);

        return "orderInformation.jsp";

    }

    // 验证用户名是否存在
    @RequestMapping("/isUserExists")
    public @ResponseBody User isUserExists(@RequestBody String username, HttpServletRequest request) throws Exception {
        String username1 = request.getParameter("username");
        // System.out.println(username);
        User user = new User();
        user.setUsername(username1);
        User u = userService.isUserExists(user);
        return u;

    }

    // 验证手机号是否存在
    @RequestMapping("/isPhoneExists")
    public @ResponseBody User isPhoneExists(@RequestBody String phone, HttpServletRequest request) throws Exception {
        String phone1 = request.getParameter("phone");
        System.out.println("phone");
        User user = new User();
        user.setPhone(phone1);
        User u = userService.isPhoneExists(user);
        // System.out.println(u);

        return u;

    }

    // 验证qq是否存在
    @RequestMapping("/isQQExists")
    public @ResponseBody User isQQExists(@RequestBody String qq, HttpServletRequest request) throws Exception {
        String qq1 = request.getParameter("qq");
        // System.out.println(phone);
        User user = new User();
        user.setQq(qq1);
        User u = userService.isQQExists(user);
        return u;

    }

    // 验证邮箱是否存在
    @RequestMapping("/isEmailExists")
    public @ResponseBody User isEmailExists(@RequestBody String email, HttpServletRequest request) throws Exception {
        String email1 = request.getParameter("email");
        // System.out.println(phone);
        User user = new User();
        user.setEmail(email1);
        User u = userService.isEmailExists(user);
        return u;

    }
}
