package com.posep.persistence;

import java.util.List;

import com.posep.domain.Class2VO;

import com.posep.domain.SearchCriteria;

public interface Class2DAO {

	// 15. 중분류 등록
	public void adcreate(Class2VO Class2VO) throws Exception;

	// 16. 중분류 수정
	public void adupdate(Class2VO Class2VO) throws Exception;

	// 17. 중분류 삭제
	public void addelete(String class2No) throws Exception;

	// 18. 중분류 상세
	public Class2VO adread(String class2No) throws Exception;

	public List<Class2VO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 전체리스트-class3 select 박스 리스트
	public List<Class2VO> listClass2() throws Exception;

	public List<Class2VO> list2(String class1No) throws Exception;
	
	
	// 중복확인
	public int checkClass2No(String class2No);

}
