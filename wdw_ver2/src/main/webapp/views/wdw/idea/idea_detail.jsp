<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
	</head>
	<body>
		<div id="ideas_wrap">
			<div id="idea_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">아이디어 게시판</p>
						<img src="${path }/resources/img/idea/img1.jpg" alt="" />
					</div>
				</div>
				
				<div id = "idea_wrap">
					<div class = "idea_menu">
						<ul class = "idea_menu_list">
							<li><a href = "idea">도전 게시판</a></li>
							<li><a href = "best_idea">베스트 게시판</a></li>
                        </ul>
					</div>
					
					<div class="idea_container" id="idea_container">
                        <h4 class="sub_strapline">아이디어</h4>
                    
                       		 	<div class="idea_list_view_top">
                            
                        			<button type="button" onclick = "location.href = 'delete?no=${data.no }'">삭제</button>
                        			<button type="button" onclick = "location.href = 'modify?no=${data.no }'">수정</button>
                        		</div>
                            
                     
                            <div class="evt_list_view_type1">
                                <input type="hidden" name="idea" value="">
                                <div class="evt_list_view_title">
                                    <p class="evt_title" id="subject">${data.title}</p>
                                </div>
                                <div class="evt_list_view_cont">
                                    <div class="idea_cont">
                                        <div id="evt_content">
                                           <div class="evt_wrap"> 
                                              
                                                <div id="itemBrief" class="product_info essential_table">
                                                    <div class="product_item">
                                                        <table class="policy_table essential_info_table">
                                                            <colgroup>
                                                                <col width="150px">
                                                                <col width="340px">
                                                                <col width="150px">
                                                                <col width="*">
                                                            </colgroup>
                                                            <tbody>
                                                                <tr>
                                                                    <th>글번호</th>
                                                                    <td>${data.no}</td>
                                                                    
                                                                    <th>작성일</th>
                                                                    <td>${data.regdate}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th>글쓴이</th>
                                                                    <td>${data.writer}</td>
                                                                    
                                                                    <th>조회수</th>
                                                                    <td>${data.cnt}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th>주요</th>
                                                                    <td colspan="3">상세페이지 참조</td>
                                                                    
                                                                </tr>
                                                               
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            <div class="evt_noti"> 
                                                <p>${data.content}
                                                </p>
                                            </div> 
                                            
                                            <div class="idea_comment_out">
                                            	<div class="idea_comment_list">
                                            		<p>댓글</p>
                                            		
                                            		<!-- 댓글들 -->
                                            		<div class="idea_comment">
                                            			
                                            			<div class="idea_comment_left">
                                            				<div><img src="${path }/resources/img/detail/owner.JPG"></div>
                                            			</div>
                                            			
                                            			<div class="idea_comment_right">
                                            				<div>황영주</div>
                                            				<div>댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글</div>
                                            				<div>2020-11-11</div>
                                            			</div>
                                            		</div>
                                            		
                                            		<!-- 댓글들 -->
                                            		<div class="idea_comment">
                                            			
                                            			<div class="idea_comment_left">
                                            				<div><img src="${path }/resources/img/detail/owner.JPG"></div>
                                            			</div>
                                            			
                                            			<div class="idea_comment_right">
                                            				<div>배수지</div>
                                            				<div>댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글</div>
                                            				<div>2020-11-11</div>
                                            			</div>
                                            		</div>
                                            		
                                            		<!-- 댓글들 -->
                                            		<div class="idea_comment">
                                            			
                                            			<div class="idea_comment_left">
                                            				<div><img src="${path }/resources/img/detail/owner.JPG"></div>
                                            			</div>
                                            			
                                            			<div class="idea_comment_right">
                                            				<div>이지은</div>
                                            				<div>댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글
                                            				댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글글댓글댓글댓글댓글댓글</div>
                                            				<div>2020-11-11</div>
                                            			</div>
                                            		</div>
                                            		
                                            		
                                            		<!-- 댓글창 -->
                                            		<textarea class="comment_write" placeholder="댓글을 입력하세요."></textarea>
                                            		<button class="comment_submit" type="button">등록</button>
                                            		
                                            		
                                            	</div>
                                            </div>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="idea_list_view_ctrl">
                                <div>
                                    <span class="idea_prev">다음글</span>
                                    <a href="#" class="idea_ellipsis">
                                        아이디어아이디어아이디어
                                    </a>
                                </div>
                                <div>
                                    <span class="idea_next">이전글</span>
                                    <a href="#" class="idea_ellipsis">
                                        아이디어이베ㄴㄴ
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="btn_wrap_type1 btn_idea">
                            <button type="button" class="btn_list evt_white" onclick=""><a href="idea">목록으로</a></button>
                        </div>
                    </div>
				</div>
			</div>
        </div>
	</body>
</html>
                    