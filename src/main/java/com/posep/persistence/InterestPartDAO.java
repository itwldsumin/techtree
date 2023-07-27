package com.posep.persistence;

import java.util.List;

import com.posep.domain.CanPartVO;
import com.posep.domain.Class3VO;
import com.posep.domain.InterestPartVO;

public interface InterestPartDAO {

	// 1. 팝업창 -> 소분류명 검색 결과 페이지
	public List<Class3VO> searchClass3(String calss3Name) throws Exception;

	// 2. 소분류 목록 팝업창
	public List<Class3VO> class3List(String memId) throws Exception;

	// 3-1. 선택한 소분류 목록 (컨설팅)
	public List<InterestPartVO> everyClass3List(String memId) throws Exception;
	
	// 3-2. 선택한 소분류 목록 (협업)
	public List<InterestPartVO> everyClass3List2(String memId) throws Exception;

	// 4. 소분류 등록
	public int create(InterestPartVO InterestPartVO) throws Exception;

	// 5. 선택한 소분류 삭제
	public void delete(int interestPartNo) throws Exception;
	
}
