package com.snaptag.auth.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.snaptag.auth.model.MemberVO;
import com.snaptag.auth.service.AuthService;

@Controller
public class AuthController {

	private static final Logger log = LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private AuthService authService;
	
	  
	@RequestMapping(value="/admin/login.do", method=RequestMethod.GET)
	public String login() {
		log.info("@@@@@@@@@@@@@@@@@@/admin/login");
		
		return "auth/login";
	}
	
	@RequestMapping(value="/admin/loginCtr.do", method=RequestMethod.POST)
	public String loginCtr(MemberVO memberVO, HttpSession session, Model model) {
		log.info("@@@@@@@@@@@@@@@@@@/admin/loginCtr");
		
		String viewUrl = "";
		
		
		
		MemberVO sessionMemberVO = authService.memberExist(memberVO);
		
		if(sessionMemberVO != null) {
			session.setAttribute("member", memberVO);
			
				viewUrl = "redirect:/admin/dataManagement.do";

		} else {
			viewUrl = "redirect:/admin/login.do";
		}
		
		return viewUrl;
	}
	
}
