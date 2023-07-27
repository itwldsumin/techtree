package com.posep.persistence;

import java.util.List;

import com.posep.domain.Class3VO;
import com.posep.domain.FilesVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.domain.TechnologistVO;
import com.posep.dto.LoginDTO;

public interface TechnologistDAO {

	// 관리자

	// 2. 과학기술인 등록
	public String adcreate(TechnologistVO tVo) throws Exception;

	// 4. 과학기술인 상세보기
	public TechnologistVO adread(String techId) throws Exception;

	// 5. 과학기술인 수정
	public void adupdate(TechnologistVO tVo) throws Exception;
	
	//  과학기술인  비밀번호 수정
    public void pwupdate(TechnologistVO tVo) throws Exception;

	// 6. 과학기술인 삭제
	public void addelete(String techId) throws Exception;

	// 7. 과학기술인 페이징, 검색 리스트
	public List<TechnologistVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 회원

	// 4. 과학기술인 상세보기
	public TechnologistVO read(String techId) throws Exception;

	// 4. 과학기술인 상세보기
	public List<TechnologistVO> listAll() throws Exception;

	public List<TechnologistVO> listT(String class3No) throws Exception;

	// 과학 기술인
	public TechnologistVO login(LoginDTO dto);

	// 내정보 상세, 내 정보 수정, 대시보드 리스트, 댓글 (문의글 목록, 상세페이지--qna에 있음)

	// 4. 회원 :: 대시보드 - 최근 컨설팅 리스트
	public List<QnaVO> tMainConsultList(String techId) throws Exception;

	// 5. 회원 :: 대시보드 - 최근 협업 리스트
	public List<QnaVO> tMainCooperatList(String techId) throws Exception;
    // 7. 관리자 :: 파일 등록
    public void insertFile(FilesVO fVo) throws Exception;
    
    // 8. 관리자 :: 파일 삭제
    public void deleteFile(String techId) throws Exception;
    
    // 9. 관리자 :: 파일 목록
    public List<FilesVO> list(String techId) throws Exception;
    
    
    //전공 팝업
    public List<Class3VO> class3List() throws Exception;
	List<Class3VO> searchClass3(String calss3Name) throws Exception;

}
