package com.kgucs.controller;

import java.io.IOException;
import java.util.List;
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
import com.kgucs.dao.book.BookVo;
import com.kgucs.dao.equipment.EquipmentDao;
import com.kgucs.dao.equipment.EquipmentVo;
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
			if((String) request.getSession().getAttribute("whereToGo") == null)		// 로그인 페이지로 직접 들어온 경우
				response.sendRedirect(ssi.getPath());
			else
				response.sendRedirect((String) request.getSession().getAttribute("whereToGo"));
		} else { // 로그인 실패!
			response.sendRedirect(ssi.getPath() + "login");
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
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		HttpSession session = request.getSession();
		MemberVo memberVo = (MemberVo) session.getAttribute("memberVo");
		
		BookDao bookDao = new BookDao();
		List<BookVo> bookList = bookDao.selectByBorrowedMemberIndex(memberVo.getIndex());
		
		EquipmentDao equipmentDao = new EquipmentDao();
		List<EquipmentVo> equipmentList = equipmentDao.selectByBorrowedMemberIndex(memberVo.getIndex());
		
		model.addAttribute("bookList", bookList);
		model.addAttribute("equipmentList", equipmentList);
		
		return "profile";
	}
	
	@RequestMapping(value = "/change-password", method = RequestMethod.POST)
	public String changePassword(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		HttpSession session = request.getSession();
		MemberVo currentMemberVo = (MemberVo) session.getAttribute("memberVo");
		
		MemberDao dao = new MemberDao();
		
		if(dao.selectByIdAndPassword(currentMemberVo.getId(), (String)request.getParameter("current")).getIndex() != 0) {
			// 입력한 비밀번호가 맞음.
			// 비밀번호 변경 하기
			
			// 필드 중복 사용 문제로 다시 생성해야함.
			dao = new MemberDao();
			if(dao.updatePasswordByIndex((String) request.getParameter("new"), currentMemberVo.getIndex()) == 1) {
				session.removeAttribute("memberVo");
				model.addAttribute("script", "alert('비밀번호가 성공적으로 변경되었습니다. 바뀐 비밀번호로 로그인해주세요.');"
						+ "location.href='" + ssi.getPath());
				return "script";
			} else {
				model.addAttribute("script", "alert('1비밀번호 변경 중 문제가 발생했습니다. 다시 시도해주세요.');"
						+ "history.go(-1);");
				return "script";
			}
				
		}
		
		// 이전에 있던 페이지로 돌려보낸다.
		model.addAttribute("script", "alert('2비밀번호 변경 중 문제가 발생했습니다. 다시 시도해주세요.');"
				+ "history.go(-1);");
		return "script";	
	}
}
