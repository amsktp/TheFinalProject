package com.englishvillage.auth.service;

import com.englishvillage.auth.model.MemberDto;

public interface AuthService {

	MemberDto memberExist(String email, String password);


}
