package com.kgucs.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgucs.dao.book.BookDao;
import com.kgucs.dao.book.BookVo;
import com.kgucs.dao.equipment.EquipmentDao;
import com.kgucs.dao.equipment.EquipmentVo;
import com.kgucs.setting.SingletonSetting;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/admin/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		logger.info("admin Page!! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		return "admin/admin";
	}
	
	@RequestMapping(value = "/admin/book/regist", method = RequestMethod.POST)
	public void bookRegist(Locale locale, Model model, HttpServletRequest request) throws Exception {
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = new BookVo(Integer.parseInt(request.getParameter("rfid")),
				request.getParameter("title"),
				request.getParameter("writer"),
				request.getParameter("publisher"),
				request.getParameter("content"),
				request.getParameter("img"),
				0,
				"");
		
		dao.insert(vo);
	}
	
	@RequestMapping(value = "/admin/equipment/regist", method = RequestMethod.POST)
	public void equipmentRegist(Locale locale, Model model, HttpServletRequest request) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = new EquipmentVo(Integer.parseInt(request.getParameter("rfid")),
				request.getParameter("title"),
				request.getParameter("content"),
				request.getParameter("img"),
				0,
				"");
		
		dao.insert(vo);
	}
}
