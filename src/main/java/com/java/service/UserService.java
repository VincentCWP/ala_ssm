package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.UserMapper;
import com.java.pojo.User;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User findUserByNameAndPassword(User user) throws Exception {
        return userMapper.findUserByNameAndPassword(user);
    }

    // 添加用户
    public void addUser(User user) throws Exception {
        userMapper.addUser(user);

    }

    public void updateByUsername(User user) throws Exception {
        userMapper.updateByUsername(user);

    }

    public List<User> selectAll(User user) throws Exception {
        return userMapper.selectAll(user);

    }

    // 判断用户是否存在
    public User isUserExists(User user) throws Exception {
        return userMapper.isUserExists(user);
    }

    // 判断手机号是否存在
    public User isPhoneExists(User user) throws Exception {
        return userMapper.isPhoneExists(user);
    }

    // 判断qq号是否存在
    public User isQQExists(User user) throws Exception {
        return userMapper.isQQExists(user);
    }

    // 判断email号是否存在
    public User isEmailExists(User user) throws Exception {
        return userMapper.isEmailExists(user);

    }

    // 根据用户名删除密码手机号和邮箱
    public User delByUser(User user) {
        //return userMapper.delByUser(user);
        return new User();

    }

}
