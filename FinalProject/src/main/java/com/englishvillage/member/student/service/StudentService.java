package com.englishvillage.member.student.service;

import java.util.List;
import java.util.Map;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.admin.model.QuestionBoardDto;

public interface StudentService {


	Map<String, Object> SelectOne(String userEmail);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);

	public int studentQuestionCount(int no);

	public int questionSelectCurPage(int no);

	public List<QuestionBoardDto> questionSelectList(int start, int end);

	public Map<String, Object> QuestionSelect(int idx);

//	public void memberDeleteOne(String userEmail);



}
