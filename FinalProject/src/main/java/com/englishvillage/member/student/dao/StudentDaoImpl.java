package com.englishvillage.member.student.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;


@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.englishvillage.";

	@Override
	public MemberFileDto SelectOne(String userEmail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "SelectOne", userEmail);
	}

	@Override
	public int memberUpdateOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberUpdateOne", memberDto);
	}

//	@Override
//	public int memberDeleteOne(int no) {
//		// TODO Auto-generated method stub
//		return sqlSession.delete(namespace + "memberDeleteOne", no);
//	}

//	@Override
//	public void memberDeleteOne(String userEmail) {
//		// TODO Auto-generated method stub
//		return sqlSession.delete(namespace + "memberDeleteOne", userEmail);
//	}

	@Override
	public int memberDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace + "memberDeleteOne", no);
	}





	

}
