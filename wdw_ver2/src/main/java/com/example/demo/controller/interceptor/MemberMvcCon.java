package com.example.demo.controller.interceptor;

import javax.annotation.Resource;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan("com.example.demo")
public class MemberMvcCon implements WebMvcConfigurer {

	@Resource
	MemberInterceptor memIntercept;
	
	// 인터셉터에 들어오는 패턴을 설정 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(memIntercept).addPathPatterns("/login/login/loginReg");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
}
