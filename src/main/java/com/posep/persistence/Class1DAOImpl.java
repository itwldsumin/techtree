package com.posep.persistence;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import  com.posep.domain.Class1VO;

import  com.posep.domain.SearchCriteria;


@Repository
public class Class1DAOImpl implements Class1DAO {

	@Inject
	  private SqlSession session;
	
	  private static String namespace = "com.posep.mapper.Class1Mapper";
	
	@Override
	public void adcreate(Class1VO Class1VO) throws Exception {
		session.insert(namespace + ".adcreate", Class1VO);
		
	}

	@Override
	public void adupdate(Class1VO Class1VO) throws Exception {
		 session.update(namespace + ".adupdate", Class1VO);
		
	}

	@Override
	public void addelete(String class1No) throws Exception {
		session.delete(namespace + ".addelete", class1No);
	}

//	@Override
//	public List<Class1VO> list(SearchCriteria cri) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}


	@Override
	public List<Class1VO> listSearch(SearchCriteria cri) throws Exception {
	    return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
	    return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public Class1VO adread(String class1No) throws Exception {
		return session.selectOne(namespace + ".adread", class1No);
		
	}

	@Override
	public List<Class1VO> listClass1() throws Exception {
		 return session.selectList(namespace + ".listClass1" );
	}

	@Override
	public List<Class1VO> list1(String class1No) throws Exception {
		 return session.selectList(namespace + ".list1", class1No);

	}

	@Override
	public int checkClass1No(String class1No) {
		 return session.selectOne(namespace + ".checkClass1No", class1No);
	}


	

	
}
