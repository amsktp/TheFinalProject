package com.englishvillage.auth.model;

public class MemberDto {
	
	private int memberNo;
	private String memberName;
	private String memberEmail;
	private String memberPassword;
	
	public MemberDto() {
		super();
	}

	public MemberDto(int memberNo, String memberName, String memberEmail, String memberPassword) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
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

	@Override
	public String toString() {
		return "MemberDto [memberNo=" + memberNo + ", memberName=" + memberName + ", memberEmail=" + memberEmail
				+ ", memberPassword=" + memberPassword + "]";
	}
	
}
