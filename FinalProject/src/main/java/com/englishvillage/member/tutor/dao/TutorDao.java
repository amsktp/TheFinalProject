package com.englishvillage.member.tutor.dao;

import java.util.List;

import com.englishvillage.member.tutor.model.TutorDto;

public interface TutorDao {

	public List<TutorDto> getTutorList();

	public int tutorSelectTotalCount(String countrySearch, int ageSearch, String genderSearch, String keyword);

	public List<TutorDto> getTutorList(String countrySearch, int ageSearch, String genderSearch, String keyword,
			int start, int end);

	public int tutorSelectCurPage(String countrySearch, int ageSearch, String genderSearch, String keyword, int no);

	public int tutorRegister(TutorDto tutorDto);

	public int tutorUpdateGrade(int memberNo);

	public TutorDto getTutorInfo(int no);

	public TutorDto getTutorGrade(int no);

	public TutorDto getTutorPwd(String pwd);

	public int updateTutor(TutorDto tutorDto);

	public int updatePwd(TutorDto tutorDto);

	public int deleteMember(int no);

	public TutorDto boardSelect(int no);

	
}

