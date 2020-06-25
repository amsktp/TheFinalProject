package com.englishvillage.member.tutor.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.englishvillage.member.tutor.model.TutorDto;


@Repository
public class TutorDaoImpl implements TutorDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace = "com.englishvillage.member.tutor.";

	@Override
	public List<TutorDto> getTutorList() {
		// TODO Auto-generated method stub
		
		List<TutorDto> tutorDtoList = sqlSession.selectList(namespace + "getTutorList");
		
		return tutorDtoList;
	}

	@Override
	public int tutorSelectTotalCount(String countrySearch, String ageSearch, String genderSearch, String keyword) {
		// TODO Auto-generated method stub
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("countrySearch", countrySearch);
		map.put("ageSearch", ageSearch);
		map.put("genderSearch", genderSearch);
		map.put("keyword", keyword);
		
		int result = sqlSession.selectOne(namespace + "tutorSelectTotalCount", map);
		
		return result;
	}
	

}
