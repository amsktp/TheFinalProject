package com.englishvillage.member.student.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.englishvillage.member.student.service.StudentService;

@Controller
public class StudentController {

	private static final Logger log = 
		LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value="myPage.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String home(Locale locale, Model model) {
		
		return "/member/student/info/studentMainPage";
	}

}
