package com.englishvillage.auth.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.auth.dao.AuthDao;
import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.util.FileUtils;

@Service
public class AuthServiceImpl implements AuthService{

	private static final Logger log = 
			LoggerFactory.getLogger(AuthServiceImpl.class);
	
	@Autowired
	public AuthDao authDao;
		
	@Override
	public MemberDto memberExist(String email, String password) {
		// TODO Auto-generated method stub
		
		MemberDto memberDto = authDao.memberExist(email, password);
		
		return memberDto;
	}
	
	
}
