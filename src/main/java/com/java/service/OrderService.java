package com.java.service;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.OrderMapper;
import com.java.pojo.Order;
@Service
public class OrderService {
	@Autowired
	private OrderMapper OrderMapper;
	
	public void insertOrder(Order order){
		OrderMapper.insertOrder(order);
		
	}

	public OrderService() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderService(com.java.mapper.OrderMapper orderMapper) {
		super();
		OrderMapper = orderMapper;
	}

	public OrderMapper getOrderMapper() {
		return OrderMapper;
	}

	public void setOrderMapper(OrderMapper orderMapper) {
		OrderMapper = orderMapper;
	}
	
	
}
