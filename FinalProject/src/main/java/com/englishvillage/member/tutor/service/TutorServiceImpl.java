package com.englishvillage.member.tutor.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.tutor.dao.TutorDao;
import com.englishvillage.util.FileUtils;

@Service
public class TutorServiceImpl implements TutorService{

	private static final Logger log = 
			LoggerFactory.getLogger(TutorServiceImpl.class);
	
	@Autowired
	public TutorDao tutorDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	
}
