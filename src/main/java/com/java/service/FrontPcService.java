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

import com.java.mapper.FrontPcMapper;
import com.java.pojo.Pcly;

/**
 * Description: <br/>
 * Date: 2017年10月19日 上午9:59:52 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
@Service
public class FrontPcService {

    @Autowired
    private FrontPcMapper frontPcMapper;

    /**
     * 
     * Description:亲子旅游添加信息 <br/>
     *
     * @author chenWP
     * @param activity
     * @throws IOException
     */
    public void add(Pcly pcly) throws IOException {
        frontPcMapper.add(pcly);
    }

    /**
     * 
     * Description:显示所有信息列表 <br/>
     *
     * @author chenWP
     * @return
     * @throws IOException
     */
    public List<Pcly> find() throws IOException {
        return frontPcMapper.find();
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
    public Pcly getPcly(Long lyid) throws IOException {
        return frontPcMapper.getPcly(lyid);

    }

    /**
     * 
     * Description:修改信息 <br/>
     *
     * @author chenWP
     * @param activity
     * @throws IOException
     */
    public void update(Pcly pcly) throws IOException {
        frontPcMapper.update(pcly);
    }

    /**
     * 
     * Description: 删除信息<br/>
     *
     * @author chenWP
     * @param hdid
     * @throws IOException
     */
    public void delete(Long lyid) throws IOException {
        frontPcMapper.delete(lyid);
    }

    /**
     * 
     * Description:通过名称进行模糊查询 <br/>
     *
     * @author chenWP
     * @param pcly
     * @return
     */
    public List<Pcly> getPcName(Pcly pcly) throws IOException {
        return frontPcMapper.getPcName(pcly);

    }
}
