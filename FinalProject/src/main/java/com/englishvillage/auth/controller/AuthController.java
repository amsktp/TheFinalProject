package com.englishvillage.auth.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.auth.service.AuthService;

@Controller
public class AuthController {

	private static final Logger log = 
		LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private AuthService authService;
	
	  @Autowired
	  private JavaMailSender mailSender;
	  
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		log.info("*****Welcome Login!*****");
		
		return "auth/login";
	}
	
	@RequestMapping(value="/loginCtr.do", method=RequestMethod.POST)
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

	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session, Model model){
		log.info("*****Welcome Logout!*****");
		
		session.invalidate();
		
		return "redirect:/login.do";
	}
	
	@RequestMapping(value="commonRegister.do", method=RequestMethod.GET)
	public String commonRegister(Model model) {
		log.info("*****Welcome Register!*****");
		
		return "auth/commonRegister";
	}
	 
	@RequestMapping(value="commonRegisterCtr.do", method={RequestMethod.POST, RequestMethod.GET})
	public String commonRegisterCtr(MemberDto memberDto, String birthDate, Model model) throws ParseException {
		log.info("*****commonRegister_ctr!*****"+ memberDto); 
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date parseDate = simpleDateFormat.parse(birthDate);
		memberDto.setMemberBirthDate(parseDate);
		
		authService.memberInsertOne(memberDto);
		
		return "redirect:/commonRegisterComplete.do";
	} 
	
	@RequestMapping(value="/commonRegisterComplete.do", method=RequestMethod.GET)
	public String commonRegisterComplete() {
		log.info("*****Welcome CommonRegisterComplete!*****");
		
		return "auth/commonRegisterComplete"; // jsp 페이지로 이동
	} 
	
	@RequestMapping(value="/findPassword.do", method=RequestMethod.GET)
	public String findPassword() {
		log.info("*****Welcome findPassword!*****");
		
		return "auth/findPassword";
	} 
	
	@RequestMapping(value="/findPasswordCtr.do", method=RequestMethod.POST)
	public String findPasswordCtr(String memberName, String memberEmail, 
			String memberBirthDate, HttpSession session, Model model) throws Exception {
		log.info("*****Welcome findPasswordCtr!*****");
		System.out.println(memberName + memberEmail + memberBirthDate );
		
		String viewUrl = "";
		MemberDto memberDto = authService.memberFindPassword(memberName, memberEmail, memberBirthDate);
		
		session.setAttribute("memberDto", memberDto);
		if(memberDto != null) {
			viewUrl = "redirect:/findPassowrdComplete.do";
		} else {
			viewUrl = "redirect:/findPassword.do";
		}
		return viewUrl;
		 
	} 
	
	@RequestMapping(value="/findPassowrdComplete.do", method=RequestMethod.GET)
	public String findPasswordComplete( Model model, HttpSession session) {
		log.info("*****Welcome findPasswordComplete!*****");
		MemberDto memberDto = (MemberDto)session.getAttribute("memberDto");
		
		session.invalidate();
		
		model.addAttribute("memberDto", memberDto);
		
		return "auth/findPasswordComplete";
	} 
	
	// mailSending 코드
	@RequestMapping(value = "/authSendMailCtr.do", method=RequestMethod.POST)
	  public String mailSending(HttpServletRequest request, String memberEmail
			  ,@RequestParam(defaultValue = "") String title
			  ,@RequestParam(defaultValue ="") String content) {
	   
	    String setfrom = "javacatch5@gmail.com";
	    
	    	title = "인증번호 입니다.";
	    	content = "인증번호는 5325 입니다.";
	    	
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper 
	                        = new MimeMessageHelper(message, true, "UTF-8");
	 
	      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(memberEmail); // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText(content);  // 메일 내용
	     
	      mailSender.send(message);
	      
	    } catch(Exception e){
	      System.out.println(e);
	    }
	   
	    return "redirect:/auth/mailCtr";
	  }
}
