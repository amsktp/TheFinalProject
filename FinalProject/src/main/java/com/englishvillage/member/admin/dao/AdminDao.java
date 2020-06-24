package com.englishvillage.member.admin.dao;

import java.util.List;

import com.englishvillage.member.admin.model.MemberFileDto;



public interface AdminDao {
	
	//학생 목록
	public List<MemberFileDto> studentSelectList(String searchOption, 
			String keyword, int start, int end);
	public int studentSelectTotalCount(String searchOption
			, String keyword);
	public int studentSelectCurPage(String searchOption, String keyword, int no);
	
	//튜터 목록
	public List<MemberFileDto> tutorSelectList(String searchOption, 
			String keyword, int start, int end);
	public int tutorSelectTotalCount(String searchOption
			, String keyword);
	public int tutorSelectCurPage(String searchOption, String keyword, int no);
	
	//문의 목록
	public List<MemberFileDto> questionSelectList(String searchOption, 
			String keyword, int start, int end);
	public int questionSelectTotalCount(String searchOption
			, String keyword);
	public int questionSelectCurPage(String searchOption, String keyword, int no);
}

