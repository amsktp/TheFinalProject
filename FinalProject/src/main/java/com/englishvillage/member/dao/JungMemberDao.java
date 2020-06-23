package com.englishvillage.member.dao;

import java.util.List;
import java.util.Map;

import com.englishvillage.member.model.MemberDto;
import com.englishvillage.member.model.MemberFileDto;


public interface JungMemberDao {

	public List<MemberFileDto> memberSelectList(String searchOption, 
			String keyword, int start, int end);
	public MemberDto memberExist(String email, String password);
	public void memberInsertOne(MemberDto memberDto);
	public MemberDto memberSelectOne(int no);
	public int memberUpdateOne(MemberDto memberDto);
	public int memberDeleteOne(int no);
	
	public int memberSelectTotalCount(String searchOption
			, String keyword);
	
	public void insertFile(Map<String, Object> map);
	
	public List<Map<String, Object>> fileSelectList(int no);
	
	public Map<String, Object> fileSelectStoredFileName(int no);
	public int fileDelete(int parentSeq);
	public int memberSelectCurPage(String searchOption, String keyword, int no);
	
}

