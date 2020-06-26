package com.englishvillage.member.tutor.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		Paging tutorPaging = new Paging(totalCount, curPage);
		int start = tutorPaging.getPageBegin();
		int end = tutorPaging.getPageEnd();
		
//		List<TutorDto> tutorDtoList = tutorService.getTutorList();
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
		pagingMap.put("tutorPaging", tutorPaging);
	
		model.addAttribute("tutorDtoList", tutorDtoList);
		model.addAttribute("pagingMap", pagingMap);
		model.addAttribute("searchMap", searchMap);
		
		return "home/tutorList";
	}
}
