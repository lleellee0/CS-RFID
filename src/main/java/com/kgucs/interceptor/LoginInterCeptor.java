package com.kgucs.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kgucs.dao.member.MemberVo;
import com.kgucs.setting.SingletonSetting;

public class LoginInterCeptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		HttpSession session = request.getSession();
		System.out.println(request.getRequestURI());
		session.setAttribute("whereToGo", request.getRequestURI());
		// 로그인에 성공하면 이동해야할 곳(사용자가 가려고 했던 곳)의 URL 저장.
		
		MemberVo memberVo = (MemberVo) request.getSession().getAttribute("memberVo");
		
		try {
			// logininfo 세션값이 널일경우
			if (memberVo == null) {
				// 로그인페이지로 redirect
				SingletonSetting ssi = SingletonSetting.getInstance();
				response.sendRedirect(ssi.getPath() + "login");

				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 널이 아니면 정상적으로 컨트롤러 호출
		return true;
	}
}