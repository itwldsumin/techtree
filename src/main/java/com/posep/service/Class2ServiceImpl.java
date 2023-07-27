package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.SearchCriteria;
import com.posep.persistence.Class1DAO;
import com.posep.persistence.Class2DAO;

@Service
public class Class2ServiceImpl implements Class2Service{

	
	@Inject 
	private Class2DAO dao;
	
	@Inject 
	private Class1DAO dao1;
	
	@Override
	public void adregist(Class2VO Class2VO) throws Exception {
		dao.adcreate(Class2VO);
		
	}

	@Override
	public void admodify(Class2VO Class2VO) throws Exception {
		dao.adupdate(Class2VO);
	}

	@Override
	public void adremove(String class2No) throws Exception {
		dao.addelete(class2No);
	}

	@Override
	public Class2VO adread(String class2No) throws Exception {
		return dao.adread(class2No);
	}

	@Override
	public List<Class2VO> listSearch(SearchCriteria cri) throws Exception {
		 return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<Class1VO> listClass1() throws Exception {
		return dao1.listClass1();		
	}

	@Override
	public List<Class2VO> listClass2() throws Exception {
		return dao.listClass2();	
	}

	@Override
	public List<Class2VO> list2(String class1No) throws Exception {
		return dao.list2(class1No);
	}

	@Override
	public int checkClass2No(String class2No) throws Exception {
		 return dao.checkClass2No(class2No);
		}

	}


