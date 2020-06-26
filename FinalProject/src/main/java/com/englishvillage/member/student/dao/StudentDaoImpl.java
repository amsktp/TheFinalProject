package com.englishvillage.member.student.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.member.student.model.MemberFileDto;


@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.englishvillage.member.student.";

	@Override
	public MemberFileDto memberSelect(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "memberSelect", no);
	}
	

}
