package com.englishvillage.member.student.dao;

import java.util.List;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.QuestionBoardDto;
import com.englishvillage.member.student.model.MemberFileDto;

public interface StudentDao {

	public MemberFileDto SelectOne(int no);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);

	public int studentQuestionCount(int no);

	public int questionSelectCurPage(int no, int idx);

	public List<QuestionBoardDto> questionSelectList(int no, int start, int end);

	public QuestionBoardDto QuestionSelect(int no, int idx);

	public int QuestionRevise(QuestionBoardDto questionBoardDto);

	public int QuestionAdd(QuestionBoardDto questionBoardDto);

	public int studentStudyInfo(int no);

	public int studentStudyCount(int no);

	public List<QuestionBoardDto> studySelectList(int no, int start, int end);

	public int buyPoint(int price, int no);

	}


