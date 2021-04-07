package com.example.demo.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.example.demo.model.Cate;

@Service
public class MemberInterceptor extends HandlerInterceptorAdapter{

	// 세션정보를 확인해서 이동시킬 url 설정
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("member");
		
		if(obj == null) {
			response.sendRedirect("/login/login/login");	
		}
		
		
	}
}
