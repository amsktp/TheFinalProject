package com.englishvillage.auth.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.auth.model.MemberDto;


@Repository
public class AuthDaoImpl implements AuthDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.member.";
	
	@Override
	public MemberDto memberExist(String email, String password) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		
		MemberDto memberDto = 
			sqlSession.selectOne(namespace + "memberExist", paramMap);
		
		return memberDto;
	}

}
