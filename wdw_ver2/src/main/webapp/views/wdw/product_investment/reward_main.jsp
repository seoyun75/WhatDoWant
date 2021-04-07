<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${path }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	$(document).ready(function(){
		var arr = $(".wrapper").length;
			
		for(var i = 0; i < arr; i++){
			var ss = $(".wrapper_"+i).attr("el");
			var px = parseInt(ss);
			if(px > 100){
				px = 100;
			}
			
			$(".wrapper_"+i).animate(
				{"width":px+"%"},1500
			) 
		} 			
	})		
</script>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품투자 - 진행중</title>
	</head>
	<body>
		<div id="reward">
			<div id="r_list">
				<div class="fund_menu">
					<div class="f_t_menu">
						<p>진행중</p>
					</div>
					<div class="f_f_menu">
						<div id="sp_wrap">
							<span id="now"><a href = "reward_main?pro_state=진행&pro_cate">진행중</a></span> 
		                    <span class="f_f_menu_li"><a href="earlybird_main?pro_state=얼리버드&pro_cate">얼리버드</a></span> 
		                    <!-- <span class="f_f_menu_li"><a href="openExpected_main?pro_state=대기&pro_cate">오픈예정</a></span> --> 
		                    <span class="f_f_menu_li"><a href="End_main?pro_state=종료&pro_cate">종료</a></span>
						</div>
					</div>
				</div>
			</div>
			<div id="cate">
				<div id="cate_sec">
					<div id="cate_wrap">
						<ul class="cate_list">
							<li><a href = "?pro_state=진행&pro_cate">전체보기</a></li>
							<li><a href = "?pro_state=진행&pro_cate=테크/가전">테크·가전</a></li>
							<li><a href = "?pro_state=진행&pro_cate=패션/잡화">패션·잡화</a></li>
							<li><a href = "?pro_state=진행&pro_cate=뷰티">뷰티</a></li>
							<li><a href = "?pro_state=진행&pro_cate=푸드">푸드</a></li>
							<li><a href = "?pro_state=진행&pro_cate=홈리빙">홈리빙</a></li>
							<li><a href = "?pro_state=진행&pro_cate=반려동물">반려동물</a></li>
						</ul>
					</div>
				</div>
			</div>
	
			<div id="all">
				<div class="all_product">
					<ul>
					<c:forEach var = "vo" items = "${data}" varStatus="no">
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
									<%-- <p>${vo.pro_content }</p> --%>
								</div>
								<!-- 상품 카테고리 / 등록자 div -->
								<div class="product_info">
									<p>${vo.pro_cate }</p>
								</div>
								<!-- 상품 후원금액 바 -->
								<div id="gage_wrapper" class="wrapper">
									<fmt:formatNumber var="pp" value="${vo.pro_now_amount/vo.pro_target_amount }"  type="number" pattern=".0%"/>
									<div id="gage_bar" class="wrapper_${no.index }"  el="${pp }">
									<p>${pp }</p>
									</div>
								</div>
								<!-- 상품 진행 div -->
								<div class="product_progress">
									<div id="per">
										<p>${vo.pro_state }%</p>
									</div>
									<div id="price">
										<p><fmt:formatNumber value="${vo.pro_now_amount }" type="number" maxFractionDigits="3"/>원</p>
									</div>
									<div id="day">
										<p>${vo.pro_dday}일</p>
									</div>
								</div>
							</div>
						</li>
						</c:forEach>
						
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>