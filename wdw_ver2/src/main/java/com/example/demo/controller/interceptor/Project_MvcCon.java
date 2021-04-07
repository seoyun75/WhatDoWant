package com.example.demo.controller.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan("com.example.demo")
public class Project_MvcCon implements WebMvcConfigurer {

	@Resource
	Project_Interceptor ppIntercept;
	
	// 인터셉터에 들어오는 패턴을 설정 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		List<String> patterns =  new ArrayList<String>();
		patterns.add("/infund/detail/detail_fd_process");
		patterns.add("/infund/detail/detail_fd_process_view");
		patterns.add("/infund/payment/payment");
		patterns.add("/infund/payment/payment_reservation");
		patterns.add("/infund/payment/payment_reservation_finish");
		
		registry.addInterceptor(ppIntercept).addPathPatterns(patterns);
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
}
