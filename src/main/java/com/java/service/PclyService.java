package com.java.service;

import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.ActivityMapper;
import com.java.pojo.Activity;
import com.java.pojo.Pcly;
@Service
public class PclyService {
	@Autowired
	private com.java.mapper.PclyMapper PclyMapper;
	
	public List<Pcly> selecThdtype(){
		return PclyMapper.selectLytype();
		
	}
	public List<Pcly> selecLy(){
		return PclyMapper.selectLy();
		
	}

	public PclyService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PclyService(com.java.mapper.PclyMapper pclyMapper) {
		super();
		PclyMapper = pclyMapper;
	}

	public com.java.mapper.PclyMapper getPclyMapper() {
		return PclyMapper;
	}

	public void setPclyMapper(com.java.mapper.PclyMapper pclyMapper) {
		PclyMapper = pclyMapper;
	}
	
}