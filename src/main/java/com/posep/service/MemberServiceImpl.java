package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.MemberVO;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;
import com.posep.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

   @Inject
   private MemberDAO dao;

/*   @Override
   public MemberVO login(LoginDTO dto) throws Exception {

      return dao.login(dto);
   }*/

   @Override
   public void register(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub
      
      dao.insert(mVo);
   }

   @Override
   public int checkMemId(String memId) throws Exception {
      // TODO Auto-generated method stub
      return dao.checkMemId(memId);
   }
   
   

   @Override
   public List<QnaVO> mainConsultList(String memId) throws Exception {
      // TODO Auto-generated method stub
      return dao.mainConsultList(memId);
   }

   @Override
   public List<QnaVO> mainCooperatList(String memId) throws Exception {
      // TODO Auto-generated method stub
      return dao.mainCooperatList(memId);
   }

   @Override
   public int countMem() throws Exception {
      // TODO Auto-generated method stub
      return dao.countMem();
   }

   @Override
   public int countMem2() throws Exception {
      // TODO Auto-generated method stub
      return dao.countMem2();
   }

   @Override
   public int countTech() throws Exception {
      // TODO Auto-generated method stub
      return dao.countTech();
   }

   @Override
   public List<MemberVO> list(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return dao.list(cri);
   }

   @Override
   public MemberVO read(String memId) throws Exception {
      // TODO Auto-generated method stub
      return dao.read(memId);
   }

   @Override
   public void remove(String memId) throws Exception {
      // TODO Auto-generated method stub
      dao.delete(memId);

   }

   @Override
   public void modify(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub
      dao.update(mVo);

   }

   @Override
   public void pwModify(MemberVO mVo) throws Exception {
      // TODO Auto-generated method stub
      dao.pwupdate(mVo);

   }


   @Override
   public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
       return dao.listSearch(cri);
   }

   @Override
   public int listSearchCount(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return dao.listSearchCount(cri);
   }



}