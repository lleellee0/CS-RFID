package com.kgucs.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgucs.dao.actionlog.ActionLogDao;
import com.kgucs.dao.actionlog.ActionLogVo;
import com.kgucs.dao.book.BookDao;
import com.kgucs.dao.book.BookVo;
import com.kgucs.dao.equipment.EquipmentDao;
import com.kgucs.dao.equipment.EquipmentVo;
import com.kgucs.dao.member.MemberDao;
import com.kgucs.dao.member.MemberVo;
import com.kgucs.setting.SingletonSetting;

@Controller
public class BorrowController {
	private static final Logger logger = LoggerFactory.getLogger(BorrowController.class);
	
	@RequestMapping(value = "/borrow/book/{rfid}", method = RequestMethod.GET)
	public String borrowBook(Locale locale, Model model, @PathVariable("rfid") int rfid) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
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
		
		return "borrow";
	}
	
	@RequestMapping(value = "/borrow/book/{rfid}", method = RequestMethod.POST)
	public String borrowBookCheck(Locale locale, Model model, @PathVariable("rfid") int rfid,
			HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = dao.selectByRfid(rfid);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
			model.addAttribute("alert", true);
			System.out.println(1);
		} else {
			// 대출처리
			HttpSession session = request.getSession();
			MemberVo memVo = (MemberVo) session.getAttribute("memberVo");
			
			vo.setBorrowed_member_index(memVo.getIndex());
			dao.update(vo);
			
			// action_log에 로그남기기
			ActionLogDao logDao = new ActionLogDao();
			ActionLogVo logVo = new ActionLogVo("book", vo.getIndex(), "borrow", memVo.getIndex());
			
			logDao.insert(logVo);
		}
		model.addAttribute("type", "book");	// writer와 publisher를 추가해주기 위해.
		
		return "borrow";
	}
	
	@RequestMapping(value = "/borrow/equipment/{rfid}", method = RequestMethod.GET)
	public String borrowEquipment(Locale locale, Model model, @PathVariable("rfid") int rfid) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
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
		
		return "borrow";
	}
	
	@RequestMapping(value = "/borrow/equipment/{rfid}", method = RequestMethod.POST)
	public String borrowEquipmentCheck(Locale locale, Model model, @PathVariable("rfid") int rfid,
			HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = dao.selectByRfid(rfid);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
			model.addAttribute("alert", true);
		} else {
			//대여처리
			HttpSession session = request.getSession();
			MemberVo memVo = (MemberVo) session.getAttribute("memberVo");
			
			vo.setBorrowed_member_index(memVo.getIndex());
			dao.update(vo);
			
			// action_log에 로그남기기
			ActionLogDao logDao = new ActionLogDao();
			ActionLogVo logVo = new ActionLogVo("equipment", vo.getIndex(), "borrow", memVo.getIndex());
			
			logDao.insert(logVo);
		}
		
		return "borrow";
	}
}
