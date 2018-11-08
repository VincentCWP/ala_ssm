/**
 * Project Name:WebDemo2
 * File Name:MD5Tools.java
 * Package Name:com.chuangshi.utitls
 * Date:2017年7月16日下午12:13:33
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 */

package com.java.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

/**
 * Description: MD5加密<br/>
 * date: 2017年10月21日 上午9:41:11 <br/>
 *
 * @author zhouL
 */
public class MD5Tools {
    private static String[] digitals = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    public static String MD5Co(String password) throws Exception {
        MessageDigest disDigest = MessageDigest.getInstance("MD5");
        byte[] byt = disDigest.digest(password.getBytes(StandardCharsets.UTF_8));
        StringBuilder str = new StringBuilder();
        for (byte a : byt) {
            int num = a;
            if (num < 0) {
                num = num + 256;
            }
            int j = num / 16;
            int k = num % 16;
            str.insert(0, digitals[j] + digitals[k]);
        }
        return str.toString();
    }

    public static String MD5Code(String password) throws Exception {
        return MD5Co(MD5Co(MD5Co(password) + password) + password);
    }
}
