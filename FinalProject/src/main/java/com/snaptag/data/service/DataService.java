package com.snaptag.data.service;

import org.springframework.web.multipart.MultipartFile;

import com.snaptag.data.model.CreateLabelBulkReqBody;
import com.snaptag.result.SuccessResponseBody;

public interface DataService {

//	SuccessResponseBody createLabelBulk(CreateLabelBulkReqBody var1);
	
	String saveSrc(MultipartFile var1, String var2);
	
}
