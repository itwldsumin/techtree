package com.posep.service;

import java.util.List;


import com.posep.domain.Class3VO;
import com.posep.domain.FilesVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;

public interface TechnologistService {

	public void adregist(TechnologistVO TechnologistVO) throws Exception;

	public void admodify(TechnologistVO TechnologistVO) throws Exception;
	
	public void pwModify(TechnologistVO TechnologistVO) throws Exception;

	public void adremove(String techId) throws Exception;

	public TechnologistVO adread(String techId) throws Exception;

	public List<TechnologistVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public TechnologistVO read(String techId) throws Exception;

	public List<TechnologistVO> listAll() throws Exception;

	public List<TechnologistVO> listT(String class3No) throws Exception;

	// 기술인 :: 대시보드 - 최근 컨설팅 리스트
	public List<QnaVO> tMainConsultList(String techId) throws Exception;

	// 기술인 :: 대시보드 - 최근 협업 리스트
	public List<QnaVO> tMainCooperatList(String techId) throws Exception;

	public List<FilesVO> fileList(String techId) throws Exception;

	// 전공 팝업
	// 1. 팝업창 -> 소분류명 검색 결과 페이지
	public List<Class3VO> searchClass3(String calss3Name) throws Exception;

	// 2. 소분류 목록 팝업창
	public List<Class3VO> class3List() throws Exception;

}
