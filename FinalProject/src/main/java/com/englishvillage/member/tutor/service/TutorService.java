package com.englishvillage.member.tutor.service;

import java.util.List;

import com.englishvillage.member.tutor.model.TutorDto;

public interface TutorService {

	public List<TutorDto> getTutorList();

	public int tutorSelectTotalCount(String countrySearch, int ageSearch, String genderSearch, String keyword);

	public List<TutorDto> getTutorList(String countrySearch, int ageSearch, String genderSearch, String keyword,
			int start, int end);

	public int tutorSelectCurPage(String countrySearch, int ageSearch, String genderSearch, String keyword, int no);


}
