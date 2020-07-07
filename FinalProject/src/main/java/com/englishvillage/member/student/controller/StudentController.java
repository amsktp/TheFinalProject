package com.englishvillage.member.student.controller;

import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.englishvillage.auth.model.MemberDto;
import com.englishvillage.member.student.model.MemberFileDto;
import com.englishvillage.member.student.model.QuestionBoardDto;
import com.englishvillage.member.student.service.StudentService;
import com.englishvillage.util.PagingYJ;

@Controller
public class StudentController {

	private static final Logger log = LoggerFactory.getLogger(StudentController.class);

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "myPage.do", method = { RequestMethod.GET })
	public String myPage(Locale locale, HttpSession session, Model model) {
		log.info("call myPage! " + session.getAttribute("member"));
		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");

		System.out.println("일단 세션 만들기 성공" + sessionMemberDto);
		String userEmail = sessionMemberDto.getMemberEmail();

		Map<String, Object> map = studentService.SelectOne(userEmail);
		System.out.println("여긴 맵이야" + map);
		MemberFileDto memberFileDto = (MemberFileDto) map.get("MemberFileDto");
		System.out.println("넣을값" + memberFileDto);
		model.addAttribute("memberFileDto", memberFileDto);
		return "/member/student/info/studentMainPage";
	}

	@RequestMapping(value = "myInfo.do", method = { RequestMethod.GET })
	public String infoPage(Locale locale, HttpSession session, Model model) {
		log.info("Welcome myInfo.do! {} {}");
		System.out.println("세션초기값이다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ" + session.getAttribute("member"));
		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");

		System.out.println("일단 세션 만들기 성공" + sessionMemberDto);
		String userEmail = sessionMemberDto.getMemberEmail();

		Map<String, Object> map = studentService.SelectOne(userEmail);
		System.out.println("여긴 맵이야" + map);
		MemberFileDto memberFileDto = (MemberFileDto) map.get("MemberFileDto");
		System.out.println("넣을값" + memberFileDto);
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

		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");

		System.out.println("일단 세션 만들기 성공2");
		String userEmail = sessionMemberDto.getMemberEmail();

		Map<String, Object> map = studentService.SelectOne(userEmail);
		System.out.println("여긴 맵이야2" + map);
		MemberFileDto memberFileDto = (MemberFileDto) map.get("MemberFileDto");
		System.out.println("넣을값2" + memberFileDto);
		model.addAttribute("memberFileDto", memberFileDto);

		return "/member/student/info/studentInfoRevise";
	}

	// 회원수정
	@RequestMapping(value = "updateCtr.do", method = RequestMethod.POST)
	public String memberUpdateCtr(HttpSession session, String memberPassword, Model model) {
		log.info("call memberUpdateCtr! {} :: {}", session + "패스워드" + memberPassword);
		int resultNum = 0;
		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");
		sessionMemberDto.setMemberPassword(memberPassword);
		System.out.println("업데이트에서 세션 만들기 성공" + sessionMemberDto);

		resultNum = studentService.memberUpdateOne(sessionMemberDto);

		System.out.println("업데이트 결과값" + resultNum);

		System.out.println("업데이트 완료 세션값" + session.getAttribute("member"));

		return "redirect:/myInfo.do";

	}

	// 회원탈퇴 확인
	@RequestMapping(value = "delete.do", method = RequestMethod.POST)
	public String memberDelete(Model model) {

		log.info("call memberdelete!");

//		return "redirect:/member/login.do";
//		return "/member/student/info/delete";
		return "/member/student/info/studentWithdraw";
	}

