package com.englishvillage.member.admin.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.englishvillage.member.admin.model.MemberListDto;
import com.englishvillage.member.admin.model.QuestionBoardDto;
import com.englishvillage.member.admin.service.AdminService;

import com.englishvillage.util.Paging;

@Controller
public class AdminController {

	private static final Logger log = 
		LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	//학생리스트
	@RequestMapping(value = "/admin/studentlist.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String StudentList(@RequestParam(defaultValue = "1") 
			int curPage
			, @RequestParam(defaultValue = "0") int no
			, @RequestParam(defaultValue = "all") String searchOption
			, @RequestParam(defaultValue = "") String keyword
			, Model model) {
		log.info("Welcome MemberList! " + curPage + " : " 
			+ searchOption + " : " + keyword);
		System.out.println("여긴 오는지 1");
		
		// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
		if("name".equals(searchOption)) {
			searchOption = "member_name";
		}

		// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
		if("email".equals(searchOption)) {
			searchOption = "member_email";
		}
	
		
		// 페이징을 위한 전체 회원목록 갯수
		int totalCount = 
			adminService.studentSelectTotalCount(
				searchOption, keyword);
		
		log.info(" " + totalCount);
//		이전 체이지로 회원으이 번호가 명확하게 나온경우
//		자신의 curPage 찾는 로직
		if(no != 0) {
			curPage
				= adminService.studentSelectCurPage(searchOption, keyword, no);
		}
		
		
		Paging memberPaging = new Paging(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		
		log.info(" " + memberPaging, start, end);
		
		System.out.println("여긴 오는지 1.5");

		List<MemberListDto> memberList = 
				adminService.studentSelectList(searchOption, keyword
				, start, end);
		
		System.out.println("여긴 오는지 2");
		// 화면의 form의 이름을 맞추기 위한 작업
		
		if("member_name".equals(searchOption)) {
			searchOption = "name";
		}

		if("member_email".equals(searchOption)) {
			searchOption = "email";
		}
		
		// 검색
		HashMap<String, Object> searchMap 
			= new HashMap<String, Object>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);
		
		
		// 페이징
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);
		
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("pagingMap", pagingMap);
		
		model.addAttribute("searchMap", searchMap);
		
		
		System.out.println("@@@@@@@#################" + keyword);
		System.out.println("@@@@@@@#################" + searchOption);
		
