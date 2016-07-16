package com.kgucs.dao.member;

public class MemberVo {
	/*
	 * Field
	 */
	int index;
	String id;
	String password;
	String std_number;
	String name;
	int member_level;
	
	/*
	 * Constructor
	 */
	public MemberVo() {} // No-arg Constructor
	public MemberVo(String id, String password, String std_number, String name, int member_level) {
		this.id = id;
		this.password = password;
		this.std_number = std_number;
		this.name = name;
		this.member_level = member_level;
	}
	public MemberVo(int index, String id, String password, String std_number, String name, int member_level) {
		this.index = index;
		this.id = id;
		this.password = password;
		this.std_number = std_number;
		this.name = name;
		this.member_level = member_level;
	}
	
	/*
	 * Getter & Setter
	 */
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStd_number() {
		return std_number;
	}
	public void setStd_number(String std_number) {
		this.std_number = std_number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMember_level() {
		return member_level;
	}
	public void setMember_level(int member_level) {
		this.member_level = member_level;
	}
}
