package com.spring.jj9.category.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.jj9.category.mapper.CategoryMapper;
import com.spring.jj9.dto.Category;
import com.spring.jj9.dto.TalentAll;
import com.spring.jj9.util.Criteria;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	CategoryMapper mapper;
	
	private Integer checkCate=0; // id가 메인일때 0 / id가 서브일때 1
			

	@Override
	public List<Category> readMainCategory(int id) {
		String cate_main = mapper.readMainCategoryById(id).get(0).getCate_main(); // 접속한 id로 뽑아낸 메인카테고리 / 서브카테고리 표시하려고 쓰는 변수
		
		
		if(id<10) { // 메인 클릭시 id가 10 이하이므로 
			checkCate=0;
		}else{		// 서브 클릭시 id가 10 이상
			checkCate=1;
		}
		
		
//		System.out.println("카테 메인 "+cate_main+" 타입 : "+cate_main.getClass().getName());
		return mapper.readCategoryByCate_main(cate_main);
		
	}


	@Override
	public List<TalentAll> readTalentAllByMainOrSub(int id) {
		
		String cate_main = mapper.readMainCategoryById(id).get(0).getCate_main(); // 접속한 id의 메인카테고리
		
		if(checkCate==0) {
			return mapper.readTalentAllByCate_main(cate_main); // 접속한 id의 메인 카테고리에 적은 모든 재능 관련 정보
		}else {
			return mapper.readTalentAllByCate_id(id); // 서브 카테고리의 재능 리턴
		}
	}


	@Override
	public List<Category> readAllMainCategory() {

		return mapper.readAllMainCategorys();
	}


	@Override
	public List<TalentAll> readTalentAllForPaging(Criteria cri) { // 페이징 

		return mapper.readTalentAllForPaging(cri);
	}


	@Override
	public Integer readTotalTalent() {

		return mapper.readTotalTalent();
	}


	@Override
	public Integer readTalentAllByMainOrSubCount(int id) { // 메인카테고리 눌렀을때 나오는 재능들의 총 개수

		String cate_main = mapper.readMainCategoryById(id).get(0).getCate_main();
		
		if(checkCate==0) {
			return mapper.readTalentAllByCate_mainCount(cate_main); // 메인 카테고리 클릭 시 메인카테고리의 재능 총 개수 리턴
		}else { 
			return mapper.readTalentAllByCate_idCount(id); // 서브 카테고리 클릭 시 서브카테고리의 재능 총 개수 리턴
		}
	}

}
