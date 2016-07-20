package com.kgucs.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kgucs.dao.book.BookDao;
import com.kgucs.dao.equipment.EquipmentDao;
import com.kgucs.dao.member.MemberDao;
import com.kgucs.dao.member.MemberVo;
import com.kgucs.setting.SingletonSetting;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		MemberDao memberDao = new MemberDao();
		model.addAttribute("memberCount", memberDao.getCount());
		
		BookDao bookDao = new BookDao();
		model.addAttribute("bookCount", bookDao.getCount());
		model.addAttribute("bookUsedCount", bookDao.getUsedCount());
		
		EquipmentDao equipmentDao = new EquipmentDao();
		model.addAttribute("equipmentCount", equipmentDao.getCount());
		model.addAttribute("equipmentUsedCount", equipmentDao.getUsedCount());

		return "index";
	}

	@RequestMapping(value = "/howtouse", method = RequestMethod.GET)
	public String howToUse(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "howtouse";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "about";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login_check(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		MemberDao dao = new MemberDao();
		MemberVo vo = dao.selectByIdAndPassword(request.getParameter("id"), request.getParameter("password"));

		if (vo.getId() != null) { // 로그인 성공!
			request.getSession().setAttribute("memberVo", vo);
			response.sendRedirect((String) request.getSession().getAttribute("whereToGo"));
		} else { // 로그인 실패!
			response.sendRedirect(ssi.getPath() + "/login");
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		HttpSession session = request.getSession();
		session.removeAttribute("memberVo");
		
		// 이전에 있던 페이지로 돌려보낸다.
		// 만약 로그인이 필요한 페이지였다면 인터셉터에서 알아서 처리할 것이다.
		response.sendRedirect(request.getHeader("referer"));	
	}
}
