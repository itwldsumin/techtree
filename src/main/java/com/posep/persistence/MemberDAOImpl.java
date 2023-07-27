package com.posep.persistence;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.MemberVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.dto.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

   @Inject
   private SqlSession session;

   private static String namespace = "com.posep.mapper.MemberMapper";
   private static String namespaceMyPage = "com.posep.mapper.MyPageMapper";
   
   @Override
   // 1. 로그인
   public MemberVO login(LoginDTO dto) throws Exception {

      return session.selectOne(namespace + ".login", dto);
   }


   @Override
   // 2. 회원 :: 회원가입
   public void insert(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub

      session.selectOne(namespace + ".insert", mVo);
   }

   @Override
   // 3. 회원 :: 회원가입 - 학번 중복검사 AJAX.
   public int checkMemId(String memId) throws Exception {
      return session.selectOne(namespace + ".checkMemId", memId);
   }

   
   @Override
   // 4. 회원 :: 대시보드 - 최근 컨설팅 리스트
   public List<QnaVO> mainConsultList(String memId) throws Exception {

      return session.selectList(namespace + ".mainConsultList" , memId);
   }

   @Override
// 5. 회원 :: 대시보드 - 최근 협업 리스트
   public List<QnaVO> mainCooperatList(String memId) throws Exception {

         return session.selectList(namespace + ".mainCooperList", memId);
      }
   
   @Override
 //6. 관리자 :: 대시보드 - 일반인 / 기업 / 기술인 수
   public int countMem() throws Exception {

      return session.selectOne(namespace + ".countMem");
   }

   @Override
   public int countMem2() throws Exception {

      return session.selectOne(namespace + ".countMem2");
   }
   
   @Override
   public int countTech() throws Exception {

      return session.selectOne(namespace + ".countTech");
   }
   
   
   
   @Override
   // 7. 관리자 :: 회원관리 - 목록
   public List<MemberVO> list(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace + ".list", cri);
   }

   
   
   @Override
   // 8. 관리자&회원 :: 회원관리 - 회원상세내역
   public MemberVO read(String memId) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne(namespace + ".read", memId);
   }
   @Override
   // 9. 관리자 :: 회원관리 - 회원 삭제
   public void delete(String memId) throws Exception {
      // TODO Auto-generated method stub
      session.delete(namespace + ".delete", memId);
   }


   // 10. 내정보 수정
   @Override
   public void update(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub
      session.update(namespaceMyPage + ".update", mVo);
   }
   
   @Override
   public void pwupdate(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub
      session.update(namespaceMyPage + ".pwupdate", mVo);
      
   }
   
   
   
   
/*   // 11. 페이징처리
   @Override
   public List<MemberVO> listCriteria(Criteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace + ".listCriteria", cri);
   }

   @Override
   public int countPaging(Criteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne(namespace + ".countPaging", cri);
   }*/

   // 12. 검색처리
   // 검색과 페이징이 포함된 리스트 띄우기(SearchCriteria와 Criteria)
   @Override
   public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace + ".listSearch", cri);
   }

   @Override
   public int listSearchCount(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne(namespace + ".listSearchCount", cri);
   }




 


 
   
 
    

}