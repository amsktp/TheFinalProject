package com.englishvillage.member.admin.dao;

import java.util.List;

import com.englishvillage.member.admin.model.MemberListDto;



public interface AdminDao {
	
	//학생 목록
	public List<MemberListDto> studentSelectList(String searchOption, 
			String keyword, int start, int end);
	public int studentSelectTotalCount(String searchOption
			, String keyword);
	public int memberSelectCurPage(String searchOption, String keyword, int no);
	
	//튜터 목록
	public List<MemberListDto> tutorSelectList(String searchOption, 
			String keyword, int start, int end);
	public int tutorSelectTotalCount(String searchOption
			, String keyword);
	public int tutorSelectCurPage(String searchOption, String keyword, int no);
	
	//문의 목록
	public List<MemberListDto> questionSelectList(String searchOption, 
			String keyword, int start, int end);
	public int questionSelectTotalCount(String searchOption
			, String keyword);
	public int questionSelectCurPage(String searchOption, String keyword, int no);
}

