package com.java.service;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.ActivityMapper;
import com.java.pojo.Activity;
@Service
public class ActivityService {
	@Autowired
	private ActivityMapper activityMapper;
	
	public List<Activity> selecThdtype(){
		return activityMapper.selecThdtype();
		
	}
	public List<Activity> selectHdaddress(){
		return activityMapper.selectHdaddress();
		
	}
	public List<Activity> selectActivity(Activity activity){
		return activityMapper.selectActivity(activity);
		
	}
	public ActivityService() {
		super();
	}
	public ActivityService(ActivityMapper activityMapper) {
		super();
		this.activityMapper = activityMapper;
	}
	public ActivityMapper getActivityMapper() {
		return activityMapper;
	}
	public void setActivityMapper(ActivityMapper activityMapper) {
		this.activityMapper = activityMapper;
	}
	
}
