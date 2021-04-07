<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	
	<script src="/resources/js/common/jquery-3.5.1.js"></script>
    <script src="/resources/js/common/jquery-ui.min.js"></script>
    <script src="/resources/js/common/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/common/bootstrap.min.js"></script>
    <script src="/resources/js/main/js5.js"></script>
    
    <link href="/resources/css/common/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/common/reset.css" rel="stylesheet">
	<link href="/resources/css/common/login.css" rel="stylesheet">		
	<link href="/resources/css/${cate.menu }/${cate.service }.css" rel="stylesheet">
	<link href="/resources/css/common/footer.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
			
<meta charset="UTF-8">
<title>wdw - 크라우드 펀딩</title>
</head>
<body>


 
<div id="wdw">
	<div id="header">
		<jsp:include page="${top }"></jsp:include>
	</div>
	<div id="content">
		<jsp:include page="${cate.mainUrl }"></jsp:include>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include>
	</div>
</div>
</body>
</html>