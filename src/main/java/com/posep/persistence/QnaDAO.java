package com.posep.persistence;

import java.util.List;

import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;

public interface QnaDAO {

   // 등록
   public void create(QnaVO QnaVO) throws Exception;

   // 상세보기
   public QnaVO read(int qnaNo) throws Exception;

   // 수정
   public void update(QnaVO QnaVO) throws Exception;

   // 삭제
   public void addelete(int qnaNo) throws Exception;

   // 페이징, 검색 리스트
   public List<QnaVO> listSearch(SearchCriteria cri) throws Exception;

   public List<QnaVO> mQList(SearchCriteria cri) throws Exception;

   public List<QnaVO> tQList(SearchCriteria cri) throws Exception;

   public int listSearchCount(SearchCriteria cri) throws Exception;

   public int mQListCount(SearchCriteria cri);

   public int tQListCount(SearchCriteria cri);

   // 11.04 로그인 한 회원이 등록한 문의글 목록 나오게 하기
   /*
    * public List<QnaVO> mQList(String memId) throws Exception;
    * 
    * public List<QnaVO> tQList(String techId) throws Exception;
    */

}