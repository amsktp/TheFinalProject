package com.snaptag.data.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.snaptag.data.service.DataService;
import com.snaptag.exeption.BadRequestException;
import com.snaptag.exeption.ResponseErrorCode;

@Controller
public class DataController {

	private static final Logger log = LoggerFactory.getLogger(DataController.class);

	@Autowired
	private DataService dataService;

	@RequestMapping(value="/admin/dataManagement.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String dataManagement() {
		
		System.out.println("@@@@@@@@@@@@@@@@@dataManagement");
		
		return "data/dataManagementView";
	}

	@RequestMapping(value="/admin/dataManagementCtr.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String addData(MultipartHttpServletRequest mulRequest, String type) {
		
		System.out.println("@@@@@@@@@@@@@@@@@dataManagementCtr.do" + type);
		
		MultipartFile file = mulRequest.getFile("uploadFile");
		
		if(file.isEmpty()) {
			throw new BadRequestException(ResponseErrorCode.NOT_ENTERED_FILE.getMessage());
		}else {
			dataService.saveSrc(file, type);
		}
		
		
		
		
		
		
		
		
		
		return "redirect:/admin/dataManagement.do";
	}

		

}
