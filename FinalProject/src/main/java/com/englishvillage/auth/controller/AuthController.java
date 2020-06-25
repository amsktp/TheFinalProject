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
	
	@RequestMapping(value="/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String memberEmail, String memberPassword, HttpSession session, Model model) {
		log.info("*****Welcome LoginCtr!*****" + memberEmail + "," + memberPassword);
		
		String viewUrl = "";
		System.out.println("로그인 메서드 전");
		System.out.println(memberEmail + "      " + memberPassword);
		MemberDto memberDto = authService.memberExist(memberEmail, memberPassword);//넘겨주고 값을 받아서 memberDto에 저장한다.
		System.out.println("로그인 메서드 후");
		
		if(memberDto != null) {
			session.setAttribute("member", memberDto);//memberDto를 member변수로 담는다.
			
			viewUrl = "redirect:/home.do";
		} else {
			viewUrl = "redirect:/login.do";
			// 패일하면 세션에 안들어가고 로그인이 성공하면 세션에 들어가서 로그아웃할때까지가 세션이 유지되는 구간
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
