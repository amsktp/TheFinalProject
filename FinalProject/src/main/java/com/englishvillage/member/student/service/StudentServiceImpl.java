package com.englishvillage.member.student.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.dao.StudentDao;
import com.englishvillage.member.student.model.MemberFileDto;
import com.englishvillage.util.FileUtils;

@Service
public class StudentServiceImpl implements StudentService {

	private static final Logger log = LoggerFactory.getLogger(StudentServiceImpl.class);

	@Autowired
	public StudentDao studentDao;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public Map<String, Object> SelectOne(String userEmail) {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		MemberFileDto memberFileDto = studentDao.SelectOne(userEmail);
		
		resultMap.put("MemberFileDto", memberFileDto);
		
		return resultMap;
	}


	@Override
	public int memberUpdateOne(MemberDto sessionMemberDto) {
		// TODO Auto-generated method stub
		int resultNum = 0;
		resultNum= studentDao.memberUpdateOne(sessionMemberDto);
		System.out.println("데이터베이스 빠져나옴"+resultNum);
		return resultNum;
	}


	@Override
	public int memberDeleteOne(int no) {
		// TODO Auto-generated method stub
		return studentDao.memberDeleteOne(no);
	}

}
