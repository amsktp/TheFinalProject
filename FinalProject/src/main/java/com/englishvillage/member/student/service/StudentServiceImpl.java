package com.englishvillage.member.student.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.admin.model.QuestionBoardDto;
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


//	@Override
//	public void memberDeleteOne(String userEmail) {
//		// TODO Auto-generated method stub
//		studentDao.memberDeleteOne(userEmail);
//	}


	@Override
	public int memberDeleteOne(int no) {
		return studentDao.memberDeleteOne(no);
	}


	@Override
	public int studentQuestionCount(int no) {
		// TODO Auto-generated method stub
		log.info("Welcome studentQuestionCount! {}", no);
		System.out.println("dddddddddddddddddddddddddddddddddddd");
		return studentDao.studentQuestionCount(no);
	}


	@Override
	public int questionSelectCurPage(int no) {
		// TODO Auto-generated method stub
		return studentDao.questionSelectCurPage(no);
	}


	@Override
	public List<QuestionBoardDto> questionSelectList(int start, int end) {
		// TODO Auto-generated method stub
		
		List<QuestionBoardDto> qusetionList = 
				studentDao.questionSelectList(start, end);
		
		return qusetionList;
	}


	@Override
	public Map<String, Object> QuestionSelect(int idx) {
		// TODO Auto-generated method stub
		System.out.println("asdddddddddddddddddddddddddddddddd");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		System.out.println(resultMap);
		QuestionBoardDto questionBoardDto = studentDao.QuestionSelect(idx);
		System.out.println("questionBoardDto는는ㅁㅇㅁㄴㅇㅁㄴㅇㅁ서비스ㄴㅇ"+questionBoardDto);
		resultMap.put("QuestionBoardDto", questionBoardDto);
		System.out.println("resultMap는는ㅁㅇㅁㄴㅇㅁㄴㅇㅁ리설트맵서비스ㄴㅇ"+resultMap.get("QuestionBoardDto"));
		
		return resultMap;
	}



}
