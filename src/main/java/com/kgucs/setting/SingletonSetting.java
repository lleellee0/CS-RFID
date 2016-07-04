package com.kgucs.setting;

import org.springframework.ui.Model;

public class SingletonSetting {
	private static SingletonSetting instance = new SingletonSetting();
	
	private String path = "/controller";
	
	private SingletonSetting() {}
	public static SingletonSetting getInstance() {
		return instance;
	}
	
	public String getPath() { return path; }
	
	public void setAllParameter(Model model) {
		model.addAttribute("path", path);
	}
}
