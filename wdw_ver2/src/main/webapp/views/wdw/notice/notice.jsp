<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
	</head>
	<body>

		<div id="notices_wrap">
			<div id="notice_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">공지사항</p>
					<!-- 	<img src="${path }/resources/img/notice/img1.jpg" alt="" /> -->
					</div>
				</div>
				
				<div id = "notice_wrap">
					<div class = "notice_menu">
						<ul class = "notice_menu_list">
							<li><a href = "/board/notice/notice">공지사항</a></li>
							<li><a href = "/board/event/event">이벤트</a></li>
							<li><a href = "/board/press/press">보도자료</a></li>
						</ul>
					</div>
					
					<div id = "notice_content">
						<div class="notice_container" id="notice_container">
							<h4 class="sub_strapline">공지사항</h4>
							<form id="frmSearch">
								<input type="hidden" name="id">
								<input type="hidden" name="dispCt" id="dispCt" value="">
								<input type="hidden" name="page" id="page" value="1">
								<input type="hidden" name="searchOption" value="0">
								<input type="hidden" name="searchText" value="">
								
								
								<div class="notice_total_search_input search_input_type">
									<div class="notice_inner">
										<div class="notice_row">
											
											
											<input type="text" name="si_title" id="searchText" placeholder="검색어를 입력하세요." title="검색어" class="white" value="">
											<button id="btnSearch" type="submit" class="btn_list notice_pp">검색</button>
										
										
										
										</div>
									</div>
								</div>
							
							
							</form>
							<div class="notice_tab_wrap notice_tab_type">
								<div class="notice_tab_content">
									<div class="notice_tab_cont on">	
										<div class="notice_inner">				
											<div class="notice_list_table">
												<div class="notice_list_type1 notice_type2">
													<ul>
													
													
													<c:forEach items="${data }" varStatus="si_no" var="vo">  
														<li>	
															<div class="notice_left">		
																<div class="notice_title notice_ellipsis">			
																	<a href="notice_detail?si_no=${vo.si_no }">
																		<em>&nbsp;${vo.si_title }</em>
																	</a>		
																</div>		
																
															</div>	
															<div class="notice_right">		
																<span class="notice_views">조회수 ${vo.si_cnt }</span>		
																<span class="notice_date">
																<fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${vo.si_regdate }"/> 
																</span>	
															</div>
														</li>
														
														</c:forEach>
														
														
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>