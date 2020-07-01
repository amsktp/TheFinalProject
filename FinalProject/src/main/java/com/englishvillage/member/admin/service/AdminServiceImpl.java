package com.englishvillage.member.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.englishvillage.member.admin.dao.AdminDao;
import com.englishvillage.member.admin.model.MemberListDto;
import com.englishvillage.member.admin.model.QuestionBoardDto;
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
	public int studentSelectCurPage(String searchOption, String keyword, int no) {
		// TODO Auto-generated method stub
		return adminDao.studentSelectCurPage(searchOption, keyword, no);
	}
	
	@Override
	public int memberStudentUpdateOne(MemberListDto memberListDto,
			MultipartHttpServletRequest multipartHttpServletRequest, int fileIdx) throws Exception {
		// TODO Auto-generated method stub
				int resultNum = 0;
				
				try {
					
//					int parentSeq = memberListDto.getNo();
					//if문을 위한것(2번째 if문)
					
//					Map<String, Object> tempFileMap = 
//							adminDao.fileSelectStoredFileName(parentSeq);
					
					//for문을 위한것
//					List<Map<String, Object>> list = 
//							fileUtils.parseInsertFileInfo(parentSeq, multipartHttpServletRequest);
					
					// 오로지 하나만 관리 수정
//					if (list.isEmpty() == false) {
//						
//						for (Map<String, Object> map : list) {
//							adminDao.insertFile(map);
//						}
//						
//						if (tempFileMap != null) {
//							adminDao.fileDelete(parentSeq);
//							fileUtils.parseUpdateFileInfo(tempFileMap);
//						}
//						
//					}else if (fileIdx == -1) {
//						if (tempFileMap != null) {
//							adminDao.fileDelete(parentSeq);
//							fileUtils.parseUpdateFileInfo(tempFileMap);
//						}
//					}
					
					//부모를 바꾸기 전에 자식을 바꾸는 형태(참조무결성 제약조건을 생각해야 하는 부분이다)
					
					
					resultNum = adminDao.memberStudentUpdateOne(memberListDto);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
//					TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
					System.out.println("오류");
				}
				
				return resultNum;
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
	public List<QuestionBoardDto> questionSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		List<QuestionBoardDto> qusetionList = 
				adminDao.questionSelectList(searchOption, keyword
					, start, end);
		
		return qusetionList;
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

	@Override
	public Map<String, Object> memberStudentSelectOne(int no) {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		MemberListDto memberListDto = adminDao.memberStudentSelectOne(no);
		
		resultMap.put("memberListDto", memberListDto);
		
		
		return resultMap;
	}

	@Override
	public Map<String, Object> memberTutorSelectOne(int no) {
		// TODO Auto-generated method stub
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		MemberListDto memberListDto = adminDao.memberTutorSelectOne(no);
		
		resultMap.put("memberListDto", memberListDto);
		
		
		return resultMap;
	}

	@Override
	public Map<String, Object> questionSelectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	
}
