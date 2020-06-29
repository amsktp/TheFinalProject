package com.englishvillage.member.student.dao;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;

public interface StudentDao {

	MemberFileDto SelectOne(String userEmail);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);

//	public void memberDeleteOne(String userEmail);




	
	}


