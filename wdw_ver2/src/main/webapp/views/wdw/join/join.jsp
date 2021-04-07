<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">	
			<div id="content">
				<div id="c-area">
					<div id="c-join">
						<div class="greet">
							<h2>회원가입</h2>
							<h3>WDW 신규회원 가입하고</h3>
							<h3>다양한 혜택을 받아보세요.</h3>
						</div>
						<div class="choice-wdw">
							<input type="button" value="이메일로 가입" onclick="location.href='/join/join/joinForm'"/>
						</div>
						<div class="separation">    
							<span>또는</span>
						</div>
						<div class="login-member">
							<div class="login-text">
								이미 WDW 계정이 있나요?
								<a href="/login/login/login">로그인</a>
							</div>
						</div>
					</div>
					<div>
						<img src="/resources/img/join/gift.png" alt="" id="c-img"/>
					</div>
				</div>
			</div>
		</div>
</body>
</html>