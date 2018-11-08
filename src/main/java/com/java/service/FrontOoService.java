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

import com.java.mapper.FrontOoMapper;
import com.java.pojo.Order;

/**
 * Description: <br/>
 * Date: 2017年10月19日 上午9:59:52 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Service
public class FrontOoService {

    @Autowired
    private FrontOoMapper frontOoMapper;

    /**
     * 
     * Description:显示所有信息列表 <br/>
     *
     * @author chenWP
     * @return
     * @throws IOException
     */
    public List<Order> find() throws IOException {
        return frontOoMapper.findoo();
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
    public Order getOrder(Long id) throws IOException {
        return frontOoMapper.getOrder(id);

    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @param activity
     * @throws IOException
     */
    public void update(Order order) throws IOException {
        frontOoMapper.updateoo(order);
    }

    /**
     * 
     * Description: 删除信息<br/>
     *
     * @author chenWP
     * @param hdid
     * @throws IOException
     */
    public void delete(Long id) throws IOException {
        frontOoMapper.deleteoo(id);
    }

}
