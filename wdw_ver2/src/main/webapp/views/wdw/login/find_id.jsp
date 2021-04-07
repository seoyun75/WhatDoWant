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
	<form action="loginReg.jsp" method="POST" id="wrap"></form>
        <contents class="wdw intro-login">
            <div class="wdw sign-container">
                <div class="wdw sign-container form-container">
                    <h2 class="wdw title">아이디 · 비밀번호 찾기
                        <h3>아이디 찾기</h3>
                        <h3><a href="/wdw/login/find_pw">비밀번호 찾기</a></h3>
                    </h2>
                    <div id="form-login" class="wdw form">
                        <h3>소유하고 계신 이메일 계정을 입력해보세요</h3>
                        <h3>가입여부를 확인해드립니다.</h3>
                        <div class="field">
                            <div class="wdw input">
                                <input type="email" name="member_id" id="userId" class="input-email" placeholder="이메일 계정">
                            </div>
                        </div>
                        <button type="button" class="wdw button submit-button" onclick="location.href='../index.html'">조회</button>
                    </div>
                </div>
            </div>
        </contents>
    </form>
</body>
</html>