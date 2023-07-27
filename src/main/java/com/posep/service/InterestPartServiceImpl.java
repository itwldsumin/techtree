package com.posep.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.posep.domain.Class3VO;
import com.posep.domain.InterestPartVO;
import com.posep.persistence.InterestPartDAO;

@Service
public class InterestPartServiceImpl implements InterestPartService {
	  @Inject
	   private InterestPartDAO dao;

	@Override
	public List<Class3VO> searchClass3(String calss3Name) throws Exception {
		return dao.searchClass3(calss3Name);
	}

	@Override
	public List<Class3VO> class3List(String memId) throws Exception {
		return dao.class3List(memId);
	}

	@Override
	public List<InterestPartVO> everyClass3List(String memId) throws Exception {
		return dao.everyClass3List(memId);
	}

	@Override
	public List<InterestPartVO> everyClass3List2(String memId) throws Exception {
		return dao.everyClass3List2(memId);
	}

	@Override
	public void register(InterestPartVO InterestPartVO) throws Exception {
		dao.create(InterestPartVO);
		
	}

	@Override
	public void remove(int interestPartNo) throws Exception {
		dao.delete(interestPartNo);
		
	}

}
