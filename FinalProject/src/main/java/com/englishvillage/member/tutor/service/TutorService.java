package com.englishvillage.member.tutor.service;

import java.util.List;

import com.englishvillage.member.tutor.model.TutorCommentDto;
import com.englishvillage.member.tutor.model.TutorDto;

public interface TutorService {

	public List<TutorDto> getTutorList();

	public int tutorSelectTotalCount(String countrySearch, int ageSearch, String genderSearch, String keyword);

	public List<TutorDto> getTutorList(String countrySearch, int ageSearch, String genderSearch, String keyword,
			int start, int end);

	public int tutorSelectCurPage(String countrySearch, int ageSearch, String genderSearch, String keyword, int no);

	public int tutorRegister(TutorDto tutorDto);

	public int tutorUpdateGrade(int memberNo);

	public TutorDto getTutorInfo(int no);

	public TutorDto getTutorGrade(int no);

	public TutorDto getTutorIntroduce(int tutorNo);

	public List<TutorCommentDto> getTutorComments(int tutorNo);

	public int writeComment(TutorCommentDto tutorCommentDto);

	public int modifyComment(TutorCommentDto tutorCommentDto);

	public int removeComment(TutorCommentDto tutorCommentDto);


}
