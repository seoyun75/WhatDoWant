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
	<form action="/login/login/sendEmail" method="POST" id="wrap">
        <contents class="wdw intro-login">
            <div class="wdw sign-container">
                <div class="wdw sign-container form-container">
                    <h2 class="wdw title">비밀번호 찾기
                        <h3>비밀번호 찾기</h3>
                    </h2>
                    <div id="form-login" class="wdw form">
                        <h3>가입하셨던 이메일 계정을 입력하시면,</h3>
                        <h3>임시 비밀번호를 발송해드립니다.</h3>
                        <div class="field">
                            <div class="wdw input">
                                <input type="email" name="member_id" id="userId" class="input-email" placeholder="이메일 계정">
                            </div>
                        </div>
                        <input type="submit" class="wdw button submit-button" value="비밀번호 발송" />
                    </div>
                </div>
            </div>
        </contents>
    </form>
</body>
</html>