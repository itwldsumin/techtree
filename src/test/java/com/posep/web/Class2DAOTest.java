package com.posep.web;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.posep.domain.Class1VO;
import com.posep.domain.Class2VO;
import com.posep.domain.SearchCriteria;
import com.posep.persistence.Class2DAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class Class2DAOTest {

	@Inject
	private Class2DAO dao;

	private static Logger logger = LoggerFactory.getLogger(Class1DAOTest.class);

/*	@Test
	public void adcreate() throws Exception {

		Class2VO Class2VO = new Class2VO();
		Class2VO.setClass2Name("테스트2");
		Class2VO.setClass2Contents("내용테스트2");
		Class2VO.setClass1Name("기계");

		dao.adcreate(Class2VO);

	}
*/
	
	
	@Test
	public void testDynamic1() throws Exception{
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(2);
		cri.setKeyword("d");
		cri.setSearchType("1");
		
		logger.info("===========================");
		
		List<Class2VO> list = dao.listSearch(cri);
		
		for (Class2VO c2Vo: list) {
			
			logger.info(c2Vo.getClass2No() + ": " + c2Vo.getClass2Name() + c2Vo.getClass2Contents() );
		}
		
		logger.info("===========================");
		
		logger.info("count: " +dao.listSearchCount(cri));
		
	}
}
