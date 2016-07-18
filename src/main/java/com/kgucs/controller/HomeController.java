package com.kgucs.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kgucs.dao.book.BookDao;
import com.kgucs.dao.book.BookVo;
import com.kgucs.dao.member.MemberDao;
import com.kgucs.dao.member.MemberVo;
import com.kgucs.setting.SingletonSetting;

import javafx.beans.binding.IntegerExpression;

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

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "index";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Locale locale, Model model) {
		list(locale, model, 1);
	}

	@RequestMapping(value = "/list/{page}", method = RequestMethod.GET)
	public String list(Locale locale, Model model, @PathVariable("page") int page) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		BookDao dao = new BookDao();

		model.addAttribute("list", dao.selectByPage(page));
		model.addAttribute("lastPageNumber", dao.getLastPageNumber());

		return "list";
	}

	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public HashMap<String, Object> listData(@RequestParam HashMap<String, Object> page) {

		System.out.println(page);
		System.out.println("page is " + page.get("page"));

		// your logic

		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		BookDao dao = new BookDao();
		List<BookVo> list = dao.selectByPage(Integer.parseInt((String)page.get("page")));
		
		for(int i = 0; i < list.size(); i++) {
			BookVo vo = list.get(i);
			String arr[] = new String[7];
			arr[0] = Integer.toString(vo.getIndex());
			arr[1] = vo.getImg();
			arr[2] = vo.getContent();
			arr[3] = vo.getTitle();
			arr[4] = vo.getWriter();
			arr[5] = vo.getPublisher();
			arr[6] = Integer.toString(vo.getBorrowed_member_index());
			hashmap.put(Integer.toString(i), arr);
		}

		return hashmap;
	}

	@RequestMapping(value = "/list/details/{index}", method = RequestMethod.GET)
	public String details(Locale locale, Model model, @PathVariable("index") int index) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "details";
	}

	@RequestMapping(value = "/howtouse", method = RequestMethod.GET)
	public String howToUse(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "howtouse";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "about";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login_check(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

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
}
