/**
 * Project Name:ala_ssm
 * File Name:frontAcMapper.java
 * Package Name:com.java.dao
 * Date:2017年10月19日上午9:32:24
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.mapper;

import java.util.List;

import com.java.pojo.Activity;

/**
 * Description:亲子活动 <br/>
 * Date: 2017年10月19日 上午9:32:24 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public interface FrontAcMapper {

    void addActivity(Activity activity);// 添加信息

    List<Activity> find(); // 列表信息

    int delete(Long hdid);// 根据id号进行删除

    int update(Activity activity);// 修改信息

    Activity getActivity(Long hdid); // 获取id号的指定信息

    List<Activity> getName(Activity activity); // 模糊查询 通过name查出指定信息

}
