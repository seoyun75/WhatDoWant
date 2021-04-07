<%@page import="com.example.demo.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	MemberVO user = (MemberVO)session.getAttribute("member");
	int memCode = user.getMember_no();
%>
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
        <div class = "cont row justify-content-center" style=" overflow=auto; ">
            <div class="second_nav clear col-2">
                <ul>
                    <li><a href="shopping">펀딩 현황</a></li>
                    <li><a href="fundingReg">등록한 프로젝트</a></li>
                    <li><a href="QnAlist">문의하기</a></li>

                </ul>
            </div>
            <div class="cont_main col-9 clear">
                <div class="cont_newFunding">
                    <div class="side_title">당신의 프로젝트를 등록하세요</div>
                    <button onclick="location.href='/project_up/project_up/funding_establishment'">프로젝트 등록하기</button> 
                </div>
                <div class="cont_sell">
                    <div class="side_title">등록한 프로젝트</div>
                        <div>
                        	<div class="state">제출 전 프로젝트</div>
	                        <div class="row row-cols-1 row-cols-md-3">
							
				<c:forEach items="${data['입력중'] }" var="item" varStatus="i">
	                          <div class="fd_product col mb-4">
	                            <div class="card h-100" style="width: 17rem;">
	                              <img src="../../resources/img/mypage/product01.png" class="card-img-top" alt="상품">
	                              <div class="card-body">
	                                <h4 class="card-title">${item.pro_title }</h4>
	                                <p class="card-text">
	                                ${item.pro_content }</p>
	                                <p class="card-text">
	                                ${item.pro_state}</p>
	                                <a href="/project_up/project_up/funding_first?pro_no=${item.pro_code }&memCode=<%=memCode %>" class="btn btn-primary">프로젝트 관리</a>
	                                <a href="deleteProject?pro_code=${item.pro_code }" class="btn btn-primary">삭제</a>
	                              </div>
	                            </div>
	                          </div>
	</c:forEach>
	
	                        </div>
                        </div>
                        <div>
                        	<div class="state">검수중인 프로젝트</div>
	                        <div class="row row-cols-1 row-cols-md-3">
							
				<c:forEach items="${data['검수'] }" var="item" varStatus="i">
	                          <div class="fd_product col mb-4">
	                            <div class="card h-100" style="width: 17rem;">
	                              <img src="../../resources/img/mypage/product01.png" class="card-img-top" alt="상품">
	                              <div class="card-body">
	                                <h4 class="card-title">${item.pro_title }</h4>
	                                <p class="card-text">
	                                ${item.pro_content }</p>
	                                <p class="card-text">
	                                ${item.pro_state}</p>
	                                <a class="link" class="btn btn-primary">검수 중 입니다</a>
	                              </div>
	                            </div>
	                          </div>
	</c:forEach>
	
	                        </div>
                        </div>
                        <div>
                        	<div class="state">진행된 프로젝트</div>
	                        <div class="row row-cols-1 row-cols-md-3">
							
				<c:forEach items="${data['종료'] }" var="item" varStatus="i">
	                          <div class="fd_product col mb-4">
	                            <div class="card h-100" style="width: 17rem;">
	                              <img src="../../resources/img/mypage/product01.png" class="card-img-top" alt="상품">
	                              <div class="card-body">
	                                <h4 class="card-title">${item.pro_title }</h4>
	                                <p class="card-text">
	                                ${item.pro_content }</p>
	                                <p class="card-text">
	                                ${item.pro_state}</p>
	                                <a href="/project_up/project_after/after_fundingStatus?pro_code=${item.pro_code }" class="btn btn-primary">프로젝트 관리</a>
	                              </div>
	                            </div>
	                          </div>
	</c:forEach>
	
	                        </div>
                        </div>
                    </div>    
                </div>
            </div>   
        </div>
    </div>