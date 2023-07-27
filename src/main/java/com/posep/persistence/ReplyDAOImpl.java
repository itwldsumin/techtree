package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "com.posep.mapper.ReplyMapper";
	
	@Override
	public void create(ReplyVO ReplyVO) throws Exception {
		session.insert(namespace + ".create", ReplyVO);
	}

	@Override
	public void delete(int replyNo) throws Exception {
		session.delete(namespace + ".delete", replyNo);
		
	}

	@Override
	public void deleteAll(int replyNo) throws Exception {
		session.delete(namespace + ".deleteAll", replyNo);
		
	}

	@Override
	public List<ReplyVO> list(int qnaNo) throws Exception {
		return session.selectList(namespace + ".list", qnaNo);
	}

}
