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
	public int tutorSelectTotalCount(String countrySearch, int ageSearch, String genderSearch, String keyword) {
		// TODO Auto-generated method stub
		
		System.out.println("들어온다고 난 믿어");
		int result = tutorDao.tutorSelectTotalCount(countrySearch, ageSearch, genderSearch, keyword);
				
		return result;
	}

	@Override
	public TutorDto getTutorInfo(int no) {
		// TODO Auto-generated method stub
		
		TutorDto tutorDto = tutorDao.getTutorInfo(no);
		
		return tutorDto;
	}
	
	@Override
	public TutorDto getTutorGrade(int no) {
		// TODO Auto-generated method stub
		
		TutorDto tutorDto = tutorDao.getTutorGrade(no);
		
		return tutorDto;
	}

	@Override
	public int updateTutor(TutorDto tutorDto) {
		// TODO Auto-generated method stub
		
		return tutorDao.updateTutor(tutorDto);
	}

	@Override
	public TutorDto getTutorPwd(String pwd) {
		// TODO Auto-generated method stub
		
		TutorDto tutorDto = tutorDao.getTutorPwd(pwd);
		
		return tutorDto;
	}

	@Override
	public int updatePwd(TutorDto tutorDto) {
		// TODO Auto-generated method stub
		
		return tutorDao.updatePwd(tutorDto);
	}
	
	@Override
	public int deleteMember(int no) {
		// TODO Auto-generated method stub
				
		return tutorDao.deleteMember(no);
	}
	
	
	
	

	@Override
	public List<TutorDto> getTutorList(String countrySearch, int ageSearch, String genderSearch, String keyword,
			int start, int end) {
		// TODO Auto-generated method stub
		
		List<TutorDto> tutorDtoList = tutorDao.getTutorList( countrySearch,  ageSearch,  genderSearch,  keyword,
				 start,  end);
		
		return tutorDtoList;
	}

	@Override
	public int tutorSelectCurPage(String countrySearch, int ageSearch, String genderSearch, String keyword,
			int no) {
		// TODO Auto-generated method stub
		return tutorDao.tutorSelectCurPage(countrySearch,  ageSearch,  genderSearch,  keyword, no);
		
	}

	@Override
	public int tutorRegister(TutorDto tutorDto) {
		// TODO Auto-generated method stub
		
		return tutorDao.tutorRegister(tutorDto);
		
	}

	@Override
	public int tutorUpdateGrade(int memberNo) {
		// TODO Auto-generated method stub
		return tutorDao.tutorUpdateGrade(memberNo);
	}
	
	
}
