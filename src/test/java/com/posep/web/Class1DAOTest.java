package com.posep.web;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.posep.domain.Class1VO;
import com.posep.domain.SearchCriteria;
import com.posep.persistence.Class1DAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class Class1DAOTest {

	@Inject
	private Class1DAO dao;

	private static Logger logger = LoggerFactory.getLogger(Class1DAOTest.class);

	/*
	 * @Test public void adcreate() throws Exception{
	 * 
	 * Class1VO c1Vo = new Class1VO(); c1Vo.setC1Name("테스트2");
	 * c1Vo.setC1Contents("내용테스트2");
	 * 
	 * dao.adcreate(c1Vo);
	 * 
	 * }
	 * 
	 * 
	 * 
	 */ /*
		 * @Test public void adUpdate() throws Exception {
		 * 
		 * Class1VO c1Vo = new Class1VO(); c1Vo.setC1No(1); c1Vo.setC1Name("수정된 글입니다.");
		 * c1Vo.setC1Contents("유형 수정");
		 * 
		 * dao.adupdate(c1Vo); }
		 * 
		 */

	/*
	 * @Test public void testDelete() throws Exception {
	 * 
	 * 
	 * dao.addelete(1); }
	 */

	/*@Test
	public void testURL() throws Exception {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().path("admin/class1/list")
				.queryParam("c1No", 12).queryParam("perPageNum", 20).build();

		logger.info("");

	}*/
	
	
@Test
public void testDynamic1() throws Exception{
	SearchCriteria cri = new SearchCriteria();
	cri.setPage(2);
	cri.setKeyword("학");
	cri.setSearchType("1");
	
	logger.info("===========================");
	
	List<Class1VO> list = dao.listSearch(cri);
	
	for (Class1VO c1Vo: list) {
		
		logger.info(c1Vo.getClass1No() + ": " + c1Vo.getClass1Name() + c1Vo.getClass1Contents() );
	}
	
	logger.info("===========================");
	
	logger.info("count: " +dao.listSearchCount(cri));
	
}

}
