package com.englishvillage.member.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.englishvillage.member.admin.dao.AdminDao;
import com.englishvillage.member.admin.model.MemberListDto;
import com.englishvillage.util.FileUtils;

@Service
public class AdminServiceImpl implements AdminService{

	private static final Logger log = 
			LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	public AdminDao adminDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	//학생
	@Override
	public List<MemberListDto> studentSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		System.out.println("여긴 오는지 service 1");
		List<MemberListDto> memberList = 
				adminDao.studentSelectList(searchOption, keyword
					, start, end);
		
		
		return memberList;
	}

	@Override
	public int studentSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return adminDao.studentSelectTotalCount(searchOption
				, keyword);
	}

	@Override
	public int memberSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		return adminDao.memberSelectCurPage(searchOption, keyword, no);
	}
	
	//튜터
	@Override
	public List<MemberListDto> tutorSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		List<MemberListDto> memberList = 
				adminDao.tutorSelectList(searchOption, keyword
					, start, end);
		
		return memberList;
	}

	@Override
	public int tutorSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return adminDao.tutorSelectTotalCount(searchOption
				, keyword);
	}

	@Override
	public int tutorSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		return adminDao.tutorSelectCurPage(searchOption, keyword, no);
	}
	
	//문의
	@Override
	public List<MemberListDto> questionSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		List<MemberListDto> memberList = 
				adminDao.questionSelectList(searchOption, keyword
					, start, end);
		
		return memberList;
	}

	@Override
	public int questionSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return adminDao.questionSelectTotalCount(searchOption
				, keyword);
	}

	@Override
	public int questionSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		return adminDao.questionSelectCurPage(searchOption, keyword, no);
	}
	
	
}
