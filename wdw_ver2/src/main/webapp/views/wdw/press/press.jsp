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

		<div id="presss_wrap">
			<div id="press_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">보도자료</p>
					<!--  	<img src="${path }/resources/img/notice/img1.jpg" alt="" />-->
					</div>
				</div>
				
				<div id = "press_wrap">
					<div class = "press_menu">
						<ul class = "press_menu_list">
							<li><a href = "/board/notice/notice">공지사항</a></li>
							<li><a href = "/board/event/event">이벤트</a></li>
							<li><a href = "/board/press/press">보도자료</a></li>
						</ul>
					</div>
					
					<div id = "press_content">
						<div class="press_container" id="press_container">
							<h4 class="sub_strapline">보도자료</h4>
							<form id="frmSearch">
								<input type="hidden" name="id">
								<input type="hidden" name="dispCt" id="dispCt" value="">
								<input type="hidden" name="page" id="page" value="1">
								<input type="hidden" name="searchOption" value="0">
								<input type="hidden" name="searchText" value="">
							
							<div class="press_total_search_input search_input_type">
								<div class="press_inner">
									<div class="press_row">
										
										
										<input type="text" name="si_title" id="searchText" placeholder="검색어를 입력하세요." title="검색어" class="white" value="">
										<button id="btnSearch" type="submit" class="btn_list press_pp">검색</button>
									</div>
								</div>
							</div>
							
							</form>
							<div class="press_tab_wrap press_tab_type">
								<div class="press_tab_content">
									<div class="press_tab_cont on">	
										<div class="press_inner">				
											<div class="press_list_table">
												<div class="press_list_type1 press_type2">
													
													
													
													<ul>	
														<c:forEach items="${data }" varStatus="si_no" var="vo"> 
															<li>	
																<div class="press_left">		
																	<div class="press_title press_ellipsis">			
																		<a href="press_detail?si_no=${vo.si_no }">
																			<em>&nbsp;${vo.si_title }</em>
																		</a>		
																	</div>		
																	<p style="display: none;"class="press_txt press_ellipsis">&nbsp;${vo.si_content }...</p>	
																</div>	
																<div class="press_right">		
																	<span class="press_views">조회수 ${vo.si_cnt }</span>		
																	<span class="press_date">
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