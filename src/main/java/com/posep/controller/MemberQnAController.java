package com.posep.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.MemberVO;
import com.posep.domain.PageMaker;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;

import com.posep.service.QnAService;
import com.posep.service.TechnologistService;

@Controller
@RequestMapping("/member/QnA/*")
public class MemberQnAController {

   private static Logger logger = LoggerFactory.getLogger(MemberQnAController.class);

   @Inject
   QnAService service;

   @Inject
   TechnologistService tservice;

   // 리스트

   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") SearchCriteria cri, HttpServletRequest request, Model model)
         throws Exception {

      HttpSession session = request.getSession();

      MemberVO mVo = (MemberVO) session.getAttribute("login");
      String memId = mVo.getMemId();

      cri.setKeyword(memId);
      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);

      pageMaker.setTotalCount(service.mQListCount(cri));

      model.addAttribute("mQList", service.mQList(cri));
      model.addAttribute("pageMaker", pageMaker);

   }

   /*
    * @RequestMapping(value = "/list", method = RequestMethod.GET) public void
    * listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws
    * Exception {
    * 
    * logger.info(cri.toString()); List<QnaVO> qnaList = service.listSearch(cri);
    * model.addAttribute("list", qnaList);
    * 
    * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
    * 
    * pageMaker.setTotalCount(service.listSearchCount(cri));
    * 
    * for (QnaVO t : service.listSearch(cri)) { System.out.println(t); }
    * 
    * model.addAttribute("pageMaker", pageMaker);
    * 
    * }
    */

   // 등록
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public void registerGET(@RequestParam("techId") String techId, QnaVO QnaVO, Model model) throws Exception {
      logger.info("Qna register get..");

      System.out.println(QnaVO);
      model.addAttribute("technologistVO", tservice.read(techId));
      // 업로드한 파일 리스트
      model.addAttribute("filesVO", tservice.fileList(techId));
   }

   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registerPOST(QnaVO QnaVO, RedirectAttributes rttr) throws Exception {

      logger.info("Admin qna Register POST .......");

      service.create(QnaVO);

      rttr.addFlashAttribute("msg", "register");
      System.out.println(QnaVO);
      return "redirect:/member/dashboard";
   }

   // 상세보기
   @RequestMapping(value = "/read", method = RequestMethod.GET)
   public void read(@RequestParam("qnaNo") int qnaNo, @RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model)
         throws Exception {
      logger.info("qna read get.,...........");
      model.addAttribute(service.read(qnaNo));
      // 업로드한 파일 리스트
      model.addAttribute("filesVO", tservice.fileList(techId));

   }

   /*
    * @RequestMapping(value = "/read", method = RequestMethod.GET) public void
    * read(@RequestParam("qnaNo") int qnaNo, String techId,@ModelAttribute("cri")
    * SearchCriteria cri, Model model) throws Exception {
    * logger.info("qna read get.,...........");
    * model.addAttribute(service.read(qnaNo));
    * model.addAttribute(tservice.adread(techId));
    * 
    * 
    * 
    * }
    */

   // 수정
   @RequestMapping(value = "/modify", method = RequestMethod.GET)
   public void modifyGET(@RequestParam("qnaNo") int qnaNo, @RequestParam("techId") String techId, @ModelAttribute("cri") SearchCriteria cri, Model model)
         throws Exception {

      logger.info("qna modifyGET....");
      model.addAttribute(service.read(qnaNo));
      model.addAttribute("filesVO", tservice.fileList(techId));

   }

   @RequestMapping(value = "/modify", method = RequestMethod.POST)
   public String modifyPOST(QnaVO QnaVO, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr)
         throws Exception {

      logger.info("qna modifyPOST.............");
      logger.info(cri.toString());

      System.out.println("blah");
      System.out.println(QnaVO.getClass3No());
      System.out.println(QnaVO.getContents());
      System.out.println(QnaVO.getQnaNo());
      System.out.println(QnaVO.getTitle());
      System.out.println(QnaVO.getType());
      System.out.println(QnaVO.getHopeDate());
      service.update(QnaVO);

      rttr.addFlashAttribute("msg", "MODIFY");
      rttr.addFlashAttribute("QnaVO", QnaVO);

      logger.info(rttr.toString());

      return "redirect:/member/QnA/list";
   }

   // 삭제
   @RequestMapping(value = "/remove", method = RequestMethod.POST)
   public String adremove(@RequestParam("qnaNo") int qnaNo, SearchCriteria cri, RedirectAttributes rttr)
         throws Exception {

      service.addelete(qnaNo);
      logger.info(" qna delete ....................");

      rttr.addAttribute("page", cri.getPage());
      rttr.addAttribute("perPageNum", cri.getPerPageNum());
      rttr.addAttribute("searchType", cri.getSearchType());
      rttr.addAttribute("keyword", cri.getKeyword());

      rttr.addFlashAttribute("msg", "REMOVE");
      return "redirect:/member/QnA/list";

   }

}