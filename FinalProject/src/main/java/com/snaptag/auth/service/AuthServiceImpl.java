package com.snaptag.auth.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snaptag.auth.dao.AuthDao;
import com.snaptag.auth.model.MemberVO;

@Service
public class AuthServiceImpl implements AuthService{

	private static final Logger log = 
			LoggerFactory.getLogger(AuthServiceImpl.class);
	
	@Autowired
	public AuthDao authDao;
		
		
		

	@Override
	public MemberVO memberExist(MemberVO memberVO) {
		// TODO Auto-generated method stub
		MemberVO sessionMemberVO = authDao.memberExist(memberVO);
		
		return  sessionMemberVO;
	}

	
}
