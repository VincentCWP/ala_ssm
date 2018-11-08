/**
 * Project Name:ssmdemo
 * File Name:AdminMapper.java
 * Package Name:com.java.mapper
 * Date:2017��9��23������3:24:29
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
*/

package com.java.mapper;

import java.util.List;

import com.java.pojo.Activity;



/**
 * Description:	   <br/>
 * Date:     2017��9��23�� ����3:24:29 <br/>
 * @author   WenH
 * @version  
 * @see 	 
 */

public interface ActivityMapper {
	List<Activity> selecThdtype();
	List<Activity> selectActivity(Activity activity);
	List<Activity> selectHdaddress();
 
}