//	// 회원 삭제
//	@RequestMapping(value="deleteCtr.do", method = RequestMethod.GET)
//	public String memberDeleteCtr(int no, Model model) {
//		
//		log.info("call memberDeleteCtr! " + no);
//		
//		studentService.memberDeleteOne(no);
//		
////		return "redirect:/member/list.do";
//		return "/member/student/info/delete";
//	}

	// 회원 삭제
	@RequestMapping(value = "deleteCtr.do", method = RequestMethod.POST)
	public String memberDeleteCtr(HttpSession session, Model model) {

		log.info("call memberDeleteCtr! " + session.getAttribute("member"));

		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");

		System.out.println("탈퇴전 세션 만들기 성공" + sessionMemberDto);
		int no = sessionMemberDto.getMemberNo();

		studentService.memberDeleteOne(no);

//		session.removeAttribute("member");
//		session.invalidate();

//		return "/member/student/info/studentPrivateInfo";
//		return "redirect:/member/list.do";
//		return "redirect:/login.do";
		return "/member/student/info/delete";
	}

	@RequestMapping(value = "studyList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String studyList(@RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "0") int idx,
			HttpSession session, Locale locale, Model model) {
		log.info("Welcome studyPage! idx: " + idx);
		int totalCount = 0;
		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");
		int no = sessionMemberDto.getMemberNo();
		System.out.println("회원세션에서 가져온 넘버는???" + no);

		totalCount = studentService.studentStudyCount(no);
		System.out.println("totalCount는 도대체 무슨값일까??" + totalCount);

//				이전 페이지로 돌아갈때 값
//				자신의 curPage 찾는 로직
//		if (idx != 0) {
//			curPage = studentService.questionSelectCurPage(no, idx);
//		}

		PagingYJ memberPaging = new PagingYJ(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		System.out.println("start" + start);
		System.out.println("end" + end);

		List<QuestionBoardDto> studyList = studentService.studySelectList(no, start, end);
//				// 페이징
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);

		model.addAttribute("studyList", studyList);
		model.addAttribute("pagingMap", pagingMap);

		return "/member/student/info/studentStudyInfo";
	}

	// 문의 리스트
	@RequestMapping(value = "QuestionList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String QuestionList(@RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "0") int idx,
			HttpSession session, Model model) {
		log.info("Welcome MemberList! " + curPage);
		// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
		System.out.println("idx는 도대체 무슨값일까??" + idx);
		// 페이징을 위한 전체 회원목록 갯수
		int totalCount = 0;
		MemberDto sessionMemberDto = (MemberDto) session.getAttribute("member");
		int no = sessionMemberDto.getMemberNo();

		System.out.println("회원세션에서 가져온 넘버는???" + no);

		totalCount = studentService.studentQuestionCount(no);
		System.out.println("totalCount는 도대체 무슨값일까??" + totalCount);

//				이전 페이지로 돌아갈때 값
//				자신의 curPage 찾는 로직
		if (idx != 0) {
			curPage = studentService.questionSelectCurPage(no, idx);
		}

		PagingYJ memberPaging = new PagingYJ(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		System.out.println("start" + start);
		System.out.println("end" + end);

		List<QuestionBoardDto> qusetionList = studentService.questionSelectList(no, start, end);
//				// 페이징
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);

		model.addAttribute("qusetionList", qusetionList);
		model.addAttribute("pagingMap", pagingMap);

		return "/member/student/qna/studentQnABoard";
	}

	// 문의 작성하기
	@RequestMapping(value = "QuestionAdd.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String QuestionAdd(HttpSession session, Model model) {
		log.info("Welcome QuestionAdd.do! ");

		return "/member/student/qna/studentQnAWrite";
	}

	@RequestMapping(value = "QuestionAddCtr.do", method = RequestMethod.POST)
	public String QuestionAddCtr(QuestionBoardDto questionBoardDto, HttpSession session, Model model) {
		log.info("Welcome QuestionAddCtr.do! " + questionBoardDto);

		int resultNum = 0;

		resultNum = studentService.QuestionAdd(questionBoardDto);
		System.out.println("결과값" + resultNum);

		return "redirect:QuestionList.do";
	}

	// 문의 상세읽기
	@RequestMapping(value = "QuestionSelect.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String QuestionList(int idx, Model model) {
		log.info("Welcome MemberList! " + idx);

		Map<String, Object> map = studentService.QuestionSelect(idx);
		QuestionBoardDto questionBoardDto = (QuestionBoardDto) map.get("QuestionBoardDto");
		model.addAttribute("questionBoardDto", questionBoardDto);
		System.out.println(questionBoardDto);

		return "/member/student/qna/studentQnARead";
	}

	// 문의 수정
	@RequestMapping(value = "QuestionRevise.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String QuestionRevise(QuestionBoardDto questionBoardDto, Model model) {
//				log.info("Welcome QuestionRevise.do! "+questionBoardDto+"idx값은?"+idx);
		int resultNum = 0;
		resultNum = studentService.QuestionRevise(questionBoardDto);

		System.out.println("완료 값" + resultNum);
		System.out.println("업데이트 완료 DTO값" + questionBoardDto);

		return "/member/student/qna/studentQnAWrite";
	}

	// 테스트 페이지
	@RequestMapping(value = "test.do", method = RequestMethod.POST)
	public String test(QuestionBoardDto questionBoardDto, HttpSession session, Model model) {
		log.info("Welcome QuestionRevise.do! " + questionBoardDto);

		return "/member/student/qna/studentQnAWrite";
	}

}
