package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.Class3VO;
import com.posep.domain.SearchCriteria;
import com.posep.persistence.Class1DAO;
import com.posep.persistence.Class2DAO;
import com.posep.persistence.Class3DAO;


@Repository
public class Class3ServiceImpl implements Class3Service {
	@Inject 
	private Class3DAO dao;
	
	@Inject 
	private Class2DAO dao2;
	
	@Inject 
	private Class1DAO dao1;
	
	@Override
	public void adregist(Class3VO Class3VO) throws Exception {
		dao.adcreate(Class3VO);
		
	}

	@Override
	public void admodify(Class3VO Class3VO) throws Exception {
		dao.adupdate(Class3VO);
		
	}

	@Override
	public void adremove(String class3No) throws Exception {
		dao.addelete(class3No);
		
	}

	@Override
	public Class3VO adread(String class3No) throws Exception {
		return dao.adread(class3No);
	}

	@Override
	public List<Class3VO> listSearch(SearchCriteria cri) throws Exception {
		 return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}


	@Override
	public List<Class2VO> listClass2() throws Exception {
		return dao2.listClass2();		
	}

	@Override
	public List<Class1VO> listClass1() throws Exception {
		return dao1.listClass1();	
	}
	
	@Override
	public List<Class3VO> list3(String class2No) throws Exception {
		return dao.list3(class2No);
	}

	@Override
	public int checkClass3No(String class3No) throws Exception {
		 return dao.checkClass3No(class3No);
	}

	@Override
	public List<Class3VO> listAll() throws Exception {
		return dao.listAll();
	}


}
