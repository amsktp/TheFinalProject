package com.englishvillage.member.tutor.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import com.englishvillage.member.student.model.MemberFileDto;
import com.englishvillage.member.student.service.StudentService;
import com.englishvillage.member.tutor.model.TutorCommentDto;
import com.englishvillage.member.tutor.model.TutorDto;
import com.englishvillage.member.tutor.service.TutorService;
import com.englishvillage.util.PagingYJ;

@Controller
public class TutorController {

	private static final Logger log = 
		LoggerFactory.getLogger(TutorController.class);
	
	@Autowired
	private TutorService tutorService;
	
	@Autowired
	private StudentService studentService;
	
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
		
		PagingYJ memberPaging = new PagingYJ(totalCount, curPage);
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

	@RequestMapping(value = "/tutorSelectOne.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(@RequestParam(defaultValue = "1") int tutorNo, Model model, HttpServletRequest request) {
		
		
		
		System.out.println(request.getAttribute("tutorNo"));
		if(request.getAttribute("tutorNo") != null) {
			tutorNo = (int)request.getAttribute("tutorNo");
		}
		
		
		
		
		
		TutorDto tutorDto = tutorService.getTutorIntroduce(tutorNo);
		
		List<TutorCommentDto> tutorCommentDtoList = tutorService.getTutorComments(tutorNo);
		
		
		model.addAttribute("tutorCommentDtoList", tutorCommentDtoList);
		model.addAttribute("tutorDto", tutorDto);
		
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
	
	@RequestMapping(value = "/tutorInfoRevise.do", method = RequestMethod.GET)
	public String tutorInfoRevise(HttpSession session, Model model) {
		log.info("tutorInfoRevise 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		TutorDto tutorDtoGrade = tutorService.getTutorGrade(no);
		
		model.addAttribute("tutorDto", tutorDto);
		model.addAttribute("tutorDtoGrade", tutorDtoGrade);
		
		return "member/tutor/info/tutorInfoRevise";
	}
	
	@RequestMapping(value = "/tutorPrivateInfo.do", method = RequestMethod.GET)
	public String tutorPrivateInfo(HttpSession session, Model model) {
		log.info("tutorInfoRevise 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		TutorDto tutorDtoGrade = tutorService.getTutorGrade(no);
		
		model.addAttribute("tutorDto", tutorDto);
		model.addAttribute("tutorDtoGrade", tutorDtoGrade);
		
		return "member/tutor/info/tutorPrivateInfo";
	}
	
	@RequestMapping(value = "/addStudyHistoryCtr.do", method = RequestMethod.GET)
	public String addStudyHistoryCtr(HttpSession session, Model model, TutorCommentDto tutorCommentDto) {
		log.info("addStudyHistoryCtr 입니다. GET" + tutorCommentDto);
		
		
		Map<String, Object> map = studentService.SelectOne(tutorCommentDto.getStudentNo());
		MemberFileDto memberFileDto = (MemberFileDto) map.get("MemberFileDto");
		
		tutorCommentDto.setStudentName(memberFileDto.getMemberName());
		
		System.out.println(tutorCommentDto);
		System.out.println(tutorCommentDto);
		System.out.println(tutorCommentDto);
		System.out.println(tutorCommentDto);
		System.out.println(tutorCommentDto);
		int resultNum = tutorService.addStudyHistory(tutorCommentDto);
		
		
		return "member/tutor/info/tutorPrivateInfo";
	}
	
	@RequestMapping(value = "/tutorPrivateInfoCtr.do", method = RequestMethod.POST)
	public String tutorPrivateInfo(TutorDto tutorDto, HttpSession session, Model model) {
		log.info("tutorPrivateInfoCtr 입니다. POST");
		
		tutorService.updatePwd(tutorDto);
			
		return "redirect:tutorPrivateInfo.do";
	}
	
	@RequestMapping(value = "/tutorCheckPassword.do", method = RequestMethod.GET)
	public String tutorCheckPassword(HttpSession session, Model model) {
		log.info("tutorCheckPassword 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");
		
		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		
		model.addAttribute("tutorDto", tutorDto);
		
		
		return "member/tutor/info/tutorCheckPassword";
		
		
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

		TutorDto getTutorDtoGrade = tutorService.getTutorGrade(no);
		
		TutorDto getTutorDtoInfo = tutorService.getTutorInfo(no);
		
		model.addAttribute("getTutorDtoGrade", getTutorDtoGrade);
		model.addAttribute("getTutorDtoInfo", getTutorDtoInfo);

		return "member/tutor/info/tutorIntroduceRevise";
	}
	
	@RequestMapping(value = "/tutorIntroduceReviseCtr.do", method = RequestMethod.POST)
	public String tutorIntroduceRevise(TutorDto tutorDto, HttpSession session, Model model) {
		log.info("tutorIntroduceReviseCtr 입니다. POST");
						
		int result = tutorService.updateTutor(tutorDto);
		
		if(result == 0) {
			System.out.println("튜터 업데이트가 안됐습니다");
		}else {
			System.out.println("튜터 업데이트 성공");
		}
		
		return "redirect:/tutorIntroduce.do";
	}
	
	@RequestMapping(value = "/tutorWithdraw.do", method = RequestMethod.GET)
	public String tutorWithdraw(HttpSession session, Model model) {
		log.info("tutorIntroduceRevise 입니다. GET");
		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();

		TutorDto tutorDto = tutorService.getTutorInfo(no);
		
		model.addAttribute("tutorDto", tutorDto);
		
		return "member/tutor/info/tutorWithdraw";
	}
	
	@RequestMapping(value = "/tutorWithdrawCtr.do", method = RequestMethod.POST)
	public String tutorWithdrawCtr(HttpSession session, Model model) {
		log.info("tutorWithdrawCtr 입니다. POST");

		
		MemberDto sessionTutorDto = (MemberDto) session.getAttribute("member");

		int no = sessionTutorDto.getMemberNo();
		
		tutorService.deleteMember(no);
	
		session.removeAttribute("member");
		session.invalidate();
		
		return "redirect:/login.do";
	}
	
	@RequestMapping(value = "/writeCommentCtr.do", method = RequestMethod.POST)
	public String writeCommentCtr(TutorCommentDto tutorCommentDto, HttpSession session, Model model, HttpServletRequest request) {
		log.info("writeCommentCtr.do 입니다. POST");
		
		int resultNum = tutorService.writeComment(tutorCommentDto);
		
		request.setAttribute("tutorNo", tutorCommentDto.getTutorNo());
		
		
//		return "redirect:./tutorSelectOne.do?tutorNo=" + tutorCommentDto.getTutorNo();
		return "forward:./tutorSelectOne.do";
	}
	@RequestMapping(value = "/tutorCommentRemoveCtr.do", method = RequestMethod.POST)
	public String tutorCommentRemoveCtr(TutorCommentDto tutorCommentDto, HttpSession session, Model model, HttpServletRequest request) {
		log.info("writeCommentCtr.do 입니다. POST");
		
		int resultNum = tutorService.removeComment(tutorCommentDto);
		
		
		return "forward:./tutorSelectOne.do";
	}
	
	
	@RequestMapping(value = "/tutorCommentModifyCtr.do", method = RequestMethod.POST)
	public String tutorCommentModifyCtr(TutorCommentDto tutorCommentDto, HttpSession session, Model model, HttpServletRequest request) {
		log.info("writeCommentCtr.do 입니다. POST");
		
		int resultNum = tutorService.modifyComment(tutorCommentDto);
		
		
		
		return "forward:./tutorSelectOne.do";
	}
}
