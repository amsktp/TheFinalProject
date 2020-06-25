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
	
	String namespace = "com.englishvillage.auth.";
	
	@Override
	public MemberDto memberExist(String memberEmail, String memberPassword) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("memberEmail", memberEmail);
		map.put("memberPassword", memberPassword);
		
		System.out.println("다오 안");
		MemberDto memberDto = 
			sqlSession.selectOne(namespace + "memberExist", map);
		System.out.println("다오 밖");
		
		return memberDto;
	}

}
