
package com.posep.persistence;

import java.util.List;

import com.posep.domain.Class1VO;

import com.posep.domain.SearchCriteria;

public interface Class1DAO {

	/*
	 * //14. 대분류 리스트 public List<Class1VO> adList(SearchCriteria cri) throws
	 * Exception;
	 */
	// 15. 대분류 등록
	public void adcreate(Class1VO Class1VO) throws Exception;

	// 16. 대분류 수정
	public void adupdate(Class1VO Class1VO) throws Exception;

	// 17. 대분류 삭제
	public void addelete(String class1No) throws Exception;

	// 17. 대분류 상세

	public Class1VO adread(String class1No) throws Exception;
	// member
	// 14. 대분류 리스트
	// public List<Class1VO> list(SearchCriteria cri) throws Exception;

	// : 검색, 페이징이 가능한 리스트

	public List<Class1VO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	//
	public List<Class1VO> listClass1() throws Exception;

	// 팝업
	public List<Class1VO> list1(String class1No) throws Exception;

	// 중복확인
	public int checkClass1No(String class1No);

}