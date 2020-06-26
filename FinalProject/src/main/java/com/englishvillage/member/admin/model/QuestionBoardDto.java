package com.englishvillage.member.admin.model;

import java.util.Date;

public class QuestionBoardDto {
	
	private int idx;
	private int no;
	private String title;
	private String content;
	private Date boardCreateDate;
	private Date boardModDate;
	private String answerStatus;
	private String grade;
	
	public QuestionBoardDto() {
		super();
	}

	

	public QuestionBoardDto(int idx, int no, String title, String content, Date boardCreateDate,
			Date boardModDate, String answerStatus, String grade) {
		super();
		this.idx = idx;
		this.no = no;
		this.title = title;
		this.content = content;
		this.boardCreateDate = boardCreateDate;
		this.boardModDate = boardModDate;
		this.answerStatus = answerStatus;
		this.grade = grade;
	}
	
	



	



	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getno() {
		return no;
	}

	public void setno(int no) {
		this.no = no;
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
	
	public String getgrade() {
		return grade;
	}


	public void setgrade(String grade) {
		this.grade = grade;
	}
	
}
