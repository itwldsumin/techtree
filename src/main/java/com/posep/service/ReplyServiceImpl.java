package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.ReplyVO;
import com.posep.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

	@Override
	public void add(ReplyVO ReplyVO) throws Exception {
		dao.create(ReplyVO);

	}

	@Override
	public void remove(int replyNo) throws Exception {
		dao.delete(replyNo);

	}

	@Override
	public void removeAll(int qnaNo) throws Exception {
		dao.deleteAll(qnaNo);

	}

	@Override
	public List<ReplyVO> list(int qnaNo) throws Exception {
		return dao.list(qnaNo);
	}

}