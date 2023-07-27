package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.CanPartVO;
import com.posep.domain.Class3VO;
import com.posep.domain.InterestPartVO;
@Repository
public class InterestPartDAOImpl implements InterestPartDAO {
	
	 @Inject
	   private SqlSession session;
	 
	   private static String namespace = "com.posep.mapper.InterestPartMapper";
	 
	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		return session.selectList(namespace + ".searchClass3", calss3Name);
	}

	@Override
	public List<Class3VO> class3List(String memId) throws Exception {
		return session.selectList(namespace + ".class3List", memId);
	}

	@Override
	public List<InterestPartVO> everyClass3List(String memId) throws Exception {
		return session.selectList(namespace + ".everyClass3List", memId);
	}

	@Override
	public List<InterestPartVO> everyClass3List2(String memId) throws Exception {
		return session.selectList(namespace + ".everyClass3List2", memId);
	}

	@Override
	public int create(InterestPartVO InterestPartVO) throws Exception {
		 session.insert(namespace + ".create", InterestPartVO);
	      return InterestPartVO.getInterestPartNo();
	}

	@Override
	public void delete(int interestPartNo) throws Exception {
		 session.delete(namespace + ".delete", interestPartNo);
		
	}


}
