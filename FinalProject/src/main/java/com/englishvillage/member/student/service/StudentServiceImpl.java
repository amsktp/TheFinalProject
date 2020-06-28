package com.englishvillage.member.student.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.englishvillage.member.student.dao.StudentDao;
import com.englishvillage.member.student.model.MemberDto;
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
	public Map<String, Object> memberSelect(int no) {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = new HashMap<String, Object>();

		MemberDto memberDto = studentDao.memberSelect(no);

		resultMap.put("MemberDto", memberDto);

		return resultMap;
	}

	@Override
	public int memberUpdateOne(MemberFileDto memberFileDto) {
		int resultNum = 0;

		try {
			resultNum = studentDao.memberUpdateOne(memberFileDto);
System.out.println("데이터베이스 빠져나옴"+resultNum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}

		return resultNum;
	}
}
