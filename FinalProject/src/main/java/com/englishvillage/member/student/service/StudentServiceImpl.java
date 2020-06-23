package com.englishvillage.member.student.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.student.dao.StudentDao;
import com.englishvillage.util.FileUtils;

@Service
public class StudentServiceImpl implements StudentService{

	private static final Logger log = 
			LoggerFactory.getLogger(StudentServiceImpl.class);
	
	@Autowired
	public StudentDao studentDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	
}
