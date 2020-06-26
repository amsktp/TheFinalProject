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
	public String login() {
		log.info("*****Welcome Login!*****");
		
		return "auth/login";
	}
	
	@RequestMapping(value = "/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String memberEmail, String memberPassword, HttpSession session, Model model) {
		log.info("*****Welcome LoginCtr!*****" + memberEmail + "," + memberPassword);
		
		String viewUrl = "";
		MemberDto memberDto = authService.memberExist(memberEmail, memberPassword);
		// 이메일과 비밀번호의 변수를 넘겨주고 값을 받아와서 memberDto에 저장한다.
		
		if(memberDto != null) {
			session.setAttribute("member", memberDto);
			// memberDto를 member변수로 담는다.
			viewUrl = "redirect:/home.do";
		} else {
			viewUrl = "redirect:/login.do";
			// 로그인 실패하면 세션에 들어가지 못하고, 로그인 성공하면 세션에 들어가서 로그아웃할때까지 세션이 유지됨
		}
		return viewUrl;
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model){
		log.info("*****Welcome Logout!*****");
		
		session.invalidate();
		
		return "redirect:/login.do";
	}
	
	@RequestMapping(value = "/auth/commonRegister.do")
	public String commonRegister(Model model) {
		log.info("*****Welcome Register!*****");
		
		return "commonRegister";
	}
	 
	@RequestMapping(value = "/auth/commonRegisterCtr.do", method = {RequestMethod.POST})
	public String commonRegister(MemberDto memberDto, Model model) {
		log.info("call commonRegister_ctr! {}", memberDto);
		
		authService.memberInsertOne(memberDto);
		
		return "redirect:/commonRegisterComplete.do";
	} 
	
	
	
	
}
