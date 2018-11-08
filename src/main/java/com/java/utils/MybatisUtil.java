/**
 * Project Name:SSM_chenwp
 * File Name:MybatisUtil.java
 * Package Name:cn.java.utils
 * Date:2017年10月11日下午1:53:09
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * Description: <br/>
 * Date: 2017年10月11日 下午1:53:09 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public class MybatisUtil {

    public static SqlSession getSqlSession() throws IOException {
        InputStream is = Resources.getResourceAsStream("mybatis.xml");

        SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(is);

        return ssf.openSession();
    }
}
