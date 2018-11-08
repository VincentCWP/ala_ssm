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

import com.java.pojo.Pcly;

/**
 * Description:亲子旅游 <br/>
 * Date: 2017年10月19日 下午9:59:29 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public interface FrontPcMapper {

    void add(Pcly pcly); // 添加信息

    List<Pcly> find(); // 列表信息

    int delete(Long lyid);// 根据id号进行删除

    int update(Pcly pcly);// 修改信息

    Pcly getPcly(Long lyid); // 获取id号的指定信息

    List<Pcly> getPcName(Pcly pcly); // 通过名称进行模糊查询
}
