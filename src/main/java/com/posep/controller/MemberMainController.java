package com.posep.controller;

import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.posep.domain.CanPartVO;
import com.posep.domain.InterestPartVO;
import com.posep.domain.MemberVO;
import com.posep.service.InterestPartService;
import com.posep.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberMainController {
   @Inject
   private MemberService service;
   
   @Inject
   private InterestPartService Iservice;
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


   
   
    //회원 :: 대시보드 메인

    @RequestMapping("/dashboard")
    public void main(HttpServletRequest request, Model model) throws Exception {
       logger.info("Member Main........");

       HttpSession session = request.getSession();

       MemberVO mVo = (MemberVO) session.getAttribute("login");
       String memId = mVo.getMemId();
       
       
 
     model.addAttribute("mainConsultList", service.mainConsultList(memId));
     
     model.addAttribute("mainCooperatList", service.mainCooperatList(memId));
    }
    
    
     //1. 회원 :: 내 정보 상세보기
   @RequestMapping(value = "/myInfo", method = RequestMethod.GET)
    public void myInfoGET(HttpServletRequest request, Model model) throws Exception {

      // logger.info("member myPageGET..............");

       HttpSession session = request.getSession();

       MemberVO mVo = (MemberVO) session.getAttribute("login");

       String memId = mVo.getMemId();
      
       model.addAttribute("MemberVO",service.read(memId));
       
       
       // 컨설팅/협업 정보
       List<InterestPartVO> everyClass3List = Iservice.everyClass3List(memId);
      model.addAttribute("everyClass3List", everyClass3List);
      
      List<InterestPartVO> everyClass3List2 = Iservice.everyClass3List2(memId);
      model.addAttribute("everyClass3List2", everyClass3List2);
       

    }
    

    

    // 2. 내정보 수정폼으로 이동
    @RequestMapping(value = "/myInfoModify", method = RequestMethod.GET)
    public void myInfoUpdateGET(@RequestParam("memId") String memId, Model model) throws Exception {


       model.addAttribute("MemberVO", service.read(memId));
    }

    // 2. 내정보 수정
    @RequestMapping(value = "/myInfoModify", method = RequestMethod.POST)
    public String myInfoUpdatePOST(MemberVO mVo, RedirectAttributes rttr, Model model) throws Exception {


       service.modify(mVo);

       rttr.addFlashAttribute("msg", "SUCCESS");

       return "redirect:/member/myInfo";
    }
    
    
  //3. 회원 :: 내 비밀번호 수정 폼 이동 
    @RequestMapping(value = "/myPwModify", method = RequestMethod.GET)
    public void myPwUpdateGET(@RequestParam("memId") String memId, Model model) throws Exception {


       model.addAttribute("MemberVO",service.read(memId));
    }

    // 3. 회원 :: 내 비밀번호 수정
    @RequestMapping(value = "/myPwModify", method = RequestMethod.POST)
    public String myPwUpdatePOST(MemberVO mVo, RedirectAttributes rttr, Model model) throws Exception {


       service.pwModify(mVo);

       rttr.addFlashAttribute("member", "PWSUCCESS");
    

       return "redirect:/logout";
    }
    
    
    
   // 선택한 소분류 삭제
   @RequestMapping(value = "/Iremove", method = RequestMethod.POST)
   public String remove(@RequestParam("interestPartNo") int interestPartNo, InterestPartVO InterestPartVO, RedirectAttributes rttr)
         throws Exception {

      logger.info("CanPart remove post.................");
      logger.info(InterestPartVO.toString());
      Iservice.remove(interestPartNo);

      rttr.addFlashAttribute("msg", "SUCCESS");
      return "redirect:/member/myInfo";
   }
}