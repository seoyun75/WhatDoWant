<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div id="wrap container">
   <div class="mp_title">마이페이지</div>
   <div class="mp_nav">

        <ul>
            <a href="/mypage/wallet/wallet">내지갑</a>
            <a href="/mypage/activity/shopping">내활동</a>
            <a href="/mypage/mypageMain/myInfo" >설정</a>
        </ul>

    </div>
    <div id="contents">
    	<div class="cont_QnA">
            <div class="side_title">왓두원에 문의하기</div>
            <button onclick="location.href='QnAForm'">1:1 문의하기</button> 
        </div>
        <div class="side_title ">내 문의글</div>
        	<div>
        		<div class="listTitle">왓두원에 궁금해요</div>
		        <div class="my_qna">
		            <div class="titles">
		                <table class="table">
		                  <thead>
		                    <tr class="table-active">
		                      <th scope="col">작성일</th>
		                      <th scope="col">제목</th>
		                      <th scope="col">내용</th>
		                      <th scope="col">답변</th>
		                    </tr>
		                  </thead>
		                  <tbody class="list">
		<c:forEach items="${data['svoList'] }" varStatus="no" var="svoData">                  	
		                    <tr class="svo">
		                      <th scope="row">
		                      	<fmt:formatDate value="${svoData.si_regdate}" pattern="yy년 MM월 dd일"/>
		                      	
		                      </th>
		                      <td><a href="/mypage/activity/QnAReg?si_no=${svoData.si_no }">[${svoData.si_cate}]${svoData.si_title}</a></td>
		                      <td>${svoData.si_content.split('<')[0] }</td>
		               <c:choose>
		               		<c:when test="${svoData.si_answar.equals('답변확인') }">
		               		<c:set var="answar_no" value="${data['answar_no'] }"/>
		                      <td class="chkAnswar"><button onclick="location.href='QnAAnswar?si_no=${svoData.si_no}'">${svoData.si_answar }</button></td>
		               		</c:when>
		               		<c:otherwise>
		                      <td class="chkAnswar">${svoData.si_answar }</td>		               			
		               		</c:otherwise>
		               </c:choose>
		                    </tr>
		</c:forEach>       
		    
		                  </tbody>
		                </table>
		            </div>
		            
		        </div>
        	</div>
        	<div>
        		<div class="listTitle">프로젝트에 궁금해요</div>
		        <div class="my_qna">
		            <div class="titles">
		                <table class="table">
		                  <thead>
		                    <tr class="table-active list">
		                      <th scope="col-1">작성일</th>
		                      <th scope="col-3">제목</th>
		                      <th scope="col-5">내용</th>
		                    </tr>
		                  </thead>
		                  <tbody>
		<c:forEach items="${data['pbvoList'] }" varStatus="no" var="pbvo">                  	
		                    <tr class="list">
		                      <th scope="row">
		                      	<fmt:formatDate value="${pbvo.project_board_regdate}" pattern="yy년 MM월 dd일"/>
		                      </th>
		                      <td><a href="/mypage/activity/QnAReg?si_no=${pbvo.project_board_no }">[${pbvo.project_board_cate}]${pbvo.project_board_title}</a></td>
		                      <td>${pbvo.project_board_content }</td>
		                    </tr>
		</c:forEach>       
		    
		                  </tbody>
		                </table>
		            </div>
		            
		        </div>
        	</div>
    </div>
</div>