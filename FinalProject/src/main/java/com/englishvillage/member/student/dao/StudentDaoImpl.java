package com.englishvillage.member.student.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.member.student.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;


@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.englishvillage.";

	@Override
	public MemberDto memberSelect(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "memberSelect", no);
	}

	@Override
	public int memberUpdateOne(MemberFileDto memberFileDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberUpdateOne", memberFileDto);
	}




	

}
