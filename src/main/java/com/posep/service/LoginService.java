package com.posep.service;

import com.posep.domain.MemberVO;
import com.posep.domain.TechnologistVO;
import com.posep.dto.LoginDTO;

public interface LoginService {
   
   // 1. 회원 관리자 로그인
      public MemberVO login(LoginDTO dto) throws Exception;
      
     //2. 과학기술인 로그인
      public TechnologistVO techLogin(LoginDTO dto) throws Exception;

}