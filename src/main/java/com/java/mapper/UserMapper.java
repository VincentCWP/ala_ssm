package com.java.mapper;

import java.util.List;

import com.java.pojo.User;

public interface UserMapper {
    // 验证登录
    User findUserByNameAndPassword(User user) throws Exception;

    // 注册(添加用户)
    void addUser(User user) throws Exception;

    // 根据用户名修改密码
    void updateByUsername(User user) throws Exception;

    // 查询所有用户
    List<User> selectAll(User user) throws Exception;

    // 判断用户名是否存在
    User isUserExists(User user) throws Exception;

    // 判断手机号是否存在
    User isPhoneExists(User user) throws Exception;

    // 判断qq是否存在
    User isQQExists(User user) throws Exception;

    // 判断email是否存在
    User isEmailExists(User user) throws Exception;

    // 根据用户名删除密码手机号和邮箱
    //User delByUser(User user) throws Exception;
}
