package com.posep.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.posep.domain.MemberVO;
import com.posep.domain.TechnologistVO;
import com.posep.dto.LoginDTO;
import com.posep.persistence.MemberDAO;
import com.posep.persistence.TechnologistDAO;

@Service
public class LoginServiceImpl implements LoginService {

   @Inject
   private MemberDAO mDao;

   @Inject
   private TechnologistDAO tDao;

   @Override
   public MemberVO login(LoginDTO dto) throws Exception {
      return mDao.login(dto);
   }

   @Override
   public TechnologistVO techLogin(LoginDTO dto) throws Exception {
      return tDao.login(dto);
   }

}