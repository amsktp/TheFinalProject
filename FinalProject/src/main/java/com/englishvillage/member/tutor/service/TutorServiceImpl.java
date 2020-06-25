package com.englishvillage.member.tutor.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.tutor.dao.TutorDao;
import com.englishvillage.member.tutor.model.TutorDto;
import com.englishvillage.util.FileUtils;

@Service
public class TutorServiceImpl implements TutorService{

	private static final Logger log = 
			LoggerFactory.getLogger(TutorServiceImpl.class);
	
	@Autowired
	public TutorDao tutorDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;

	@Override
	public List<TutorDto> getTutorList() {
		// TODO Auto-generated method stub
		
		
		List<TutorDto> tutorDtoList = tutorDao.getTutorList();
		
		
		return tutorDtoList;
	}

	@Override
	public int tutorSelectTotalCount(String countrySearch, String ageSearch, String genderSearch, String keyword) {
		// TODO Auto-generated method stub
		
		int result = tutorDao.tutorSelectTotalCount(countrySearch, ageSearch, genderSearch, keyword);
				
		return result;
	}
	
	
}
