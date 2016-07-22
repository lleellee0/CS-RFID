package com.kgucs.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgucs.dao.actionlog.ActionLogDao;
import com.kgucs.dao.book.BookDao;
import com.kgucs.dao.book.BookVo;
import com.kgucs.dao.equipment.EquipmentDao;
import com.kgucs.dao.equipment.EquipmentVo;
import com.kgucs.dao.member.MemberDao;
import com.kgucs.dao.member.MemberVo;
import com.kgucs.setting.SingletonSetting;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/admin/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		logger.info("admin Page!! The client locale is {}.", locale);
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		return "admin/admin";
	}
	
	@RequestMapping(value = "/admin/action-list", method = RequestMethod.GET)
	public String actionList(Locale locale, Model model) {
		logger.info("admin Page!! The client locale is {}.", locale);
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		ActionLogDao dao = new ActionLogDao();
		
		model.addAttribute("actionList", dao.selectAllActions());
		
		return "admin/action_list";
	}
	
	@RequestMapping(value = "/admin/book/regist", method = RequestMethod.POST)
	public void bookRegist(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		
		if(dao.selectByRfid(Integer.parseInt(request.getParameter("rfid"))).getIndex() == 0) {	// 없으면..
			BookVo vo = new BookVo(Integer.parseInt(request.getParameter("rfid")),
					request.getParameter("title"),
					request.getParameter("writer"),
					request.getParameter("publisher"),
					request.getParameter("content"),
					request.getParameter("img"),
					0,
					"");
			
			dao.insert(vo);
			response.sendRedirect(ssi.getPath() + "/admin/admin#counters2-8");
		} else {	// 있으면
			response.sendRedirect(ssi.getPath() + "/admin/book/regist/fail/" + request.getParameter("rfid"));
		}
		
	}
	
	@RequestMapping(value = "/admin/book/regist/fail/{rfid}", method = RequestMethod.GET)
	public String bookRegistFail(Locale locale, Model model,@PathVariable("rfid") int rfid, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = dao.selectByRfid(rfid);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
		}
		model.addAttribute("type", "book");	// writer와 publisher를 추가해주기 위해.
		model.addAttribute("errorMessage", "이 책과 RFID 값이 동일합니다.");

		return "details";
	}
	
	@RequestMapping(value = "/admin/equipment/regist", method = RequestMethod.POST)
	public void equipmentRegist(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		if(dao.selectByRfid(Integer.parseInt(request.getParameter("rfid"))).getIndex() == 0) {	// 없으면..
			EquipmentVo vo = new EquipmentVo(Integer.parseInt(request.getParameter("rfid")),
				request.getParameter("title"),
				request.getParameter("content"),
				request.getParameter("img"),
				0,
				"");
		
			dao.insert(vo);
			response.sendRedirect(ssi.getPath() + "/admin/admin#counters2-9");
		} else {
			response.sendRedirect(ssi.getPath() + "/admin/equipment/regist/fail/" + request.getParameter("rfid"));
		}
	}
	
	@RequestMapping(value = "/admin/equipment/regist/fail/{rfid}", method = RequestMethod.GET)
	public String equipmentRegistFail(Locale locale, Model model,@PathVariable("rfid") int rfid, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = dao.selectByRfid(rfid);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
		}
		model.addAttribute("type", "details");	// writer와 publisher를 추가해주기 위해.
		model.addAttribute("errorMessage", "이 장비와 RFID 값이 동일합니다.");

		return "details";
	}
	
	@RequestMapping(value = "/admin/book/edit/{index}", method = RequestMethod.GET)
	public String bookEditForm(Locale locale, Model model,@PathVariable("index") int index, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 수정하고나서 다시 Details로 돌아갈 수 있도록 하기 위해.
		request.getSession().setAttribute("whereToGo", request.getHeader("referer"));
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = dao.selectByIndex(index);
		
		model.addAttribute("details", vo);

		return "admin/book_edit";
	}
	
	@RequestMapping(value = "/admin/book/edit/{index}", method = RequestMethod.POST)
	public String bookEdit(Locale locale, Model model,@PathVariable("index") int index, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = new BookVo(index, Integer.parseInt(request.getParameter("rfid")),
				request.getParameter("title"),
				request.getParameter("writer"),
				request.getParameter("publisher"),
				request.getParameter("content"),
				request.getParameter("img")
		);
		
		dao.update(vo);

		model.addAttribute("script", "location.replace('" + ssi.getPath() + "/list/book/details/" + index +"');");		// 뒤로가기하면 Edit 창이 뜬당..
		return "script";
	}
	
	@RequestMapping(value = "/admin/equipment/edit/{index}", method = RequestMethod.GET)
	public String equipmentEditForm(Locale locale, Model model,@PathVariable("index") int index, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 수정하고나서 다시 Details로 돌아갈 수 있도록 하기 위해.
		request.getSession().setAttribute("whereToGo", request.getHeader("referer"));
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = dao.selectByIndex(index);
		
		model.addAttribute("details", vo);

		return "admin/equipment_edit";
	}
	
	@RequestMapping(value = "/admin/equipment/edit/{index}", method = RequestMethod.POST)
	public String equipmentEdit(Locale locale, Model model,@PathVariable("index") int index, 
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = new EquipmentVo(index, Integer.parseInt(request.getParameter("rfid")),
				request.getParameter("title"),
				request.getParameter("content"),
				request.getParameter("img")
		);
		
		dao.update(vo);

		model.addAttribute("script", "location.replace('" + ssi.getPath() + "/list/equipment/details/" + index +"');");		// 뒤로가기하면 Edit 창이 뜬당..
		return "script";
	}
}
