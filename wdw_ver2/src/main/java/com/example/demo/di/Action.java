package com.example.demo.di;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public interface Action {
				// parameter를 객체로 가져오기 위해 Object를 받음
	Object execute(HashMap<String, Object> map, HttpServletRequest req);
}
