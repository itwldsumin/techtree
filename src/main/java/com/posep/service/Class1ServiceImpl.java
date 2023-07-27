package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.Class1VO;

import com.posep.domain.SearchCriteria;
import com.posep.persistence.Class1DAO;

@Service
public class Class1ServiceImpl implements Class1Service {

	
	@Inject
	private Class1DAO dao;
	
	
	//1.
	@Override
	public void adregist(Class1VO Class1VO) throws Exception {
		dao.adcreate(Class1VO);
		
	}
	//2.
	@Override
	public void admodify(Class1VO Class1VO) throws Exception {
		dao.adupdate(Class1VO);
		
	}
	//3.
	@Override
	public void adremove(String class1No) throws Exception {
		System.out.println("asdffsda"+class1No);
		dao.addelete(class1No);
		
	}

	@Override
	public Class1VO adread(String class1No) throws Exception {
		 return dao.adread(class1No);
				 
	}
	
	//8.
	@Override
	public List<Class1VO> listSearch(SearchCriteria cri) throws Exception {
		   return dao.listSearch(cri);
	}
	//9.
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
	    return dao.listSearchCount(cri);
	}
	@Override
	public List<Class1VO> list1(String class1No) throws Exception {
		 return dao.list1(class1No);
	}
	@Override
	public int checkClass1No(String class1No) throws Exception {
		 return dao.checkClass1No(class1No);
	}



	
}
