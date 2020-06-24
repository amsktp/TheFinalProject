package com.englishvillage.member.tutor.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.englishvillage.member.tutor.service.TutorService;

@Controller
public class TutorController {

	private static final Logger log = 
		LoggerFactory.getLogger(TutorController.class);
	
	@Autowired
	private TutorService tutorService;
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String main(HttpSession session, Model model) {
		log.info("home 입니다. GET");
		
		return "home/tutorList";
	}
}
