package com.spring.jj9.write.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.jj9.dto.Pizza;
import com.spring.jj9.write.mapper.PizzaMapper;

@Service
public class PizzaServiceImpl implements PizzaService{
	
	/*
	 	# Mapper Interface
	 	
	 	 - ��ݸ� �ۼ��س����� Mybatis�� �ڵ����� �ش� �������̽��� ����ü�� �����Ѵ�
	 	 - �˾Ƽ� JDBC �ڵ带 �ڵ����� ������ �� 
	 	   mybatis-spring:scan�� ���� spring-context�� ��ϵȴ�
	*/
	
	@Autowired
	PizzaMapper mapper;
	
	@Override
	public Pizza getPizza(int pk) {
		mapper.updateView(pk);
		return mapper.getPizza(pk);
	}
	
	@Override
	public List<Pizza> getList() {	
		return mapper.getList();
	}
	
	@Override
	public Integer updatePizza(Pizza pizza) {
		
		return mapper.updatePizza(pizza); 
	}
	
	@Override
	public Integer createPizza(Pizza pizza) {
		
		return mapper.createPizza(pizza);
	}
	
}
