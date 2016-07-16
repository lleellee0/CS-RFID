package com.kgucs.setting;

import org.springframework.ui.Model;

public class SingletonSetting {
	private static SingletonSetting instance = new SingletonSetting();
	
	private String path = "/controller";
	
	private String databaseUrl = "jdbc:mysql://localhost:3306/";
	private String databaseName = "csems";
	private String userName = "root";
	private String userPassword = "rfid123"; // Clab에 있는 노트북
	
	
	
	private SingletonSetting() {}
	public static SingletonSetting getInstance() {
		return instance;
	}
	
	public String getPath() { return this.path; }
	public String getDatabaseUrl() { return this.databaseUrl; }
	public String getDatabaseName() { return this.databaseName; }
	public String getUserName() { return this.userName; }
	public String getUserPassword() { return this.userPassword; }
	
	
	/*
	 * setAllParameter은 URL의 경로를 설정해준다.
	 * ex) <a class="text-white" href="${path}/">Home</a>
     *     <a class="text-white" href="${path}/list">list</a>
	 */
	public void setAllParameter(Model model) {
		model.addAttribute("path", path);
	}
}
