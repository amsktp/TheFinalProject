package com.englishvillage.member.admin.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.admin.dao.AdminDao;
import com.englishvillage.util.FileUtils;

@Service
public class AdminServiceImpl implements AdminService{

	private static final Logger log = 
			LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public AdminDao adminDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	
}
