package com.englishvillage.member.tutor.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.englishvillage.member.tutor.service.TutorService;

@Controller
public class TutorController {

	private static final Logger log = 
		LoggerFactory.getLogger(TutorController.class);
	
	@Autowired
	private TutorService tutorService;

}
