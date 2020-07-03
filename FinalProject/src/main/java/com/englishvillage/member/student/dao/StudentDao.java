package com.englishvillage.member.student.dao;

import java.util.List;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.QuestionBoardDto;
import com.englishvillage.member.student.model.MemberFileDto;

public interface StudentDao {

	MemberFileDto SelectOne(String userEmail);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);

	public int studentQuestionCount(int no);

	public int questionSelectCurPage(int no);

	public List<QuestionBoardDto> questionSelectList(int no, int start, int end);

	public QuestionBoardDto QuestionSelect(int idx);

	public int QuestionRevise(QuestionBoardDto questionBoardDto);

//	public void memberDeleteOne(String userEmail);




	
	}


