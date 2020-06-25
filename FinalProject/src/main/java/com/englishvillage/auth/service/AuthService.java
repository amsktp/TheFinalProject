package com.englishvillage.auth.service;

import com.englishvillage.auth.model.MemberDto;

public interface AuthService {

	public MemberDto memberExist(String memberEmail, String memberPassword);

	public void memberInsertOne(MemberDto memberDto);


}
