package com.englishvillage.auth.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.auth.dao.AuthDao;
import com.englishvillage.auth.model.MemberDto;

@Service
public class AuthServiceImpl implements AuthService{

	private static final Logger log = 
			LoggerFactory.getLogger(AuthServiceImpl.class);
	
	@Autowired
	public AuthDao authDao;
		
	@Override
	public MemberDto memberExist(String memberEmail, String memberPassword) {
		// TODO Auto-generated method stub
		
		MemberDto memberDto = authDao.memberExist(memberEmail, memberPassword);
		
		return memberDto;
	}

	@Override
	public int memberInsertOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
	
		authDao.memberInsertOne(memberDto);
		
		int memberNo = memberDto.getMemberNo();
		return memberNo;
		
	}
	
}
