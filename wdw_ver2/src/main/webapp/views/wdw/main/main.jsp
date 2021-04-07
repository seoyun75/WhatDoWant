<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WDW - 크라우드 펀딩</title>
    <link href="/resources/css/main/js5.css" rel="stylesheet">
</head>
<body>
	<contents id="content_wrap">
        <div id="content">
            <div class="c top slider">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                       <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
	                      <div class="carousel-item active">
	                        <a href="${data.firstbanner.ban_url }"><img src="/img_up${data.firstbanner.ban_main_img }" class="d-block w-100" alt="..."></a>
	                      </div>
                      	  <c:forEach items="${data.bannerList }" var="bb" begin="0">
	                      	<div class="carousel-item ">
	                        	<a href="${bb.ban_url }"><img src="/img_up${bb.ban_main_img }" class="d-block w-100" alt="..."></a>
	                      	</div>
                      	  </c:forEach>
                     <!--  <div class="carousel-item">
                        <img src="/resources/img/main/project_temp.jpg" class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img src="/resources/img/main/uu.jpg" class="d-block w-100" alt="...">
                      </div> -->
                    </div>
                    <div class="top slider arrow">
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                        </a>
                    </div>
	                
                </div>
            </div>
            <div class="c recommendation layout">
                <div class="section layout recommendation">
                    <section class="section recommendation frame">
                        <t>새 프로젝트 봐볼래요?</t>
                        <div class="card-deck">
                        <c:forEach items="${data.newProject }" var="pp">
                        	<div class="card" id="newpro">
                                <a href="/infund/detail/detail_story?pro_state=${pp.pro_state }&pro_cate=${pp.pro_cate}&pro_code=${pp.pro_code}">
                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${pp.pro_title }</h5>
                                    <p class="card-text">
                                    <fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                    </p>
                                </div>
                                </a>
                            </div>
                        </c:forEach>
                        </div>
                    </section>
                </div>
                <div class="section layout ranking">
                    <section class="section ranking frame">
                        <div id="tab_wrap">
                            <ul class="tab">
                                <li><a href="#tab1" class="sel">이 달의 스타트업</a></li>
                                <li><a href="#tab2">마감임박</a></li>
                            </ul><!--tab-->
                            <ul class="list">
                                <li id="tab1" class="notice">
                                    <ul class="list-unstyled">
                                    <c:forEach items="${data.monthStartup }" var="pp">
                                        <a href="">
                                            <li class="media">
                                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="mr-3" alt="...">
                                                <div class="media-body">
                                                    <h5 class="card-title">${pp.pro_title }</h5>
                                                    <p class="card-text">
                                                    <fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                                    </p>
                                                </div>
                                            </li>
                                        </a>
                                    </c:forEach>
                                    </ul>
                                </li><!--tab1-->
                                <li id="tab2" class="notice">
                                    <ul class="list-unstyled">
                                    <c:forEach items="${data.closingProject }" var="pp">
                                        <a href="">
                                            <li class="media">
                                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="mr-3" alt="...">
                                                <div class="media-body">
                                                    <h5 class="card-title">${pp.pro_title }</h5>
                                                    <p class="card-text">
                                                    <fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                                    </p>
                                                </div>
                                            </li>
                                        </a>
                                    </c:forEach>
                                    </ul>
                                </li><!--tab2-->
                            </ul><!--list-->
                        </div><!--tab_wrap-->
                    </section>
                </div>
            </div>
            <div class="c favorite layout">
                <div class="section layout favorite">
                    <t>인기많다! 뻔(Fun)한 Fund-day!</t>
                    <div class="card-deck">
                    <c:forEach items="${data.dayProject }" var="pp">
                        <div class="card">
                            <a href="/infund/detail/detail_story?pro_state=${pp.pro_state }&pro_cate=${pp.pro_cate}&pro_code=${pp.pro_code}">
                            <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${pp.pro_title }</h5>
                                <p class="card-text">
                                <fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                </p>
                            </div>
                            </a>
                        </div>
                    </c:forEach>    
                    </div>
                </div>
            </div>
            <div class="c exhibition layout">
                <div class="section layout exhibition">
                    <a href="/board/notice/notice"><img src="/resources/img/main/notice.PNG" alt="..." class="exhibition-img"></a>
                    <a href="/guid/guiding/guiding"><img src="/resources/img/main/guide.PNG" alt="..." class="exhibition-img"></a>
                    <a href="/aboutus/aboutus/aboutus"><img src="/resources/img/main/ted.jpg" alt="..." class="exhibition-img"></a>
                </div>
            </div>
            <div class="c register layout">
                <div class="section layout register">
                    <a href="/project_up/project_up/funding_establishment">
                        <p>마음 속 프로젝트 아이디어, 왓두원에서 현실로</p>
                        <p>프로젝트를 위한 자금도 마련하고, 든든한 후원자 네트워크도 확보하세요</p>
                        <button type="button" class="btn btn-info">바로가기</button>
                    </a>
                </div>
            </div>
            <div class="c earlyBird layout">
                <div class="section layout earlyBird">
					<t>얼리버드</t>
                    <div class="card-deck avenue">
                       <c:forEach items="${data.earlyBird }" var="pp">
                        	<div class="card">
                                <a href="/infund/detail/detail_story?pro_state=${pp.pro_state }&pro_cate=${pp.pro_cate}&pro_code=${pp.pro_code}">
                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${pp.pro_title }</h5>
                                    <p class="card-text">
                                    	<fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                    </p>
                                </div>
                                </a>
                            </div>
                        </c:forEach> 
                    </div>
                </div>
            </div>
            <div class="c trend layout">
                <div class="section layout trend upup">
                    <section class="trend frame">
                        <t>#급상승 프로젝트</t>
                        <div class="card-deck">
                        <c:forEach items="${data.soarProject }" var="pp">
                        	<div class="card" id=soarpro>
                                <a href="/infund/detail/detail_story?pro_state=${pp.pro_state }&pro_cate=${pp.pro_cate}&pro_code=${pp.pro_code}">
                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${pp.pro_title }</h5>
                                    <p class="card-text">
                                    	<fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                    </p>
                                </div>
                                </a>
                            </div>
                        </c:forEach>
                        </div>
                    </section>
                </div>
                <div class="section layout trend">
                    <section class="trend frame">
                        <t>매일 바뀌는 싸다! 싸다! 5G는 리워드~</t>
                        <div class="card-deck">
                        <c:forEach items="${data.cheapList }" var="pp">
                        	<div class="card" id=cheappro>
                                <a href="/infund/detail/detail_story?pro_state=${pp.pro_state }&pro_cate=${pp.pro_cate}&pro_code=${pp.pro_code}">
                                <img src="/img_up/project/${pp.pro_code }/${pp.pro_img}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${pp.pro_title }</h5>
                                    <p class="card-text">
                                    <fmt:formatNumber value="${pp.pro_now_amount / pp.pro_target_amount }" type="percent"/> 펀딩
                                    </p>
                                </div>
                                </a>
                            </div>
                        </c:forEach>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </contents>
</body>
</html>