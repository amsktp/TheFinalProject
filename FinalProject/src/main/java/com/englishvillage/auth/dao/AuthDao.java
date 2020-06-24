package com.englishvillage.auth.dao;

import com.englishvillage.auth.model.MemberDto;

public interface AuthDao {

	MemberDto memberExist(String email, String password);
}

