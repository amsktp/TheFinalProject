package com.snaptag.auth.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.snaptag.auth.model.MemberVO;


@Repository
public class AuthDaoImpl implements AuthDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.snaptag.auth.";
	
	@Override
	public MemberVO memberExist(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
		System.out.println("들어옴??@@@@@@@@@@@@@@@@@@@@@@@@" + memberVO.getMemberId() + " " + memberVO.getMemberPassword());
		
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("memberId", memberVO.getMemberId());
		map.put("memberPassword", memberVO.getMemberPassword());
		
		MemberVO sessionMemberVO = sqlSession.selectOne(namespace + "memberExist", map);
		
			
			
		return sessionMemberVO;
	}

	

}
