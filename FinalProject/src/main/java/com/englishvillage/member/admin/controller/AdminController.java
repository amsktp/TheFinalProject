package com.englishvillage.member.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.englishvillage.member.admin.service.AdminService;

@Controller
public class AdminController {

	private static final Logger log = 
		LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;

}
