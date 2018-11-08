/**
 * Project Name:ala_ssm
 * File Name:frontAcService.java
 * Package Name:com.java.service
 * Date:2017年10月19日上午9:59:52
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 */

package com.java.service;

import com.java.mapper.FrontOoMapper;
import com.java.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
     */
    public List<Order> find() {
        return frontOoMapper.findoo();
    }

    /**
     *
     * Description:根据id获取当前信息 <br/>
     *
     * @author chenWP
     * @param id
     * @return
     */
    public Order getOrder(Long id) {
        return frontOoMapper.getOrder(id);

    }

    /**
     *
     * Description:修改信息 <br/>
     *
     * @author chenWP
     */
    public void update(Order order) {
        frontOoMapper.updateoo(order);
    }

    /**
     *
     * Description: 删除信息<br/>
     *
     * @author chenWP
     */
    public void delete(Long id) {
        frontOoMapper.deleteoo(id);
    }

}
