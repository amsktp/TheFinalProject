package com.snaptag.auth.dao;

import com.snaptag.auth.model.MemberVO;

public interface AuthDao {

	public MemberVO memberExist(MemberVO memberVO);

}

