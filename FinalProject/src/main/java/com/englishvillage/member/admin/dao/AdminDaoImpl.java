package com.englishvillage.member.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.member.model.MemberFileDto;


@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.edu.member.admin.";
	
	//학생
	@Override
	public List<MemberFileDto> studentSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		List<MemberFileDto> memberList = 
				sqlSession.selectList(namespace + "studentSelectList"
				, map);
		
		return memberList;
	}

	@Override
	public int studentSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + "studentSelectTotalCount"
				, paramMap);
	}

	@Override
	public int studentSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		paramMap.put("no", no);
		
		return sqlSession.selectOne(namespace + "studentSelectCurPage", paramMap);
	}
	
	//튜터
	@Override
	public List<MemberFileDto> tutorSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		List<MemberFileDto> memberList = 
				sqlSession.selectList(namespace + "tutorSelectList"
				, map);
		
		return memberList;
	}

	@Override
	public int tutorSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + "tutorSelectTotalCount"
				, paramMap);
	}

	@Override
	public int tutorSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		paramMap.put("no", no);
		
		return sqlSession.selectOne(namespace + "tutorSelectCurPage", paramMap);
	}
	
	//문의
	@Override
	public List<MemberFileDto> questionSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		
		List<MemberFileDto> memberList = 
				sqlSession.selectList(namespace + "questionSelectList"
				, map);
		
		return memberList;
	}

	@Override
	public int questionSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + "questionSelectTotalCount"
				, paramMap);
	}

	@Override
	public int questionSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("searchOption", searchOption);
		paramMap.put("keyword", keyword);
		paramMap.put("no", no);
		
		return sqlSession.selectOne(namespace + "questionSelectCurPage", paramMap);
	}
	

}
