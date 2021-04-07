<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/common/jquery-3.5.1.js"></script>
<script>
function fn_pwChk(){

	   $.ajax({
	       url: '/ajax/ajaxLogin/pwChk',
	       type: 'post',
	       dataType: 'json', //서버로부터 내가 받는 데이터의 타입
	       data: {"id" : $("#userId").val(),
		       	  "pw" : $("#password").val()},
	       success: function(data){
	          console.log(data)
	            if(data[0].result == 1){
	            	location.href="/main/main/main";
	            }else{
	               alert("비밀번호를 다시 확인해주세요.");
	            } 
	       },
	       error: function (){        
	    	   console.log("실패")
	       }
	     });
	}
		
</script>

</head>
<body>
	
	<contents class="wdw intro-login">
	    <div class="wdw sign-container">
	        <div class="wdw sign-container form-container">
	            <h2 class="wdw title">환영합니다<br>WDW입니다.</h2>
	            <div id="form-login" class="wdw form">
	                <div class="field">
	                    <div class="wdw input">
	                        <input type="email" name="member_id" id="userId" class="input-email" placeholder="이메일">
	                    </div>
	                </div>
	                <div class="field">
	                    <div class="wdw input">
	                        <input type="password" name="member_pw" id="password" class="password" placeholder="비밀번호">
	                    </div>
	                </div>
	                <div class="login-action">
	                    <div class="forgot">
	                        <a href="/login/login/find_pw">비밀번호 찾기</a>
	                    </div>
	                </div>
	                <input type="button" class="wdw button submit-button" onclick="fn_pwChk()" value="로그인"/>
	            </div>
	            <div class="separation">    
	                <span>또는</span>
	            </div>
	            <div class="bottom join-membership">
	                <div class="bottom text">
	                    아직 WDW 계정이 없으신가요?
	                    <a href="/join/join/join">회원가입</a>
	                </div>
	            </div>
	        </div>
	    </div>
	</contents>
    
</body>
</html>