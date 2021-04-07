package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AController {

	@RequestMapping("/comeonman")
	void come(HttpServletRequest req) {
		System.out.println((String)req.getParameter("customer_uid"));
	}
}
