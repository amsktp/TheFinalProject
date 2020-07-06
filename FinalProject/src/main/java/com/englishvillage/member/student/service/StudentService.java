package com.englishvillage.member.student.service;

import java.util.List;
import java.util.Map;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.QuestionBoardDto;

public interface StudentService {


	Map<String, Object> SelectOne(String userEmail);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);

	public int studentQuestionCount(int no);

	public int studentStudyCount(int no);

	public int questionSelectCurPage(int no, int idx);

	public List<QuestionBoardDto> questionSelectList(int no, int start, int end);

	public Map<String, Object> QuestionSelect(int idx);

	public int QuestionRevise(QuestionBoardDto questionBoardDto);

	public int QuestionAdd(QuestionBoardDto questionBoardDto);

	public int studentStudyInfo(int no);

	public List<QuestionBoardDto> studySelectList(int no, int start, int end);


//	public void memberDeleteOne(String userEmail);



}
