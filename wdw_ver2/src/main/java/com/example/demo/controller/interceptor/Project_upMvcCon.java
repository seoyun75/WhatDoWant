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
public class Project_upMvcCon implements WebMvcConfigurer {

	@Resource
	Project_upInterceptor proIntercept;
	
	// 인터셉터에 들어오는 패턴을 설정 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		List<String> patterns = new ArrayList<String>();
		patterns.add("/project_up/project_up/funding_establishment");
		patterns.add("/project_up/project_up/funding_establishment2");
		patterns.add("/project_up/project_up/funding_establishment3");
		patterns.add("/project_up/project_up/funding_establishment4");
		patterns.add("/project_up/project_up/funding_first");
		patterns.add("/project_up/project_up/funding_step1");
		patterns.add("/project_up/project_up/funding_step2");
		patterns.add("/project_up/project_up/funding_step3");
		patterns.add("/project_up/project_up/funding_step4");
		patterns.add("/project_up/project_up/funding_step5");
		patterns.add("/project_up/project_up/funding_step6");
		
		registry.addInterceptor(proIntercept).addPathPatterns(patterns);
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
	
}
