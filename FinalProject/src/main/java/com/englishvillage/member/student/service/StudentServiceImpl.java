package com.englishvillage.member.student.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.student.model.MemberFileDto;
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

	@Override
	public Map<String, Object> memberSelect(int no) {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = new HashMap<String, Object>();
	      
		MemberFileDto MemberFileDto = studentDao.memberSelect(no);
	      
	      resultMap.put("MemberFileDto", MemberFileDto);
	      
	      return resultMap;
	}
	
	
}
