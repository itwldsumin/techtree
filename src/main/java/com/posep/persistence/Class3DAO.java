package com.posep.persistence;

import java.util.List;

import com.posep.domain.Class1VO;
import com.posep.domain.Class3VO;
import com.posep.domain.SearchCriteria;

public interface Class3DAO {

	// 23. 소분류 등록
	public void adcreate(Class3VO class3Vo) throws Exception;

	// 24. 소분류 수정
	public void adupdate(Class3VO class3Vo) throws Exception;

	// 25. 소분류 삭제
	public void  addelete(String class3No) throws Exception;
	
	// 17. 소분류 상세
	public Class3VO adread(String class3No) throws Exception;

	public List<Class3VO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	
	//전체리스트-class3 select 박스 리스트
	  public List<Class3VO> listClass3() throws Exception;
	  

	  public List<Class3VO> list3(String class2No) throws Exception;
	  
		// 중복확인
		public int checkClass3No(String class3No);
		
		public List<Class3VO> listAll() throws Exception;

	
}
