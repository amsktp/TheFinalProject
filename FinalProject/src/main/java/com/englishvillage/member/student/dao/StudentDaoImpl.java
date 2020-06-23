package com.englishvillage.member.student.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.member.";
	

}
