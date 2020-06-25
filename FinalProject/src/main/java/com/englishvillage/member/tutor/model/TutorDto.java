package com.englishvillage.member.tutor.model;

import java.util.Date;



public class TutorDto {
	
	private int memberNo;
	private String memberGrade;
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private Date memberCreateDate;
	private Date memberModifyDate;
	private String memberCountry;
	private String memberGender;
	private String memberBirthDate;
	private String memberPoint;
	
//	private int tutorNo;
	private String tutorIntroduce;
	private String youtubeUrl;
	private String studyName;
	private String price;
	private String statusCheck;
	public TutorDto() {
		super();
	}
	public TutorDto(int memberNo, String memberGrade, String memberEmail, String memberPassword, String memberName,
			Date memberCreateDate, Date memberModifyDate, String memberCountry, String memberGender,
			String memberBirthDate, String memberPoint, String tutorIntroduce, String youtubeUrl, String studyName,
			String price, String statusCheck) {
		super();
		this.memberNo = memberNo;
		this.memberGrade = memberGrade;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberCreateDate = memberCreateDate;
		this.memberModifyDate = memberModifyDate;
		this.memberCountry = memberCountry;
		this.memberGender = memberGender;
		this.memberBirthDate = memberBirthDate;
		this.memberPoint = memberPoint;
		this.tutorIntroduce = tutorIntroduce;
		this.youtubeUrl = youtubeUrl;
		this.studyName = studyName;
		this.price = price;
		this.statusCheck = statusCheck;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getMemberCreateDate() {
		return memberCreateDate;
	}
	public void setMemberCreateDate(Date memberCreateDate) {
		this.memberCreateDate = memberCreateDate;
	}
	public Date getMemberModifyDate() {
		return memberModifyDate;
	}
	public void setMemberModifyDate(Date memberModifyDate) {
		this.memberModifyDate = memberModifyDate;
	}
	public String getMemberCountry() {
		return memberCountry;
	}
	public void setMemberCountry(String memberCountry) {
		this.memberCountry = memberCountry;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberBirthDate() {
		return memberBirthDate;
	}
	public void setMemberBirthDate(String memberBirthDate) {
		this.memberBirthDate = memberBirthDate;
	}
	public String getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(String memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getTutorIntroduce() {
		return tutorIntroduce;
	}
	public void setTutorIntroduce(String tutorIntroduce) {
		this.tutorIntroduce = tutorIntroduce;
	}
	public String getYoutubeUrl() {
		return youtubeUrl;
	}
	public void setYoutubeUrl(String youtubeUrl) {
		this.youtubeUrl = youtubeUrl;
	}
	public String getStudyName() {
		return studyName;
	}
	public void setStudyName(String studyName) {
		this.studyName = studyName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatusCheck() {
		return statusCheck;
	}
	public void setStatusCheck(String statusCheck) {
		this.statusCheck = statusCheck;
	}
	@Override
	public String toString() {
		return "TutorDto [memberNo=" + memberNo + ", memberGrade=" + memberGrade + ", memberEmail=" + memberEmail
				+ ", memberPassword=" + memberPassword + ", memberName=" + memberName + ", memberCreateDate="
				+ memberCreateDate + ", memberModifyDate=" + memberModifyDate + ", memberCountry=" + memberCountry
				+ ", memberGender=" + memberGender + ", memberBirthDate=" + memberBirthDate + ", memberPoint="
				+ memberPoint + ", tutorIntroduce=" + tutorIntroduce + ", youtubeUrl=" + youtubeUrl + ", studyName="
				+ studyName + ", price=" + price + ", statusCheck=" + statusCheck + "]";
	}
	
	
	
	
	
}
