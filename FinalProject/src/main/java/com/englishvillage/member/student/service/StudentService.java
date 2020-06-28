package com.englishvillage.member.student.service;

import java.util.Map;

import com.englishvillage.member.student.model.MemberFileDto;

public interface StudentService {

	Map<String, Object> memberSelect(int no);

	int memberUpdateOne(MemberFileDto memberFileDto);


}
