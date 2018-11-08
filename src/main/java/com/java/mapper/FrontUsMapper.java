/**
 * Project Name:ala_ssm
 * File Name:FrontPcMapper.java
 * Package Name:com.java.mapper
 * Date:2017年10月19日下午9:59:29
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.mapper;

import java.util.List;

import com.java.pojo.User;

/**
 * Description:管理员信息增删改查 <br/>
 * Date: 2017年10月19日 下午9:59:29 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public interface FrontUsMapper {

    void addus(User user); // 添加信息

    List<User> findus(); // 管理员列表信息

    List<User> findall(); // 会员列表信息

    int deleteall(Long userID);// 根据id号进行删除会员

    int updateall(User user);// 修改会员信息

    User getUserB(Long userID); // 获取id号的指定会员信息

    User getUserA(Long userID); // 获取id号的指定管理员信息

    int updatepp(User user); // 通过获取的name 修改密码
}
