package com.englishvillage.member.student.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.QuestionBoardDto;
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

	@Override
	public int studentQuestionCount(int no) {
		// TODO Auto-generated method stub
		System.out.println("다오의 넘버"+no);
//		HashMap<String, Object> paramMap2 = new HashMap<String, Object>();
//		paramMap2.put("no", no);
//		return sqlSession.selectOne(namespace + "studentQuestionCount", paramMap2);
		return sqlSession.selectOne(namespace + "studentQuestionCount", no);
	}

	@Override
	public int questionSelectCurPage(int no) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("no", no);
			
		return sqlSession.selectOne(namespace 
				+ "memberSelectCurPage", paramMap);
	}

	@Override
	public List<QuestionBoardDto> questionSelectList(int no, int start, int end) {
		// TODO Auto-generated method stub

		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("start", start);
		map.put("end", end);
		
		List<QuestionBoardDto> qusetionList = 
				sqlSession.selectList(namespace + "questionSelectList", map);
		
		return qusetionList;
	}

	@Override
	public QuestionBoardDto QuestionSelect(int idx) {
		// TODO Auto-generated method stub
		System.out.println("다오로 넘어옴?"+idx);
		return sqlSession.selectOne(namespace + "QuestionSelect", idx);
	}

	@Override
	public int QuestionRevise(QuestionBoardDto questionBoardDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "QuestionRevise", questionBoardDto);
	}





	

}
