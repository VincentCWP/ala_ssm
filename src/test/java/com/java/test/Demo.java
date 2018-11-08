/*
 * Project Name:ala_ssm
 * File Name:Demo.java
 * Package Name:Test
 * Date:2017年10月19日下午2:33:29
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 */

package com.java.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Description: <br/>
 * Date: 2017年10月19日 下午2:33:29 <br/>
 *
 * @author chenWP
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:ApplicationContext-*.xml"})
public class Demo {
    @Test
    public void test01() {
    }
}