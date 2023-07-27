package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.CanPartVO;

import com.posep.domain.Class3VO;

@Repository
public class CanPartDAOImpl implements CanPartDAO {
	
	 @Inject
	   private SqlSession session;

	   private static String namespace = "com.posep.mapper.CanPartMapper";

	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		 return session.selectList(namespace + ".searchClass3", calss3Name);
	}

	@Override
	public List<Class3VO> class3List(String techId) throws Exception {
		return session.selectList(namespace + ".class3List", techId);
	}

	@Override
	public List<CanPartVO> everyClass3List(String techId) throws Exception {
		return session.selectList(namespace + ".everyClass3List", techId);
	}
	
	@Override
	public List<CanPartVO> everyClass3List2(String techId) throws Exception {
		return session.selectList(namespace + ".everyClass3List2", techId);
	}


	@Override
	public int create(CanPartVO CanPartVO) throws Exception {
		 session.insert(namespace + ".create", CanPartVO);
	      return CanPartVO.getCanPartNo();
	}

	@Override
	public void delete(int canPartNo) throws Exception {
		 session.delete(namespace + ".delete", canPartNo);
		
	}

}
