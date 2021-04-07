package com.example.demo.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.example.demo.model.Cate;

@Service
public class Project_Interceptor extends HandlerInterceptorAdapter{

	// 세션정보를 확인해서 이동시킬 url 설정
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("member");
		
		if(obj == null) {
			response.sendRedirect("/infund/detail/detail_story?pro_state="+request.getParameter("pro_state")
					+"&pro_cate="+request.getParameter("pro_cate")+"&pro_code="+request.getParameter("pro_code"));
			return false;
		}
		
		return true;  
		
	}
	
}
