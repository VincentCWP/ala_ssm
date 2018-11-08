package com.java.mapper;

import java.util.List;

import com.java.pojo.User;

public interface UserMapper {
    // 验证登录
    public User findUserByNameAndPassword(User user) throws Exception;

    // 注册(添加用户)
    public void addUser(User user) throws Exception;

    // 根据用户名修改密码
    public void updateByUsername(User user) throws Exception;

    // 查询所有用户
    public List<User> selectAll(User user) throws Exception;

    // 判断用户名是否存在
    public User isUserExists(User user) throws Exception;

    // 判断手机号是否存在
    public User isPhoneExists(User user) throws Exception;

    // 判断qq是否存在
    public User isQQExists(User user) throws Exception;

    // 判断email是否存在
    public User isEmailExists(User user) throws Exception;

    // 根据用户名删除密码手机号和邮箱
    public User delByUser(User user) throws Exception;
}
