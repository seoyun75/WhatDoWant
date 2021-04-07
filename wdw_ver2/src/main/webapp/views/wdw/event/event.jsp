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
		<div id="events_wrap">
			<div id="event_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">이벤트</p>
					<!-- 	<img src="${path }/resources/img/notice/img1.jpg" alt="" /> -->
					</div>
                </div>
                
                <div id = "event_wrap">
					<div class = "event_menu">
						<ul class = "event_menu_list">
							<li><a href = "/board/notice/notice">공지사항</a></li>
							<li><a href = "/board/event/event">이벤트</a></li>
							<li><a href = "/board/press/press">보도자료</a></li>
						</ul>
					</div>
				    <div class="event_container" id="event_container">
                        <h4 class = "sub_strapline">이벤트</h4>
                        <form id="event_frmSearch"></form>
                        
                        
                        <div class="evt_tab_wrap3 evt_mar_to20 evt_listtab">
                            <div class="evt_tab_content">
                                <div class="evt_tab_cont on">
                                    <div class="evt_inner">
                                        <h4 class="hidden">이벤트</h4>
                                        <div class="evt_list_type01">
                                            <ul>
                                            
                                            <c:forEach items="${data }" varStatus="si_no" var="vo">    
                                                <li>
                                                    <a href="event_detail?si_no=${vo.si_no }" target="_self" class="evt_inner_box" >
                                                        <span class="event_thumb">
                                                            <img src="../../img_up/${vo.si_cate }/${vo.si_no }/${vo.si_img}" alt="이벤트">
                                                        </span>
                                                        <span class="evt_list_info">
                                                            <em class="evt_title">${vo.si_title }</em>
                                                            <span class="evt_date">
                                                                <fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${vo.si_regdate }"/> 
                                                            </span>
                                                        </span>
                                                
                                                        <span class="evt_box_btn_wrap">
                                                        </span>
                                                    </a>
                                                </li>
                                                
                                             </c:forEach>  
                                             
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                      
                        <div class="idea_search">
                            <div class="sch_comm">
    
                               <form  class="sch_form" id="SearchFrm" >
                                <fieldset>
                                	
	                                    <legend class="screen_out">검색어 입력폼</legend>
	    
	                                    
	                                    <input id="search_word" name="si_title" class="inp_keyword"  placeholder="검색어를 입력하세요">
	    
	                                    <button type="submit" class="btn_search"><span class="ico_corp">검색</span></button>
                              		
                              
                                </fieldset>
                                
	    
	                                <input type="hidden" id="currentPage" name="currentPage" value="1">
	                                <input type="hidden" id="currentGroup" name="currentGroup" value="1">
	                            </form>
	                            
                            </div>
                        </div>
                    </div>
			    </div>
            </div>

	</body>
</html>