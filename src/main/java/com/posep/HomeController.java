package com.posep;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.posep.domain.Class1VO;
import com.posep.domain.PageMaker;
import com.posep.domain.SearchCriteria;
import com.posep.service.Class1Service;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private Class1Service service;

	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, @ModelAttribute() SearchCriteria cri, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		logger.info(cri.toString());
		List<Class1VO> classList = service.listSearch(cri);
		model.addAttribute("list", classList);

		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalCount(service.listSearchCount(cri));

		for (Class1VO t : service.listSearch(cri)) {
			System.out.println(t);
		}

		return "home";
	}

	/*// 리스트
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	   public void listPage(@ModelAttribute() SearchCriteria cri, Model model) throws Exception {
		   
		  logger.info(cri.toString());
		  List<Class1VO> classList= service.listSearch(cri);
		  model.addAttribute("list", classList);
		  
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	      
	      for(Class1VO t: service.listSearch(cri)) {
	    	  System.out.println(t);
	     
	      
	      
	      model.addAttribute("pageMaker", pageMaker);
	
	   }
	   
	
	
	   }*/
	}
