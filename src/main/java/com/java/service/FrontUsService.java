/**
 * Project Name:ala_ssm
 * File Name:frontAcService.java
 * Package Name:com.java.service
 * Date:2017年10月19日上午9:59:52
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.FrontUsMapper;
import com.java.pojo.User;
import com.java.utils.MD5Tools;

/**
 * Description: 管理员信息<br/>
 * Date: 2017年10月19日 上午9:59:52 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Service
public class FrontUsService {

    @Autowired
    private FrontUsMapper frontUsMapper;

    /**
     * 
     * Description:管理员添加信息 <br/>
     *
     * @author chenWP
     * @param user
     * @throws IOException
     */

    public void add(User user) throws IOException {
        frontUsMapper.addus(user);
    }

    /**
     * 
     * Description:显示所有信息列表 <br/>
     *
     * @author chenWP
     * @return
     * @throws IOException
     */
    public List<User> find() throws IOException {
        return frontUsMapper.findus();
    }

    /**
     * 
     * Description:显示所有会员信息列表 <br/>
     *
     * @author chenWP
     * @return
     * @throws IOException
     */
    public List<User> findall() throws IOException {
        return frontUsMapper.findall();
    }

    /**
     * 
     * Description:根据id获取当前管理员信息 <br/>
     *
     * @author chenWP
     * @param userID
     * @return
     * @throws IOException
     */

    public User getUserA(Long userID) throws IOException {
        return frontUsMapper.getUserA(userID);

    }

    /**
     * 
     * Description:根据id获取当前会员信息 <br/>
     *
     * @author chenWP
     * @param userID
     * @return
     * @throws IOException
     */

    public User getUserB(Long userID) throws IOException {
        return frontUsMapper.getUserB(userID);

    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @param user
     * @throws IOException
     */

    public void update(User user) throws IOException {
        frontUsMapper.updateall(user);
    }

    /**
     * 
     * Description:修改会员信息 <br/>
     *
     * @author chenWP
     * @param user
     * @throws IOException
     */

    public void updateall(User user) throws IOException {
        frontUsMapper.updateall(user);
    }

    /**
     * 
     * Description: 删除信息<br/>
     *
     * @author chenWP
     * @param userID
     * @throws IOException
     */

    public void delete(Long userID) throws IOException {
        frontUsMapper.deleteall(userID);
    }

    /**
     * 
     * Description:管理员通过姓名修改密码 <br/>
     *
     * @author chenWP
     * @throws Exception
     */
    public void updatepp(User user) throws Exception {
        user.setPassword(MD5Tools.MD5Code(user.getPassword()));
        frontUsMapper.updatepp(user);
    }
}
