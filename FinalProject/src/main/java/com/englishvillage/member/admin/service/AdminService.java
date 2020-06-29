package com.englishvillage.member.admin.service;

import java.util.List;
import java.util.Map;

import com.englishvillage.member.admin.model.MemberListDto;
import com.englishvillage.member.admin.model.QuestionBoardDto;

public interface AdminService {

	//학생 목록
	public List<MemberListDto> studentSelectList(String searchOption, 
			String keyword, int start, int end);
	public int studentSelectTotalCount(String searchOption
			, String keyword);
	public int studentSelectCurPage(String searchOption, String keyword, int no);
	public Map<String, Object> memberStudentSelectOne(int no);
	
	
	//튜터 목록
	public List<MemberListDto> tutorSelectList(String searchOption, 
				String keyword, int start, int end);
	public int tutorSelectTotalCount(String searchOption
				, String keyword);
	public int tutorSelectCurPage(String searchOption, String keyword, int no);
	public Map<String, Object> memberTutorSelectOne(int no);
	
	//문의 목록
	public List<QuestionBoardDto> questionSelectList(String searchOption, 
				String keyword, int start, int end);
	public int questionSelectTotalCount(String searchOption
				, String keyword);
	public int questionSelectCurPage(String searchOption, String keyword, int no);
	public Map<String, Object> questionSelectOne(int no);
	
}
