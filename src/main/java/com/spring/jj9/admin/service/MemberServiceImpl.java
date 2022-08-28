package com.spring.jj9.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.jj9.admin.mapper.MemberMapper;
import com.spring.jj9.dto.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper mapper;
	
	@Override
	public Member getMember(String member_id) {
		return mapper.getMember(member_id);
	}

}
