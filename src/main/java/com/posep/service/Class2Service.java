
package com.posep.service;

import java.util.List;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.SearchCriteria;

public interface Class2Service {
	
	public void adregist(Class2VO Class2VO) throws Exception;

	// 16. 대분류 수정
	public void admodify(Class2VO Class2VO) throws Exception;

	// 17. 대분류 삭제
	public void adremove(String class2No) throws Exception;
	
	// 17. 대분류 상세보기
	public Class2VO adread(String class2No) throws Exception;
	
	public List<Class2VO> listSearch(SearchCriteria cri) throws Exception;
	//
	public int listSearchCount(SearchCriteria cri) throws Exception;

	public List<Class1VO> listClass1() throws Exception;

	public List<Class2VO> listClass2() throws Exception;
	
	//팝업
	public List<Class2VO> list2(String class1No) throws Exception;
	
	 //중복체크 
	 public int checkClass2No(String class2No) throws Exception;

	
}
