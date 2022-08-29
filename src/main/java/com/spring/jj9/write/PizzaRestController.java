package com.spring.jj9.write;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.jj9.dto.Pizza;
import com.spring.jj9.write.mapper.PizzaMapper;
import com.spring.jj9.write.service.PizzaService;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class PizzaRestController {
	
	@Autowired
	PizzaMapper mapper;
	
	@Autowired
	PizzaService service;
	
	// GET������� ������ ID�� �Բ� ��û�� ������ �ش� ������ ������ JSON �������� ��ȯ
	@GetMapping(value = "/sample/pizza/{id}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public Pizza getPizza(@PathVariable("id") Integer id) {
		
		// ������ ��ȸ��(calories	)�� �ִ�. ��ȸ�� ������ 1�� �����ؾ��Ѵ�.
		return service.getPizza(id);
	}
	
	@GetMapping(value = "/sample/pizzaList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<Pizza> getList() {
		
		List<Pizza> pizzas = service.getList();
		
		return pizzas;
	}
	
	// POST������� �Ķ������ ���� �����Ϳ� �Բ� ��û ������ �ش� ���ڸ� DB�� �߰�
	
	// @RestController������ @RequestBody�� �������� ������ �Ķ���Ͱ� �ڵ� ���ε� ���� �ʴ´�
	@PostMapping(value = "/sample/pizza")
	public ResponseEntity<Pizza> createPizza(@RequestBody Pizza pizza) {
		if (pizza.getName() == null || pizza.getName().trim().equals("") || 
				pizza.getCalories() == null || pizza.getPrice() == null) {
			return ResponseEntity.badRequest().build();
		}
		
		try {
			service.createPizza(pizza);
			
			return ResponseEntity.ok().build();
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.build();
		}
		// ResponseEntity: ��Ȳ�� ���� ���ϴ� ������ ���� �� �ִ�. (���� �ڵ� Ȱ��)
		//ResponseEntity<Pizza> response = null;
		
		// ResponseEntity.ok() : Http �����ڵ� 200�� ������ �����.
		//response = ResponseEntity.ok(null);
		
		// ResponseEntity.notFound() : Http �����ڵ� 404�� ������ �����.
		//response = ResponseEntity.notFound().build();
		
		// �����Ӱ� ���丸���
//		response = ResponseEntity.status(HttpStatus.OK)
//				.contentType(MediaType.APPLICATION_JSON)
//				.body(service.getPizza(3));
//		
//		return response;
	}
	
	// PUT������� �Ķ������ ���� �����͸� �Բ� ��û ������ �ش� ������ ������ ����
	@PutMapping(value = "/sample/pizza", produces = MediaType.TEXT_PLAIN_VALUE)
	public String updatePizza(@RequestBody Pizza pizza) {
		try {
			return service.updatePizza(pizza).toString();			
		} catch (Exception e) {
			return "0 : " + e;
		}
	}
	
	// DELETE ������� ������ ID�� �Բ� ��û�� ������ �ش� ���ڸ� DB���� ����
//	@DeleteMapping(value = "/smaple/pizza/{id}")
//	public String deletePizza(@PathVariable("id") Integer id){
//		
//		mapper.deletePizza(id);
//		
//		return "delete pizza id : " + id;
//	}
}
