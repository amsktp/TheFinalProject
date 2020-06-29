package com.englishvillage.member.student.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;
import com.englishvillage.member.student.service.StudentService;

@Controller
public class StudentController {

	private static final Logger log = LoggerFactory.getLogger(StudentController.class);

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "myPage.do", method = {RequestMethod.GET})
	public String myPage(Locale locale, HttpSession session, Model model) {

		return "/member/student/info/studentMainPage";
	}

	@RequestMapping(value = "myInfo.do", method = { RequestMethod.GET })
	public String infoPage(Locale locale, HttpSession session, Model model) {
		log.info("Welcome myInfo.do! {} {}");
		System.out.println("세션초기값이다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ"+session.getAttribute("member"));
		MemberDto sessionMemberDto 
		= (MemberDto)session.getAttribute("member");
		
		System.out.println("일단 세션 만들기 성공"+sessionMemberDto);
		String userEmail = sessionMemberDto.getMemberEmail();
		
		Map<String, Object> map = studentService.SelectOne(userEmail);
		System.out.println("여긴 맵이야"+map);
		MemberFileDto memberFileDto = (MemberFileDto)map.get("MemberFileDto");
		System.out.println("넣을값"+ memberFileDto);
		model.addAttribute("memberFileDto", memberFileDto);
		
		return "/member/student/info/studentPrivateInfo";
	}

	@RequestMapping(value = "studentCheck.do", method = { RequestMethod.GET })
	public String infoPage(Model model) {
		log.info("Welcome studentCheck.do! {} {}");

		return "/member/student/info/studentCheckPassword";
	}

//	@RequestMapping(value = "update.do", method = RequestMethod.GET)
//	public String memberUpdate(int no, Model model) {
//
//		log.info("call studentUpdate! ", no);
//
//		Map<String, Object> map = studentService.memberSelect(no);
//		System.out.println("맵이다" + map);
//		MemberFileDto memberFileDto = (MemberFileDto) map.get("MemberFileDto");
//		System.out.println("memberFileDto다" + memberFileDto);
//		model.addAttribute("MemberFileDto", memberFileDto);
//		
//		return "/member/student/info/studentInfoRevise";
//	}
	
	@RequestMapping(value = "update.do", method = RequestMethod.GET)
	public String memberUpdate(HttpSession session, Model model) {
		
		MemberDto sessionMemberDto 
		= (MemberDto)session.getAttribute("member");
		
		System.out.println("일단 세션 만들기 성공2");
		String userEmail = sessionMemberDto.getMemberEmail();
		
		Map<String, Object> map = studentService.SelectOne(userEmail);
		System.out.println("여긴 맵이야2"+map);
		MemberFileDto memberFileDto = (MemberFileDto)map.get("MemberFileDto");
		System.out.println("넣을값2"+ memberFileDto);
		model.addAttribute("memberFileDto", memberFileDto);
		
		return "/member/student/info/studentInfoRevise";
	}
	
	// 회원수정
	@RequestMapping(value = "updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(HttpSession session, String memberPassword, Model model) {
		log.info("call memberUpdateCtr! {} :: {}", session + "패스워드" + memberPassword);
		int resultNum = 0;
		MemberDto sessionMemberDto 
		= (MemberDto)session.getAttribute("member");
		sessionMemberDto.setMemberPassword(memberPassword);
		System.out.println("업데이트에서 세션 만들기 성공"+sessionMemberDto);
		
		resultNum = studentService.memberUpdateOne(sessionMemberDto);
		
		System.out.println("업데이트 결과값"+resultNum);
		
		System.out.println("업데이트 완료 세션값"+session.getAttribute("member"));
//		if(resultNum != 0) {
//			MemberDto sessionMemberDto 
//				= (MemberDto)session.getAttribute("member");
//			System.out.println("@@@@@@@@@sessionMemberDto값은@@@@@@@@@@"+sessionMemberDto);
//			if(sessionMemberDto != null) {
//
//				if(sessionMemberDto.getMemberEmail().equals(memberFileDto.getMemberEmail())) {
//					System.out.println("세션 이메일 같음");
//
////					MemberFileDto newMemberFileDto = 
////							new MemberFileDto(memberFileDto.getMemberNo(), memberFileDto.getMemberName(), 
////									memberFileDto.getMemberEmail(), memberFileDto.getMemberPassword(), 
////									memberFileDto.getMemberGrade(), memberFileDto.getMemberPoint(), 
////									memberFileDto.getMemberCountry(), memberFileDto.getMemberGender(), 
////									memberFileDto.getMemberBirthDate());
//					
//					MemberDto newMemberDto = 
//							new MemberDto(MemberDto.getMemberNo(), MemberDto.getMemberName(), 
//									MemberDto.getMemberEmail(), MemberDto.getMemberPassword(), 
//									MemberDto.getMemberGrade(), MemberDto.getMemberPoint(), 
//									MemberDto.getMemberCountry(), MemberDto.getMemberGender(), 
//									MemberDto.getMemberBirthDate());
//
//					System.out.println("newMemberFileDto다"+newMemberFileDto);
//					System.out.println("삭제전"+session.getAttribute("member"));
//					
//					session.removeAttribute("member");
//					
//					System.out.println("삭제후"+session.getAttribute("member"));
//					
//					session.setAttribute("member", newMemberFileDto);
//					
//					System.out.println("추가후"+session.getAttribute("member"));
//				}
//				
//			}
//		}
		
//		return "redirect:/member/student/info/studentPrivateInfo";
//		return "redirect:/member/student/info/studentInfoRevise";
//		return "redirect:/myPage.do";
		return "redirect:/myInfo.do";
		
	}

	// 회원 삭제
	@RequestMapping(value="deleteCtr.do", method = RequestMethod.GET)
	public String memberDeleteCtr(int no, Model model) {
		
		log.info("call memberDeleteCtr! " + no);
		
		studentService.memberDeleteOne(no);
		
//		return "redirect:/member/list.do";
		return "/member/student/info/delete";
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
