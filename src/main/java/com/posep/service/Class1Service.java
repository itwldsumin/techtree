package com.posep.service;

import java.util.List;

import com.posep.domain.Class1VO;

import com.posep.domain.SearchCriteria;

public interface Class1Service {

	public void adregist(Class1VO Class1VO) throws Exception;

	// 16. 대분류 수정
	public void admodify(Class1VO Class1VO) throws Exception;

	// 17. 대분류 삭제
	public void adremove(String class1No) throws Exception;

	// 17. 대분류 상세보기
	public Class1VO adread(String class1No) throws Exception;

	/*
	 * 
	 * 
	 * // 14. 대분류 리스트 public List<Class1VO> list(SearchCriteria cri) throws
	 * Exception;
	 * 
	 * public List<Class1VO> listPage(int page) throws Exception; // public
	 * List<Class1VO> listCriteria(Criteria cri) throws Exception;
	 * 
	 * public int countPaging(Criteria cri) throws Exception;
	 */

	// use for dynamic sql
	//
	public List<Class1VO> listSearch(SearchCriteria cri) throws Exception;

	//
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	//팝업
	 public List<Class1VO> list1(String class1No) throws Exception;
	 
	 //중복체크 AJAX.
	   public int checkClass1No(String class1No) throws Exception;




}
