package com.snaptag.auth.model;

import java.util.Date;

public class MemberVO {
	
	private int memberNo;
	private String memberName;
	private String memberId;
	private String memberPassword;
	private Date memberCreatedDate;

	public MemberVO() {
		super();
	}
	public MemberVO(int memberNo, String memberName, String memberId, String memberPassword, Date memberCreatedDate) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberCreatedDate = memberCreatedDate;
	}
	
	

	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public Date getMemberCreatedDate() {
		return memberCreatedDate;
	}
	public void setMemberCreatedDate(Date memberCreatedDate) {
		this.memberCreatedDate = memberCreatedDate;
	}

	@Override
	public String toString() {
		return "MemberVo [memberNo=" + memberNo + ", memberName=" + memberName + ", memberId=" + memberId
				+ ", memberPassword=" + memberPassword + ", memberCreatedDate=" + memberCreatedDate + "]";
	}
	
}
