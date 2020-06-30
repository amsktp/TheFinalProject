package com.englishvillage.member.tutor.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.tutor.model.TutorDto;
import com.englishvillage.member.tutor.service.TutorService;

@Controller
public class TutorController {

	private static final Logger log = 
		LoggerFactory.getLogger(TutorController.class);
	
	@Autowired
	private TutorService tutorService;
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String main(@RequestParam(defaultValue = "1") 
						int curPage
						, @RequestParam(defaultValue = "0") int no
						, @RequestParam(defaultValue = "all") String countrySearch
						, @RequestParam(defaultValue = "all") String ageSearch
						, @RequestParam(defaultValue = "all") String genderSearch
						, @RequestParam(defaultValue = "") String keyword
						, Model model) {
		
		log.info("home 입니다. GET");
		
//		int totalCount = tutorService.tutorSelectTotalCount(countrySearch, ageSearch, genderSearch, keyword);
		
//		System.out.println("totalCount = " + totalCount);
		
		List<TutorDto> tutorDtoList = tutorService.getTutorList();
		
		model.addAttribute("tutorDtoList", tutorDtoList);
		
		return "home/tutorList";
	}
	
	@RequestMapping(value = "/tutorMainPage.do", method = RequestMethod.GET)
	public String tutorMainPage(HttpSession session, Model model) {
		log.info("tutorMainPage 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");
		
		int no = sessionTutorDto.getMemberNo();
		
		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		model.addAttribute("tutorDto", tutorDto);
		
		return "member/tutor/info/tutorMainPage";
	}
	
	@RequestMapping(value = "/tutorClassRoom.do", method = RequestMethod.GET)
	public String tutorClassRoom(HttpSession session, Model model) {
		log.info("tutorClassRoom 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");
		
		int no = sessionTutorDto.getMemberNo();
		
		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		model.addAttribute("tutorDto", tutorDto);
		
		return "member/tutor/info/tutorClassRoom";
	}
	
	@RequestMapping(value = "/tutorIntroduce.do", method = RequestMethod.GET)
	public String tutorIntroduce(HttpSession session, Model model) {
		log.info("tutorIntroduce 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		TutorDto tutorDtoGrade = tutorService.getTutorGrade(no);
		
		model.addAttribute("tutorDto", tutorDto);
		model.addAttribute("tutorDtoGrade", tutorDtoGrade);
		
		return "member/tutor/info/tutorIntroduce";
	}
	
	@RequestMapping(value = "/tutorIntroduceRevise.do", method = RequestMethod.GET)
	public String tutorIntroduceRevise(HttpSession session, Model model) {
		log.info("tutorIntroduceRevise 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		model.addAttribute("tutorDto", tutorDto);

		return "member/tutor/info/tutorIntroduceRevise";
	}
}
