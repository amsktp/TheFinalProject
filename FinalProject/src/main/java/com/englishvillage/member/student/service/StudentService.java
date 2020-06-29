package com.englishvillage.member.student.service;

import java.util.Map;

import com.englishvillage.auth.model.MemberDto;

public interface StudentService {


	Map<String, Object> SelectOne(String userEmail);

	int memberUpdateOne(MemberDto sessionMemberDto);

	public int memberDeleteOne(int no);


}
