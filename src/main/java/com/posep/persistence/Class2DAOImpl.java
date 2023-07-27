package com.posep.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.posep.domain.Class2VO;
import com.posep.domain.SearchCriteria;

@Repository
public class Class2DAOImpl implements Class2DAO {

	
	@Inject
	  private SqlSession session;
	
	  private static String namespace = "com.posep.mapper.Class2Mapper";
	  
	@Override
	public void adcreate(Class2VO Class2VO) throws Exception {
		session.insert(namespace + ".adcreate", Class2VO);
		
	}

	@Override
	public void adupdate(Class2VO Class2VO) throws Exception {
		 session.update(namespace + ".adupdate", Class2VO);
		
	}
 
	@Override
	public void addelete(String class2No) throws Exception {
		session.delete(namespace + ".addelete", class2No);
	}

	@Override
	public Class2VO adread(String class2No) throws Exception {
		return session.selectOne(namespace + ".adread", class2No);
	}

	@Override
	public List<Class2VO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		 return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<Class2VO> listClass2() throws Exception {
		return session.selectList(namespace + ".listClass2" );
	}

	@Override
	public List<Class2VO> list2(String class1No) throws Exception {
		 return session.selectList(namespace + ".list2", class1No);
	}

	@Override
	public int checkClass2No(String class2No) {
		 return session.selectOne(namespace + ".checkClass2No", class2No);
		}


}
