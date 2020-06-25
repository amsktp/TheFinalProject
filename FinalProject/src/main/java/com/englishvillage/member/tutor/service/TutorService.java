package com.englishvillage.member.tutor.service;

import java.util.List;

import com.englishvillage.member.tutor.model.TutorDto;

public interface TutorService {

	public List<TutorDto> getTutorList();

	public int tutorSelectTotalCount(String countrySearch, String ageSearch, String genderSearch, String keyword);


}
