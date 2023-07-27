package com.posep.persistence;

import java.util.List;

import com.posep.domain.Criteria;
import com.posep.domain.MemberVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.dto.LoginDTO;

/* 1. 로그인
2. 회원 :: 회원가입
3. 회원 :: 회원가입 - 학번 중복검사 AJAX.
4. 회원 :: 대시보드 - 최근 컨설팅 리스트 
5. 회원 :: 대시보드 - 최근 협업 리스트 
6. 관리자 :: 대시보드 - 일반인 / 기업 / 기술인 수
7. 관리자 :: 회원관리 - 목록
8. 관리자 :: 회원관리 - 회원상세내역
9. 관리자 :: 회원관리 - 회원 삭제
10.  내 정보
11.  내 정보 수정
12. 페이징처리
13. 검색처리*/

public interface MemberDAO {
   // 1. 로그인
   public MemberVO login(LoginDTO dto) throws Exception;

   // 2. 회원 :: 회원가입
   public void insert(MemberVO mVo) throws Exception;
   
   // 3. 회원 :: 회원가입 - 학번 중복검사 AJAX.
   public int checkMemId(String memId) throws Exception;
   
   
   
   // 4. 회원 :: 대시보드 - 최근 컨설팅 리스트
   public List<QnaVO> mainConsultList(String memId) throws Exception;
   
   // 5. 회원 :: 대시보드 - 최근 협업 리스트
   public List<QnaVO> mainCooperatList(String memId) throws Exception;
   
   //6. 관리자 :: 대시보드 - 일반인 / 기업 / 기술인 수
   public int countMem() throws Exception;
   public int countMem2() throws Exception;
   public int countTech() throws Exception;

   // 7. 관리자 :: 회원관리 - 목록
   public List<MemberVO> list(SearchCriteria cri) throws Exception;
   
   // 8. 관리자& 회원 :: 회원관리 - 회원상세내역
   public MemberVO read(String memId) throws Exception;

   // 9. 관리자 :: 회원관리 - 회원 삭제
   public void delete(String memId) throws Exception;
   
   // 10.  내 정보
//   public MemberVO myInfo(int memNo) throws Exception;
   
   // 10.  내 정보 수정
   public void update(MemberVO mVo) throws Exception;
   
   public void pwupdate(MemberVO mVo) throws Exception;
   
   
  /* // 11. 페이징처리
   public List<MemberVO> listCriteria(Criteria cri) throws Exception;
   
   public int countPaging(Criteria cri) throws Exception;*/
   
   // 12. 검색처리
   public List<MemberVO> listSearch(SearchCriteria cri) throws Exception;
   
   public int listSearchCount(SearchCriteria cri) throws Exception;
   
   
   

   
   // 11. MY PAGE - 비밀번호 체크
  /* public boolean checkPw(int memNo, String memPw) throws Exception;*/

   // 14. 관리자 :: 대시보드 - 신청 건수
  /* public int applyCount() throws Exception;
   
   // 15. 관리자 :: 대시보드 - 졸업예정자 수
   public int graduateCount() throws Exception;
   
   //15-1. 관리자 :: 대시보드 - 졸업예상자 리스트
   public List<MemberVO> graduateList() throws Exception;
   
   // 16. 관리자 :: 대시보드 - 졸업대상자 수
   public int graduateToBeCount() throws Exception;

   
   // 17. 관리자 :: 대시보드 - 최근 MIS 3개 정보
   public List<MisVO> misInfo() throws Exception;

   
   // 1. 학생 :: 대시보드 - 최근 승인 대기 신청내역 3개 리스트
   public List<ApplyVO> mainApplyWaitList(int userNo) throws Exception;
   
   // 2. 학생 :: MY PAGE - 내 목표 설정(등록)
   public void goalInsert(GoalVO gVo) throws Exception;
   
   // 3. 학생 :: MY PAGE - 내 목표 리스트
   public List<GoalVO> goalList(int userNo) throws Exception;

   // 4. 학생 :: MY PAGE - 내 목표 상세보기
   public GoalVO goalSelect(int goalNo) throws Exception;
   
   // 5. 관리자:: 학생 등록 - 학번 중복검사 AJAX.
   public int checkUserNo(int userNo) throws Exception;*/
   
}