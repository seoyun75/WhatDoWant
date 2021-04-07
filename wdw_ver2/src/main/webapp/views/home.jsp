<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home 페이지 입니다.</title>
</head>
<body>
<h1>home 페이지 입니다.</h1>
<h2>data</h2>
<a href="/data/mav">modelAndView</a>	
<a href="/data/model">model</a>
<h2>request</h2>
<a href="/request/get1?id=ccc&age=34&marriage=false">get1</a>
<a href="/request/get2?id=ddd&age=26&marriage=true">get2</a>
<a href="/request/get3?id=eee&age=19&marriage=false">get3</a>
<a href="/request/form">form</a>
<a href="/request/list">list</a>
<h2>file</h2>
<a href="/file/form">form</a>
<h2>cookie</h2>
<a href="/cookie/make">make</a>
<a href="/cookie/view">view</a>
<a href="/cookie/modify">modify</a>
<a href="/cookie/delete">delete</a>
<h2>session</h2>
<a href="/session/make">make</a>
<a href="/session/view">view</a>
<a href="/session/modify">modify</a>
<a href="/session/delete">delete</a>
<a href="/session/loginMain">loginMain</a>
<h2>etc</h2>
<a href="/etc/param">param</a>
<a href="/etc/rrr">rrr</a>
<a href="/validator">validator</a>
<a href="/etc/init?name=asdf">init_1</a>
<a href="/etc/init?name=asdf&birth=2020-03-20">init_2</a>
<h2>path</h2>
<a href="/ppp/prod/list">prod/list</a>
<h2>model</h2>
<a href="/model/model_1">model_1</a>
<a href="/model/model_2">model_2</a>
<a href="/modelMenu/notice/list">/modelMenu/notice/list</a>
<h2>interceptor</h2>
<a href="/interceptor/event">event</a>
<h2>mybatis</h2>
<a href="/board/list">list</a>
<h2>detail</h2>
<a href="wdw/detail/detail_community">test</a>
</body>
</html>