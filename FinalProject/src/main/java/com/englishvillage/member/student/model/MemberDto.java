package com.englishvillage.member.student.model;

import java.util.Date;

public class MemberDto {
	
	private int no;
	private String name;
	private String email;
	private String password;
	private Date createdDate;
	private Date modifiedDate;
	private Date birthDate;
	private String country;
	private String gender;
	private String grade;
	private int point;
	
	public MemberDto() {
		super();
	}

	public MemberDto(int no, String name, String email, String password, Date createdDate, Date modifiedDate,
			Date birthDate, String country, String gender, String grade, int point) {
		super();
		this.no = no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
		this.birthDate = birthDate;
		this.country = country;
		this.gender = gender;
		this.grade = grade;
		this.point = point;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "MemberDto [no=" + no + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", createdDate=" + createdDate + ", modifiedDate=" + modifiedDate + ", birthDate=" + birthDate
				+ ", country=" + country + ", gender=" + gender + ", grade=" + grade + ", point=" + point + "]";
	}
	
	
	

	
}
