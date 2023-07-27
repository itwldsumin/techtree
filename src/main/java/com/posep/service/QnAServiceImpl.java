package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;

import com.posep.persistence.QnaDAO;
import com.posep.persistence.ReplyDAO;


@Service
public class QnAServiceImpl implements QnAService {

   @Inject
   private QnaDAO dao;
   @Inject
   private ReplyDAO redao;
   

   @Override
   public void create(QnaVO QnaVO) throws Exception {
      dao.create(QnaVO);
      
   }

   @Override
   public QnaVO read(int qnaNo) throws Exception {
      
      return dao.read(qnaNo);
   }

   @Override
   public void update(QnaVO QnaVO) throws Exception {
      dao.update(QnaVO);
      
   }

   @Override
   public void addelete(int qnaNo) throws Exception {
     redao.deleteAll(qnaNo); // 댓글(FK)부터 전체 삭제
      dao.addelete(qnaNo);
      
   }

   @Override
   public List<QnaVO> listSearch(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return dao.listSearch(cri);
   }

   @Override
   public int listSearchCount(SearchCriteria cri) throws Exception {
   
      return dao.listSearchCount(cri);
   }

   @Override
   public List<QnaVO> mQList(SearchCriteria cri) throws Exception {
        return dao.mQList(cri);
   }

   @Override
   public List<QnaVO> tQList(SearchCriteria cri) throws Exception {
       return dao.tQList(cri);
   }

   @Override
   public int mQListCount(SearchCriteria cri) throws Exception {
      return dao.mQListCount(cri);
   }

   @Override
   public int tQListCount(SearchCriteria cri) throws Exception {
      return dao.tQListCount(cri);
   }
}