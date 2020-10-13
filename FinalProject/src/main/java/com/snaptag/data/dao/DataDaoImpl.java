package com.snaptag.data.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class DataDaoImpl implements DataDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.snaptag.data.";
	

	

}
