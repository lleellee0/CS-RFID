package com.kgucs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kgucs.dao.actionlog.ActionLogDao;
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
public class ListController {

	private static final Logger logger = LoggerFactory.getLogger(ListController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Locale locale, Model model) {
		list(locale, model, 1);
	}
	
	@RequestMapping(value = "/list/equipment/{page}", method = RequestMethod.GET)
	public String listEquipmenmt(Locale locale, Model model, @PathVariable("page") int page) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		BookDao bookDao = new BookDao();

		model.addAttribute("bookList", bookDao.selectByPage(page));
		model.addAttribute("bookLastPageNumber", bookDao.getLastPageNumber());
		
		EquipmentDao equipmentDao = new EquipmentDao();

		model.addAttribute("equipmentList", equipmentDao.selectByPage(page));
		model.addAttribute("equipmentLastPageNumber", equipmentDao.getLastPageNumber());
		
		ActionLogDao actionLogDao = new ActionLogDao();
		
		model.addAttribute("topThreeBooksList", actionLogDao.selectTopThreeBooks());
		
		return "list";
	}
	
	@RequestMapping(value = "/list/book/{page}", method = RequestMethod.GET)
	public String list(Locale locale, Model model, @PathVariable("page") int page) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);

		BookDao bookDao = new BookDao();

		model.addAttribute("bookList", bookDao.selectByPage(page));
		model.addAttribute("bookLastPageNumber", bookDao.getLastPageNumber());
		
		EquipmentDao equipmentDao = new EquipmentDao();

		model.addAttribute("equipmentList", equipmentDao.selectByPage(page));
		model.addAttribute("equipmentLastPageNumber", equipmentDao.getLastPageNumber());
		
		ActionLogDao actionLogDao = new ActionLogDao();
		
		model.addAttribute("topThreeBooksList", actionLogDao.selectTopThreeBooks());

		return "list";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/list/book", method = RequestMethod.POST)
	public HashMap<String, Object> bookListData(@RequestParam HashMap<String, Object> page) {

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
			if(vo.getBorrowed_member_index() == 0)
				arr[6] = "enabled";
			else
				arr[6] = "disabled";
			hashmap.put(Integer.toString(i), arr);
		}

		return hashmap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/list/equipment", method = RequestMethod.POST)
	public HashMap<String, Object> equipmentListData(@RequestParam HashMap<String, Object> page) {

		System.out.println(page);
		System.out.println("page is " + page.get("page"));

		// your logic

		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		EquipmentDao dao = new EquipmentDao();
		List<EquipmentVo> list = dao.selectByPage(Integer.parseInt((String)page.get("page")));
		
		for(int i = 0; i < list.size(); i++) {
			EquipmentVo vo = list.get(i);
			String arr[] = new String[5];
			arr[0] = Integer.toString(vo.getIndex());
			arr[1] = vo.getImg();
			arr[2] = vo.getContent();
			arr[3] = vo.getTitle();
			if(vo.getBorrowed_member_index() == 0)
				arr[4] = "enabled";
			else
				arr[4] = "disabled";
			hashmap.put(Integer.toString(i), arr);
		}

		return hashmap;
	}

	@RequestMapping(value = "/list/book/details/{index}", method = RequestMethod.GET)
	public String bookDetails(Locale locale, Model model, @PathVariable("index") int index) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		BookDao dao = new BookDao();
		BookVo vo = dao.selectByIndex(index);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
		}
		model.addAttribute("type", "book");	// writer와 publisher를 추가해주기 위해.

		return "details";
	}
	
	@RequestMapping(value = "/list/equipment/details/{index}", method = RequestMethod.GET)
	public String equipmentDetails(Locale locale, Model model, @PathVariable("index") int index) {
		logger.info("Welcome home! The client locale is {}.", locale);

		SingletonSetting ssi = SingletonSetting.getInstance();
		ssi.setAllParameter(model);
		
		EquipmentDao dao = new EquipmentDao();
		EquipmentVo vo = dao.selectByIndex(index);
		
		model.addAttribute("details", vo);
		if(vo.getBorrowed_member_index() != 0) {
			MemberDao memDao = new MemberDao();
			MemberVo memVo = memDao.selectByIndex(vo.getBorrowed_member_index());
			model.addAttribute("memberVo", memVo);
		}

		return "details";
	}
	
	@ResponseBody
	@RequestMapping(value = "/list/title", method = RequestMethod.POST)
	public HashMap<String, Object> bookTitleListData() {
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		BookDao bookDao = new BookDao();
		List<BookVo> bookList = bookDao.selectAll();
		
		for(int i = 0; i < bookList.size(); i++) {
			BookVo vo = bookList.get(i);
			String arr[] = new String[2];
			arr[0] = Integer.toString(vo.getIndex());
			arr[1] = vo.getTitle();
			hashmap.put(Integer.toString(i), arr);
		}

		return hashmap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/list/title/{title}", method = RequestMethod.POST)
	public HashMap<String, Object> bookTitleSearchListData(@PathVariable("title") String title) {
		System.out.println(title);
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		BookDao dao = new BookDao();
		List<BookVo> list = dao.selectByTitle(title);
		
		for(int i = 0; i < list.size(); i++) {
			BookVo vo = list.get(i);
			String arr[] = new String[7];
			arr[0] = Integer.toString(vo.getIndex());
			arr[1] = vo.getImg();
			arr[2] = vo.getContent();
			arr[3] = vo.getTitle();
			arr[4] = vo.getWriter();
			arr[5] = vo.getPublisher();
			if(vo.getBorrowed_member_index() == 0)
				arr[6] = "enabled";
			else
				arr[6] = "disabled";
			hashmap.put(Integer.toString(i), arr);
		}

		return hashmap;
	}
}
