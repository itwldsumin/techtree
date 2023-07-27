package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.Class3VO;
import com.posep.domain.SearchCriteria;

@Repository
public class Class3DAOImpl implements Class3DAO{

	@Inject
	private SqlSession session;
	
	  private static String namespace = "com.posep.mapper.Class3Mapper";
	
	@Override
	public void adcreate(Class3VO Class3VO) throws Exception {
		session.insert(namespace + ".adcreate", Class3VO);
		
	}

	@Override
	public void adupdate(Class3VO Class3VO) throws Exception {
		 session.update(namespace + ".adupdate", Class3VO);
		
	}

	@Override
	public void addelete(String class3No) throws Exception {
		session.delete(namespace + ".addelete", class3No);
	}

	@Override
	public Class3VO adread(String class3No) throws Exception {
		return session.selectOne(namespace + ".adread", class3No);
	}

	@Override
	public List<Class3VO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		 return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<Class3VO> listClass3() throws Exception {
		return session.selectList(namespace + ".listClass3" );
	}

	@Override
	public List<Class3VO> list3(String class2No) throws Exception {
		 return session.selectList(namespace + ".list3", class2No);
	}

	@Override
	public int checkClass3No(String class3No) {
		 return session.selectOne(namespace + ".checkClass3No", class3No);
	}

	@Override
	public List<Class3VO> listAll() throws Exception {
		 return session.selectList(namespace + ".listAll");
	}

	
}
