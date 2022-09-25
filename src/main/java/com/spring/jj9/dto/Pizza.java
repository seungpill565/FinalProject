package com.spring.jj9.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// Mybatis�� �̿��� CRUD�� �����غ�����

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Pizza {
	private Integer id;
	private String name;
	private Integer price;
	private Double calories;
}
