package com.englishvillage.member.tutor.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.englishvillage.util.Paging;

@Controller
public class TutorController {

	private static final Logger log = 
		LoggerFactory.getLogger(TutorController.class);
	
	@Autowired
	private TutorService tutorService;
	
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(@RequestParam(defaultValue = "1") 
						int curPage
						, @RequestParam(defaultValue = "0") int no
						, @RequestParam(defaultValue = "all") String countrySearch
						, @RequestParam(defaultValue = "0") int ageSearch
						, @RequestParam(defaultValue = "all") String genderSearch
						, @RequestParam(defaultValue = "") String keyword
						, Model model) {
		
		log.info("home 입니다. GET");
		
		System.out.println("no" + no);
		System.out.println("countrySearch" + countrySearch);
		System.out.println("ageSearch" + ageSearch);
		System.out.println("genderSearch" + genderSearch);
		System.out.println("keyword" + keyword);
		
		int totalCount = tutorService.tutorSelectTotalCount(countrySearch, ageSearch, genderSearch, keyword);
		
		System.out.println("totalCount = " + totalCount);
		
		if(no != 0) {
			curPage
				= tutorService.tutorSelectCurPage(countrySearch, ageSearch, genderSearch, keyword, no);
		}
		
		Paging memberPaging = new Paging(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		
		System.out.println("들어오나 1");
		List<TutorDto> tutorDtoList = tutorService.getTutorList(countrySearch, ageSearch, genderSearch, keyword, start, end);
		System.out.println("들어오나 2");
		
		HashMap<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("countrySearch", countrySearch);
		searchMap.put("ageSearch", ageSearch);
		searchMap.put("genderSearch", genderSearch);
		searchMap.put("keyword", keyword);
		
		System.out.println("들어오나 3");
		// 페이징
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);
	
		model.addAttribute("tutorDtoList", tutorDtoList);
		model.addAttribute("pagingMap", pagingMap);
		model.addAttribute("searchMap", searchMap);
		
		return "home/tutorList";
	}
	
	@RequestMapping(value = "/tutorRegister.do", method = RequestMethod.GET)
	public String tutorRegister(Model model) {
		
		log.info("튜터등록 입니다. GET");
		return "member/tutor/info/tutorRegister";
	}

	@RequestMapping(value = "/tutorRegisterCtr.do", method = RequestMethod.POST)
	public String tutorRegisterCtr(HttpSession session, TutorDto tutorDto, Model model) {
		log.info("튜터등록 입니다. POST");

		System.out.println(tutorDto);
		
		MemberDto sessionMemberDto = (MemberDto)session.getAttribute("member");
		int memberNo = sessionMemberDto.getMemberNo();
		
		tutorDto.setMemberNo(memberNo);
		
		int insertResult = tutorService.tutorRegister(tutorDto);
		
		int updateResult = tutorService.tutorUpdateGrade(memberNo);
		
		
		if(insertResult == 0) {
			log.warn("튜터 레지스터가 실패했습니다.");
		} else {
			log.info("튜터 레지스터 성공!");
		}

		if(updateResult == 0) {
			log.warn("튜터 GRADE 변경에 실패했습니다.");
		} else {
			log.info("튜터 GRADE 변경 성공!");
		}
		
		return "redirect:./home.do";
	}

	@RequestMapping(value = "/tutorSelectOne.do", method = RequestMethod.GET)
	public String main(int tutorNo, Model model) {
		
		log.info("튜터 소개 입니다. GET");
		
		TutorDto tutorDto = tutorService.getTutorIntroduce(tutorNo);
		
		model.addAttribute("tutorDto", tutorDto);
		
		System.out.println(tutorDto);
		
		return "member/tutor/info/tutorSelectOne";
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
	
	@RequestMapping(value = "/writeCommentCtr.do", method = RequestMethod.POST)
	public String writeCommentCtr(HttpSession session, Model model) {
		log.info("writeCommentCtr.do 입니다. GET");
		
		
		
		return "redirect:./tutorSelectOne.do";
	}
}
