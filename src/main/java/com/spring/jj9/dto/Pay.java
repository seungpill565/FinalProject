package com.spring.jj9.dto;


import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Pay {
	
	
	private Integer pay_id;
	private Integer talent_id;
	private String member_id;
	private String pay_way;
	private Integer pay_money;
	private Integer pay_original_money;
	

	
}
