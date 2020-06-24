package com.englishvillage.member.student.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.englishvillage.member.student.service.StudentService;

@Controller
public class StudentController {

	private static final Logger log = 
		LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	private StudentService studentService;

}