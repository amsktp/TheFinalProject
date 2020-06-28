package com.englishvillage.member.student.model;

import java.util.Date;

public class MemberFileDto {
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
	

	

	private int idx;
	private int parentSeq;        
	private String originalFileName;
    private String storedFileName;  
	private int fileSize; 
	private Date creDate;
	
	public MemberFileDto() {
		super();
	}
	
	
	public MemberFileDto(String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}

	
	
	public MemberFileDto(int no, String name, String email, String password, Date birthDate, String country,
			String gender) {
		super();
		this.no = no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.birthDate = birthDate;
		this.country = country;
		this.gender = gender;
	}


	public MemberFileDto(int no, String name, String email, String password, Date createdDate, Date modifiedDate,
			Date birthDate, String country, String gender, String grade, int point, int idx, int parentSeq,
			String originalFileName, String storedFileName, int fileSize, Date creDate) {
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
		this.idx = idx;
		this.parentSeq = parentSeq;
		this.originalFileName = originalFileName;
		this.storedFileName = storedFileName;
		this.fileSize = fileSize;
		this.creDate = creDate;
	}
	
	public MemberFileDto(int no, String name, String email, String password, Date createdDate, Date modifiedDate,
			int idx, int parentSeq, String originalFileName, String storedFileName, int fileSize, Date creDate) {
		super();
		this.no = no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
		this.idx = idx;
		this.parentSeq = parentSeq;
		this.originalFileName = originalFileName;
		this.storedFileName = storedFileName;
		this.fileSize = fileSize;
		this.creDate = creDate;
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

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getParentSeq() {
		return parentSeq;
	}

	public void setParentSeq(int parentSeq) {
		this.parentSeq = parentSeq;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getStoredFileName() {
		return storedFileName;
	}

	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}

	public int getFileSize() {
		return fileSize;
	}

	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}

	public Date getCreDate() {
		return creDate;
	}

	public void setCreDate(Date creDate) {
		this.creDate = creDate;
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
		return "MemberFileDto [no=" + no + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", createdDate=" + createdDate + ", modifiedDate=" + modifiedDate + ", idx=" + idx + ", parentSeq="
				+ parentSeq + ", originalFileName=" + originalFileName + ", storedFileName=" + storedFileName
				+ ", fileSize=" + fileSize + ", creDate=" + creDate + "]";
	}

}
