<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${path }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber value="${vo.pro_target_amount }" pattern="0,000.00"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품투자 - 얼리버드</title>
	</head>
	<body>
		<div id="reward">
		<div id="r_list">
			<div class="fund_menu">
				<div class="f_t_menu">
					<p>얼리버드</p>
				</div>
				<div class="f_f_menu">
					<div id="sp_wrap">
						<span class="f_f_menu_li"><a href = "reward_main?pro_state=진행&pro_cate">진행중</a></span>
						<span id="now"><a href="earlybird_main?pro_state=얼리버드&pro_cate">얼리버드</a></span> 
						<!-- <span class="f_f_menu_li"><a href="openExpected_main?pro_state=대기&pro_cate">오픈예정</a></span> --> 
						<span class="f_f_menu_li"><a href="End_main?pro_state=종료&pro_cate">종료</a></span>
					</div>
				</div>
			</div>
		</div>
		<div id="banner">얼리버드 공지</div>
		<div id="all">
			<div class="all_product">
				<ul>
					<c:forEach var = "vo" items = "${data}">
						<li>
							<!-- 상품 상단 div -->
							<div id="li_t">
								<a href="/infund/detail/detail_story?pro_state=${vo.pro_state}&pro_cate=${vo.pro_cate}&pro_code=${vo.pro_code }">
									<img src="/img_up/project/${vo.pro_code }/${vo.pro_img}" alt="">
								</a>
							</div> <!-- 상품 하단 div -->
							<div id="li_f">
								<!-- 상품 제목 div -->
								<div class="product_subject">
									<a href="/infund/detail/detail_story?pro_state=${vo.pro_state}&pro_cate=${vo.pro_cate}&pro_code=${vo.pro_code }">
										<p>${vo.pro_title }</p>
									</a>
								</div>
								<!-- 상품 내용 div -->
								<div class="product_content">
									<p></p>
								</div>
								<!-- 상품 카테고리 / 등록자 div -->
								<div class="product_info">
									<p>${vo.pro_cate }</p>
								</div>
								<!-- 상품 후원금액 바 -->
								<div id="gage_wrapper">
									<div id="gage_bar">
										<p>${vo.pro_state }%</p>
									</div>
								</div>
								<!-- 상품 진행 div -->
								<div class="product_progress">
									<div id="per">
										<p>${vo.pro_state }%</p>
									</div>
									<div id="price">
										<p><fmt:formatNumber value="${vo.pro_now_amount }" pattern="#,##0"/>원</p>
									</div>
									<div id="day">
										<p>${vo.pro_dday}일</p>
									</div>
								</div>
							</div>
						</li>
						</c:forEach>
					<%-- <li>
						<!-- 상품 상단 div -->
						<div id="li_t">
							<a href="project/detail/detail_story"><img src="${pageContext.request.contextPath}/resources/img/product_investment/goods2.jpg"
								alt=""></a>
						</div> <!-- 상품 하단 div -->
						<div id="li_f">
							<!-- 상품 제목 div -->
							<div class="product_subject">
								<a href="project/detail/detail_story"><p>서른가지 스톤을 셋팅 할 수 있는 팬던트
										"별을 따다줄게"</p></a>
							</div>
							<!-- 상품 내용 div -->
							<div class="product_content">
								<p>네가지 종류의 팬던트에 서른가지 스톤, 얼리버드를 위한 60개의 열쇠팬던트까지 !</p>
							</div>
							<!-- 상품 카테고리 / 등록자 div -->
							<div class="product_info">
								<p>쥬얼리 | 월창 月暢</p>
							</div>
							<!-- 상품 후원금액 바 -->
							<div id="gage_wrapper">
								<div id="gage_bar_full">
									<p>325%</p>
								</div>
							</div>
							<!-- 상품 진행 div -->
							<div class="product_progress">
								<div id="per">
									<p>325%</p>
								</div>
								<div id="price">
									<p>3,665,000원</p>
								</div>
								<div id="day">
									<p>23일 남음</p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<!-- 상품 상단 div -->
						<div id="li_t">
							<a href="../detail/detail_story"><img src="${pageContext.request.contextPath}/resources/img/product_investment/goods5.jpg"
								alt=""></a>
						</div> <!-- 상품 하단 div -->
						<div id="li_f">
							<!-- 상품 제목 div -->
							<div class="product_subject">
								<a href="../detail/detail_story"><p>귀여운 2021년을 위한 '고양이는 정말
										귀여워' 다이어리</p></a>
							</div>
							<!-- 상품 내용 div -->
							<div class="product_content">
								<p>100만 다운로드 힐링 게임! '고양이는 정말 귀여워' 다이어리와 굿즈를 소개합니다.</p>
							</div>
							<!-- 상품 카테고리 / 등록자 div -->
							<div class="product_info">
								<p>문구 · 캘린더 | 아르테팝</p>
							</div>
							<!-- 상품 후원금액 바 -->
							<div id="gage_wrapper">
								<div id="gage_bar_lower">
									<p>12%</p>
								</div>
							</div>
							<!-- 상품 진행 div -->
							<div class="product_progress">
								<div id="per">
									<p>12%</p>
								</div>
								<div id="price">
									<p>1,209,000원</p>
								</div>
								<div id="day">
									<p>29일 남음</p>
								</div>
							</div>
						</div>
					</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품10</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품20</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품30</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품</li>
					<li>상품40</li> --%>
				</ul>
			</div>
		</div>
	</div>
	</body>
</html>