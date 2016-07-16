package com.kgucs.dao.book;

public class BookVo {
	int index;
	int rfid;
	String title;
	String writer;
	String publisher;
	String content;
	String img;
	int borrowed_member_index;
	String due_date;
	
	public BookVo() {}
	
	public BookVo(int index, int rfid, String title, String writer, String publisher,
			String content, String img, int borrowed_member_index, String due_date) {
		super();
		this.index = index;
		this.rfid = rfid;
		this.title = title;
		this.writer = writer;
		this.publisher = publisher;
		this.content = content;
		this.img = img;
		this.borrowed_member_index = borrowed_member_index;
		this.due_date = due_date;
	}
	
	public BookVo(int rfid, String title, String writer, String publisher, String content,
			String img, int borrowed_member_index, String due_date) {
		super();
		this.rfid = rfid;
		this.title = title;
		this.writer = writer;
		this.publisher = publisher;
		this.content = content;
		this.img = img;
		this.borrowed_member_index = borrowed_member_index;
		this.due_date = due_date;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getRfid() {
		return rfid;
	}

	public void setRfid(int rfid) {
		this.rfid = rfid;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getBorrowed_member_index() {
		return borrowed_member_index;
	}

	public void setBorrowed_member_index(int borrowed_member_index) {
		this.borrowed_member_index = borrowed_member_index;
	}

	public String getDue_date() {
		return due_date;
	}

	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
}
