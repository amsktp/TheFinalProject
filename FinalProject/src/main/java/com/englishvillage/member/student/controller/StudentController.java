package com.englishvillage.member.student.controller;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.englishvillage.member.student.model.MemberFileDto;
import com.englishvillage.member.student.service.StudentService;

@Controller
public class StudentController {

	private static final Logger log = LoggerFactory.getLogger(StudentController.class);

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "myPage.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String myPage(Locale locale, Model model) {

		return "/member/student/info/studentMainPage";
	}

	@RequestMapping(value = "myInfo.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String infoPage(Locale locale, Model model) {
		log.info("Welcome myInfo.do! {} {}");

//		Map<String, Object> map = studentService.memberSelect(no);

//		MemberDto memberDto = (MemberDto)map.get("memberDto");

		return "/member/student/info/studentPrivateInfo";
	}

	@RequestMapping(value = "studentCheck.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String infoPage(Model model) {
		log.info("Welcome studentCheck.do! {} {}");

		return "/member/student/info/studentCheckPassword";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.GET)
	public String memberUpdate(int no, Model model) {
		
		log.info("call studentUpdate! ", no);
		
		Map<String, Object> map = studentService.memberSelect(no);
		log.info("call studentUpdatestudentUpdate 통과! ", no);
		MemberFileDto MemberFileDto = (MemberFileDto)map.get("MemberFileDto");
		log.info("call MemberFileDto에 값넣기 성공! ", no);
		model.addAttribute("MemberFileDto", MemberFileDto);
		log.info("call 가버려ㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕㅕ! ", no);
		return "/member/student/info/studentInfoRevise";
	}

	@RequestMapping(value = "myStudy.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyPage(Locale locale, Model model) {

		return "/member/student/info/studentStudyInfo";
	}

	@RequestMapping(value = "myQNA.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String qnaPage(Locale locale, Model model) {

		return "/member/student/qna/studentQnABoard";
	}

}
