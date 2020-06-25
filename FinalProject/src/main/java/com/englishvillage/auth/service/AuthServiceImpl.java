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
	public MemberDto memberExist(String memberEmail, String memberPassword) {
		// TODO Auto-generated method stub
		
		System.out.println("서비스 안");
		MemberDto memberDto = authDao.memberExist(memberEmail, memberPassword);
		
		return memberDto;
	}
	
	
}
