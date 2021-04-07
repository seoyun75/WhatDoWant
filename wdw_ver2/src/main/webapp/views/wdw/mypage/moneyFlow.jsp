<%@page import="com.example.demo.model.ProjectVO"%>
<%@page import="com.example.demo.model.PurhistoryVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
            <div class = "cont row justify-content-center">
                <div class="cont_main">
<c:set var="buy" value="${data['buy'] }"/>
<c:set var="sell" value="${data['sell'] }"/>
                   <div>
                        <div class="side_title">결재내역</div>
                        <div class="buy_pro">            


                            <div class="buy_title">
								<div class="name">상품명</div>
								<div>구매가격</div>
								<div>펀딩날짜</div>
							</div>
<c:forEach items="${buy }" var="bb">
                            <div class="buy_List">
                            	<div class="name">${bb.purhistory_reward }</div>
                            	<div>${bb.purhistory_amount }</div>
                            	<div>${bb.pur_funding_date_tostring}</div>
                            </div>
</c:forEach>                        

                        <div class="total">
                        	<div>
                        		총 결제금액 :
                        	</div>	
	                        <div>
	                        	<c:out value="${data['buyTot'] }"/>원
	                       	</div>
                   		</div>
                    </div>
               </div>
               <div>
                    <div class="side_title">수익내역</div>
                        <div  class="buy_pro">
                        	
                            <div class="buy_title">
								<div class="name">상품명</div>
								<div>수입</div>
								<div>펀딩기간</div>
							</div>
<c:forEach var="ss" items="${sell }">
                            <div class="buy_List sell">
                           	
								<div class="name">${ss.pro_title }</div>
								<div>${ss.pro_now_amount }</div>
								<div>
								${ss.pro_startdate }
									<fmt:formatDate value="${ss.pro_startdate }" pattern="yyyy년 MM월 dd일"/> ~ 
									<fmt:formatDate value="${ss.pro_endate }" pattern="yy년 MM월 dd일"/>									
								</div>
							</div>
</c:forEach>
                       	 	<div class="total">
                       	 		<div>
	                       	 		총 수입 :
                       	 		</div>
                       	 		<div>
	                       	 		<c:out value="${data['sellTot'] }"/>원
                       	 		</div>
                        	</div>
                   		</div>
                </div>   
            </div>
        </div>
    </div>
