package com.kgucs.dao.actionlog;

public class ActionLogVo {
	int index;
	String type;
	int type_index;
	String title;
	String action;
	int member_index;
	String std_number;
	String name;
	String action_date;
	
	public ActionLogVo() {}
	
	public ActionLogVo(String type, int type_index, String action, int member_index) {
		this.type = type;
		this.type_index = type_index;
		this.action = action;
		this.member_index = member_index;
	}
	
	public ActionLogVo(String type, int type_index, String action, int member_index, String action_date) {
		this.type = type;
		this.type_index = type_index;
		this.action = action;
		this.member_index = member_index;
		this.action_date = action_date;
	}
	
	public ActionLogVo(int index, String type, int type_index, String action, int member_index, String action_date) {
		super();
		this.index = index;
		this.type = type;
		this.type_index = type_index;
		this.action = action;
		this.member_index = member_index;
		this.action_date = action_date;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getType_index() {
		return type_index;
	}

	public void setType_index(int type_index) {
		this.type_index = type_index;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public int getMember_index() {
		return member_index;
	}

	public void setMember_index(int member_index) {
		this.member_index = member_index;
	}

	public String getAction_date() {
		return action_date;
	}

	public void setAction_date(String action_date) {
		this.action_date = action_date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
	
}
