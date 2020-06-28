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

import com.englishvillage.member.student.model.MemberDto;
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

	@RequestMapping(value = "update.do", method = RequestMethod.GET)
	public String memberUpdate(int no, Model model) {

		log.info("call studentUpdate! ", no);

		Map<String, Object> map = studentService.memberSelect(no);
		MemberDto memberDto = (MemberDto) map.get("MemberDto");
		model.addAttribute("MemberDto", memberDto);
		return "/member/student/info/studentInfoRevise";
	}
	
//	// 회원수정
//	@RequestMapping(value = "updateCtr.do", method = RequestMethod.POST)
//	public String memberUpdateCtr(HttpSession session, MemberFileDto memberFileDto, Model model) {
//		log.info("call memberUpdateCtr! {} :: {}", memberFileDto);
//		
//		int resultNum = 0;
//		
//		resultNum = studentService.memberUpdateOne(memberFileDto);
//		
//		if(resultNum != 0) {
//			MemberDto sessionMemberDto 
//				= (MemberDto)session.getAttribute("member");
//			System.out.println("sessionMemberDto값은"+sessionMemberDto);
//			if(sessionMemberDto != null) {
//				System.out.println("일단 널값아님");
//				System.out.println("앞"+sessionMemberDto.getMemberEmail()+"뒤"+memberFileDto.getEmail());
//				if(sessionMemberDto.getMemberEmail().equals(memberFileDto.getEmail())) {
//					System.out.println("세션 이메일 같음");
////					MemberDto newMemberDto = 
////						new MemberDto(memberDto.getNo()
////								, memberDto.getName()
////								, memberDto.getEmail());
//					MemberFileDto newMemberDto = 
//							new MemberFileDto(memberFileDto.getName(), memberFileDto.getEmail(), memberFileDto.getPassword(), memberFileDto.getGender(), memberFileDto.getCountry(), memberFileDto.get);
////					MemberDto newMemberDto = new MemberDto(MemberDto.get)
//					System.out.println("newMemberDto"+newMemberDto);
//					System.out.println("삭제전"+session.getAttribute("member"));
//					session.removeAttribute("member");
//					System.out.println("삭제후"+session.getAttribute("member"));
//					
//					session.setAttribute("member", newMemberDto);
//					System.out.println("추가후"+session.getAttribute("member"));
//				}
//				
//			}
//		}
//		
////		return "redirect:/member/student/info/studentPrivateInfo";
//		return "redirect:/member/student/info/studentInfoRevise";
//	}



	@RequestMapping(value = "myStudy.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyPage(Locale locale, Model model) {

		return "/member/student/info/studentStudyInfo";
	}

	@RequestMapping(value = "myQNA.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String qnaPage(Locale locale, Model model) {

		return "/member/student/qna/studentQnABoard";
	}

}
