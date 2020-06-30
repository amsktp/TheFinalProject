package com.englishvillage.member.tutor.dao;

import java.util.List;

import com.englishvillage.member.tutor.model.TutorDto;

public interface TutorDao {

	public List<TutorDto> getTutorList();

	public int tutorSelectTotalCount(String countrySearch, String ageSearch, String genderSearch, String keyword);

	public TutorDto getTutorInfo(int no);

	public TutorDto getTutorGrade(int no);
}

