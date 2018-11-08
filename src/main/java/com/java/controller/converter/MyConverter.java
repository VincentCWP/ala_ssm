/**
 * Project Name:SpringMVC1
 * File Name:MyConverter.java
 * Package Name:cn.java.controller.converter
 * Date:2017年9月17日下午3:35:49
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package com.java.controller.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * Description: <br/>
 * Date: 2017年9月17日 下午3:35:49 <br/>
 * 
 * @author chenWP
 * @version
 * @see
 */
public class MyConverter implements Converter<String, Date> {
    public Date convert(String source) {
        Date date;
        try {
            date = new SimpleDateFormat("yyyy-MM-dd").parse(source);
            return date;
        } catch (ParseException e) {

            // Auto-generated catch block
            e.printStackTrace();
        }
        return null;

    }
}