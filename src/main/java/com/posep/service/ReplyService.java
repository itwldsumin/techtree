package com.posep.service;

import java.util.List;

import com.posep.domain.ReplyVO;

public interface ReplyService {

   // 댓글 생성
   public void add(ReplyVO ReplyVO) throws Exception;

   // 댓글 삭제
   public void remove(int replyNo) throws Exception;

   // 댓글 전체 삭제
   public void removeAll(int qnaNo) throws Exception;
   
   // 댓글 전체 보기 
   List<ReplyVO> list(int qnaNo) throws Exception;
   
}