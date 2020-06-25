package com.englishvillage.member.admin.model;

import java.util.Date;

public class QuestionBoardDto {
	
	private int idx;
	private int memberNo;
	private String title;
	private String content;
	private Date boardCreateDate;
	private Date boardModDate;
	private String answerStatus;
	
	public QuestionBoardDto() {
		super();
	}

	public QuestionBoardDto(int idx, int memberNo, String title, String content, Date boardCreateDate,
			Date boardModDate, String answerStatus) {
		super();
		this.idx = idx;
		this.memberNo = memberNo;
		this.title = title;
		this.content = content;
		this.boardCreateDate = boardCreateDate;
		this.boardModDate = boardModDate;
		this.answerStatus = answerStatus;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getBoardCreateDate() {
		return boardCreateDate;
	}

	public void setBoardCreateDate(Date boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
	}

	public Date getBoardModDate() {
		return boardModDate;
	}

	public void setBoardModDate(Date boardModDate) {
		this.boardModDate = boardModDate;
	}

	public String getAnswerStatus() {
		return answerStatus;
	}

	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}
	
	
}
