package com.posep.service;

import java.util.List;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.Class3VO;
import com.posep.domain.SearchCriteria;

public interface Class3Service {

	public void adregist(Class3VO Class3VO) throws Exception;

	// 16. 소분류 수정
	public void admodify(Class3VO Class3VO) throws Exception;

	// 17. 소분류 삭제
	public void adremove(String class3No) throws Exception;
	
	// 17. 소분류 상세보기
	public Class3VO adread(String class3No) throws Exception;
	
	public List<Class3VO> listSearch(SearchCriteria cri) throws Exception;
	//
	public int listSearchCount(SearchCriteria cri) throws Exception;

	public List<Class1VO> listClass1() throws Exception;
	
	public List<Class2VO> listClass2() throws Exception;
	
	
	public List<Class3VO> list3(String class2No) throws Exception ;

	 //중복체크 
	 public int checkClass3No(String class3No) throws Exception;
	 public List<Class3VO> listAll() throws Exception;

}
