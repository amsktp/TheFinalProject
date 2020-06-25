package com.englishvillage.auth.dao;

import com.englishvillage.auth.model.MemberDto;

public interface AuthDao {

	public MemberDto memberExist(String memberEmail, String memberPassword);

	public void memberInsertOne(MemberDto memberDto);
}

