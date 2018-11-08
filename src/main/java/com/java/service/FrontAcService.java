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

import com.java.mapper.FrontAcMapper;
import com.java.pojo.Activity;

/**
 * Description: <br/>
 * Date: 2017年10月19日 上午9:59:52 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Service
public class FrontAcService {

    @Autowired
    private FrontAcMapper frontAcMapper;

    /**
     * 
     * Description:亲子活动添加信息 <br/>
     *
     * @author chenWP
     * @param activity
     * @throws IOException
     */
    public void addActivity(Activity activity) throws IOException {
        frontAcMapper.addActivity(activity);
    }

    /**
     * 
     * Description:显示所有信息列表 <br/>
     *
     * @author chenWP
     * @return
     * @throws IOException
     */
    public List<Activity> find() throws IOException {
        return frontAcMapper.find();
    }

    /**
     * 
     * Description:根据id获取当前信息 <br/>
     *
     * @author chenWP
     * @param id
     * @return
     * @throws IOException
     */
    public Activity getActivity(Long hdid) throws IOException {
        return frontAcMapper.getActivity(hdid);

    }

    /**
     * 
     * Description:根据name获取当前信息 <br/>
     *
     * @author chenWP
     * @param name
     * @return
     * @throws IOException
     */
    public List<Activity> getName(Activity activity) throws IOException {
        return frontAcMapper.getName(activity);

    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @param activity
     * @throws IOException
     */
    public void update(Activity activity) throws IOException {
        frontAcMapper.update(activity);
    }

    /**
     * 
     * Description: 删除信息<br/>
     *
     * @author chenWP
     * @param hdid
     * @throws IOException
     */
    public void delete(Long hdid) throws IOException {
        frontAcMapper.delete(hdid);
    }

}
