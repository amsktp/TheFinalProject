package com.englishvillage.member.student.dao;

import com.englishvillage.member.student.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;

public interface StudentDao {

	MemberDto memberSelect(int no);

	int memberUpdateOne(MemberFileDto memberFileDto);

	
	}


