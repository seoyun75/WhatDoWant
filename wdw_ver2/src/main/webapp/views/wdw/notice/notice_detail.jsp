<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<!-- 	<img src="${path }/resources/img/notice/img1.jpg" alt="" />	 -->
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
                
                    <div class="notice_container" id="notice_container">
                        <h4 class="sub_strapline">공지사항</h4>
                    
                
                            <div class="evt_list_view_type1">
                                <input type="hidden" name="notice" value="">
                                <div class="evt_list_view_title">
                                    <p class="evt_title1" id="subject">${data.si_title }</p>
                                    <p class="evt_title2" id="subject"><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${data.si_regdate }"/></p>
                                </div>
                                <div class="evt_list_view_cont">
                                    <div class="notice_cont">
                                        <div id="evt_content">
                                           <div class="evt_wrap"> 
                                            <div class="evt_noti"> 
                                                <img src="../../img_up/${data.si_cate }/${data.si_no }/${data.si_content}">
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="notice_list_view_ctrl">
                                
                            </div>
                        </div>
                        <div class="btn_wrap_type1 btn_notice">
                            <button type="button" class="btn_list evt_white" onclick=""><a href="notice">목록으로</a></button>
                        </div>
                    </div>
                </div>
			</div>
        </div>

	</body>
</html>