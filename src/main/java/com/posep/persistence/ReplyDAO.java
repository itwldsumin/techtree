package com.posep.persistence;

import java.util.List;

import com.posep.domain.ReplyVO;



public interface ReplyDAO {

	// 댓글 생성
	public void create(ReplyVO ReplyVO) throws Exception;

	// 댓글 삭제
	public void delete(int replyNo) throws Exception;

	// 댓글 전체 삭제 
	public void deleteAll(int replyNo) throws Exception;

	//댓글 전체 보기
	public List<ReplyVO> list(int qnaNo) throws Exception;

	
}