		return "admin/student/adminStudentList";
	}
	
	@RequestMapping(value = "/admin/studentlistOne.do", method = RequestMethod.GET)
	public String studentListOne(int no, String searchOption, String keyword, Model model) {
		log.info("call memberListOne! - {} {}", no + "\n" + searchOption + "\n" + keyword);
		
		Map<String, Object> map = adminService.memberStudentSelectOne(no);
		
		MemberListDto memberListDto = (MemberListDto)map.get("memberListDto");
		

		
		model.addAttribute("memberListDto", memberListDto);

		model.addAttribute("searchOption", searchOption);
		model.addAttribute("keyword", keyword);

		
		return "admin/student/adminStudentInfo";
	}
	
	//회원 수정 화면으로
		@RequestMapping(value = "/admin/StudentUpdate.do", method = RequestMethod.GET)
		public String memberUpdate(int no, Model model) {
			
			log.info("call memberUpdate! {}", no);
			System.out.println("왔다!");
			
			Map<String, Object> map = adminService.memberStudentSelectOne(no);
			
			MemberListDto memberListDto = (MemberListDto)map.get("memberListDto");
			
//			List<Map<String, Object>> fileList = (List<Map<String, Object>>)map.get("fileList");
			
			model.addAttribute("memberListDto", memberListDto);
			
//			model.addAttribute("fileList", fileList);
			
			return "admin/student/adminStudentInfoRevise";
		}
		
		//회원수정
		@RequestMapping(value = "/admin/studentUpdateCtr.do", method = RequestMethod.POST)
		public String memberUpdateCtr(HttpSession session, MemberListDto memberListDto,
									String birthDateText,
									  @RequestParam(value="fileIdx", defaultValue = "-1") int fileIdx
									  ,MultipartHttpServletRequest multipartHttpServletRequest
									  , Model model) throws ParseException {
			
			log.info("call memberUpdateCtr! {} :: {}" + memberListDto, fileIdx);
			
			System.out.println(memberListDto.getNo());
			System.out.println(memberListDto.getEmail());
			System.out.println(memberListDto.getName());
			System.out.println(memberListDto.getGender());
			System.out.println(memberListDto.getPassword());
			System.out.println(memberListDto.getCountry());
			System.out.println(memberListDto.getBirthDate());
			System.out.println(memberListDto.getModifiedDate());
			
			int resultNum = 0;
			
			try {
				// 설명하지 
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date parseDate = simpleDateFormat.parse(birthDateText);
				memberListDto.setBirthDate(parseDate);
				System.out.println("updateone에 들어오나");
				resultNum = adminService.memberStudentUpdateOne(memberListDto
						, multipartHttpServletRequest, fileIdx);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("updateone에 예외처리되나");
				e.printStackTrace();
			}
			
			if (resultNum != 0) {
				MemberListDto sessionMemberListDto = (MemberListDto)session.getAttribute("member");
				
				if (sessionMemberListDto != null) {
					
					if (sessionMemberListDto.getNo() == memberListDto.getNo()) {
						MemberListDto newMemberListDto = new MemberListDto(memberListDto.getNo(),memberListDto.getName()
								,memberListDto.getEmail(),memberListDto.getPassword(), memberListDto.getModifiedDate()
								,memberListDto.getBirthDate(),memberListDto.getCountry(),memberListDto.getGender());
						
						session.removeAttribute("member");
						
						session.setAttribute("member", newMemberListDto);
					}
					
				}
			}
			
			return "redirect:./studentlist.do";
		}
	
	//튜터 리스트
	@RequestMapping(value = "/admin/tutorlist.do"
			, method = {RequestMethod.GET, RequestMethod.POST})
	public String TutorList(@RequestParam(defaultValue = "1") 
			int curPage
			, @RequestParam(defaultValue = "0") int no
			, @RequestParam(defaultValue = "all") String searchOption
			, @RequestParam(defaultValue = "") String keyword
			, Model model) {
		log.info("Welcome MemberList! " + curPage + " : " 
			+ searchOption + " : " + keyword);
		// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
		if("name".equals(searchOption)) {
			searchOption = "member_name";
		}

		// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
		if("email".equals(searchOption)) {
			searchOption = "member_email";
		}
		
		
	
		
		// 페이징을 위한 전체 회원목록 갯수
		int totalCount = 
			adminService.tutorSelectTotalCount(
				searchOption, keyword
			);
		
		
//		이전 체이지로 회원으이 번호가 명확하게 나온경우
//		자신의 curPage 찾는 로직
		if(no != 0) {
			curPage
				= adminService.tutorSelectCurPage(searchOption, keyword, no);
		}
		
		
		Paging memberPaging = new Paging(totalCount, curPage);
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();
		
		List<MemberListDto> memberList = 
				adminService.tutorSelectList(searchOption, keyword
				, start, end);

		// 화면의 form의 이름을 맞추기 위한 작업
		if("member_name".equals(searchOption)) {
			searchOption = "name";
		}

		if("member_email".equals(searchOption)) {
			searchOption = "email";
		}
		// 검색
		HashMap<String, Object> searchMap 
			= new HashMap<String, Object>();
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);
		
		// 페이징
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);

		model.addAttribute("memberList", memberList);
		model.addAttribute("pagingMap", pagingMap);
		model.addAttribute("searchMap", searchMap);
		
		System.out.println("@@@@@@@#################" + keyword);
		System.out.println("@@@@@@@#################" + searchOption);
		
		return "admin/tutor/adminTutorList";
	}
	
	@RequestMapping(value = "/admin/tutorlistOne.do", method = RequestMethod.GET)
	public String tutorListOne(int no, String searchOption, String keyword, Model model) {
		log.info("call memberListOne! - {} {}", no + "\n" + searchOption + "\n" + keyword);
		
		Map<String, Object> map = adminService.memberTutorSelectOne(no);
		
		MemberListDto memberListDto = (MemberListDto)map.get("memberListDto");
		
//		List<Map<String, Object>> fileList = (List<Map<String, Object>>)map.get("fileList");
		
		model.addAttribute("memberListDto", memberListDto);
//		model.addAttribute("fileList", fileList);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("keyword", keyword);
		
		
		return "admin/tutor/adminTutorInfo";
	}
	
	//문의 리스트
		@RequestMapping(value = "/admin/questionlist.do"
				, method = {RequestMethod.GET, RequestMethod.POST})
		public String QuestionList(@RequestParam(defaultValue = "1") 
				int curPage
				, @RequestParam(defaultValue = "0") int no
				, @RequestParam(defaultValue = "all") String searchOption
				, @RequestParam(defaultValue = "") String keyword
				, Model model) {
			log.info("Welcome MemberList! " + curPage + " : " 
				+ searchOption + " : " + keyword);
			// 화면의 form의 이름을 마바티스에 편하게 맞추기 위한 로직
			if("title".equals(searchOption)) {
				searchOption = "TITLE";
			}
			
			if("context".equals(searchOption)) {
				searchOption = "content";
			}
		
			
			// 페이징을 위한 전체 회원목록 갯수
			int totalCount = 
				adminService.questionSelectTotalCount(
					searchOption, keyword
				);
			
			
//			이전 체이지로 회원으이 번호가 명확하게 나온경우
//			자신의 curPage 찾는 로직
			if(no != 0) {
				curPage
					= adminService.questionSelectCurPage(searchOption, keyword, no);
			}
			
			
			Paging memberPaging = new Paging(totalCount, curPage);
			int start = memberPaging.getPageBegin();
			int end = memberPaging.getPageEnd();
			
			List<QuestionBoardDto> qusetionList = 
					adminService.questionSelectList(searchOption, keyword
					, start, end);

			// 화면의 form의 이름을 맞추기 위한 작업
			if("title".equals(searchOption)) {
				searchOption = "title";
			}
			
			if("content".equals(searchOption)) {
				searchOption = "context";
			}
			
			// 검색
			HashMap<String, Object> searchMap 
				= new HashMap<String, Object>();
			searchMap.put("searchOption", searchOption);
			searchMap.put("keyword", keyword);
			
			// 페이징
			Map<String, Object> pagingMap = new HashMap<>();
			pagingMap.put("totalCount", totalCount);
			pagingMap.put("memberPaging", memberPaging);

			model.addAttribute("qusetionList", qusetionList);
			model.addAttribute("pagingMap", pagingMap);
			model.addAttribute("searchMap", searchMap);
			
			System.out.println("@@@@@@@#################" + keyword);
			System.out.println("@@@@@@@#################" + searchOption);
			
			return "admin/qna/adminQnAList";
		}

}
