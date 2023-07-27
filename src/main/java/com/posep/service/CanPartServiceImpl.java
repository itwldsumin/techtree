package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.CanPartVO;
import com.posep.domain.Class3VO;
import com.posep.persistence.CanPartDAO;

@Service
public class CanPartServiceImpl implements CanPartService{
	
	  @Inject
	   private CanPartDAO dao;

	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		return dao.searchClass3(calss3Name);
	}

	@Override
	public List<Class3VO> class3List(String techId) throws Exception {
		return dao.class3List(techId);
	}

	@Override
	public List<CanPartVO> everyClass3List(String techId) throws Exception {
		return dao.everyClass3List(techId);
	}
	@Override
	public List<CanPartVO> everyClass3List2(String techId) throws Exception {
		return dao.everyClass3List2(techId);
	}

	@Override
	public void register(CanPartVO CanPartVO) throws Exception {
		dao.create(CanPartVO);
	}

	@Override
	public void remove(int canPartNo) throws Exception {
		 dao.delete(canPartNo);
		
	}

	
	
}
