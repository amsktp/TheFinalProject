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
		
		MemberDto memberDto = sqlSession.selectOne(namespace + "memberExist", map);
		
		return memberDto;
	}

	@Override
	public int memberInsertOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		
		return sqlSession.insert(namespace + "memberInsertOne", memberDto);
		
	}

}
