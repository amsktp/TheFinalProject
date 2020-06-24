package com.englishvillage.auth.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.auth.service.AuthService;

@Controller
public class AuthController {

	private static final Logger log = 
		LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String  login(HttpSession session, Model model) {
		log.info("*****Welcome Login!*****");
		
		return "auth/login";
	}
	
	@RequestMapping(value="/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password, HttpSession session, Model model) {
		log.info("*****Welcome LoginCtr!*****" + email + "," + password);
		
		String viewUrl = "";
		
		MemberDto memberDto = authService.memberExist(email, password);
		
		if(memberDto != null) {
			session.setAttribute("member", memberDto);
			
//			viewUrl = "redirect:/"
		} else {
//			viewUrl = "/auth/LoginFail";
		}
		
		return viewUrl;
	}

	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session, Model model){
		log.info("Welcome logout");
		
		session.invalidate();
		
		return "redirect:/login.do";
	}
	
}
