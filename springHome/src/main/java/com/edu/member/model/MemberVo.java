package com.edu.member.model;

import java.util.Date;

public class MemberVo {

	private int no = 0;
	private String name = "";
	private String email = "";
	private String password = "";
	private String createDate = null;
	private String modifyDate = null;

	public MemberVo() {
		super();
	}

	public MemberVo(int no, String name, String email, String password, 
			String createDate, String modifyDate) {
		super();
		this.no = no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
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

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", name=" + name + ", email=" + email + ","
				+ "password=" + password + ", createDate="
				+ createDate + ", modifyDate=" + modifyDate + "]";
	}

}
