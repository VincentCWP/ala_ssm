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

import com.java.pojo.Order;

/**
 * Description:订单表的增删改查 <br/>
 * Date: 2017年10月19日 下午9:59:29 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public interface FrontOoMapper {

    List<Order> findoo(); // 列表信息

    int deleteoo(Long id);// 根据id号进行删除

    int updateoo(Order order);// 修改信息

    Order getOrder(Long id); // 获取id号的指定信息

}
