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
						<p class = "banner_title">도전 아이디어</p>
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
                        <h4 class = "sub_strapline">도전 게시판</h4>
                        <form id="idea_frmSearch">
                        </form>
                       
    
                        <div class="idea_tab_wrap3 idea_mar_to20 idea_listtab">
                            <div class="idea_tab_content">
                                <div class="idea_tab_cont on">
                                    <div class="idea_inner">
                                        <h4 class="hidden">도전게시판</h4>
                                        <div class="idea_list_type01">
                                            <ul>
                                            
                                             <c:forEach items="${data }" varStatus="no" var="vo">    
                                                <li>
                                                    <a href="idea_detail?no=${vo.no }" target="_self" class="idea_inner_box" onclick="">
                                                        <span class="idea_thumb">
                                                            <img src="../../img_up/${vo.img}" alt="도전게시판">
                                                        </span>
                                                        <span class="idea_list_info">
                                                            <em class="idea_title">${vo.title }</em>
                                                            <span class="idea_date">
                                                               ${vo.regdate }
                                                            </span>
                                                            
                                                            <span class = "idea_like">${vo.cnt }</span>
                                                        </span>
                                                
                                                        <span class="idea_box_btn_wrap">
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
                        
                        <button id="challenge_btn" type="button" onclick = "location.href = 'idea_up' ">아이디어 도전하기</button>
                    </div>
                    
                    
                    <div class="idea_Btn">
                        <div class="paging_comm">
                            <script>
                                function moveByPageNum( targetPage, targetGroup ) {
                                    var obj;
                        
                                    obj = document.getElementById("SearchFrm");
                        
                                    obj.currentPage.value = targetPage;
                                    obj.currentGroup.value = targetGroup;
                                    obj.method = "POST";
                                    
                                    
                                    obj.action = location.pathname + "?lang=" + '';
                                    
                                    obj.submit();
                                }
                            </script>
                            <span class="inner_paging">
                                <a href="javascript:;" class="btn_paging btn_fst">
                                    <span class="ico_corp">《</span>
                                </a>
                                <a href="javascript:;" class="btn_paging btn_prev_bottom">
                                    <span class="ico_corp">〈</span>
                                </a>
                                <span class="screen_out">현재페이지</span>
                                <em class="link_page">1</em>
                                <a href="javascript:moveByPageNum('2', '1');" title="2페이지로 이동 링크" class="link_page">2</a>
                                <a href="javascript:moveByPageNum('3', '1');" title="3페이지로 이동 링크" class="link_page">3</a>
                                <a href="javascript:moveByPageNum('4', '1');" title="4페이지로 이동 링크" class="link_page">4</a>
                                <a href="javascript:moveByPageNum('5', '1');" title="5페이지로 이동 링크" class="link_page">5</a>
                                <a href="javascript:moveByPageNum('6', '1');" title="6페이지로 이동 링크" class="link_page">6</a>
                                <a href="javascript:moveByPageNum('7', '1');" title="7페이지로 이동 링크" class="link_page">7</a>
                                <a href="javascript:moveByPageNum('8', '1');" title="8페이지로 이동 링크" class="link_page">8</a>
                                <a href="javascript:moveByPageNum('9', '1');" title="9페이지로 이동 링크" class="link_page">9</a>
                                <a href="javascript:moveByPageNum('10', '1');" title="10페이지로 이동 링크" class="link_page">10</a>
                                <a class="btn_paging btn_next_bottom" href="javascript:moveByPageNum('11', '2');">
                                    <span class="ico_corp">〉</span>
                                </a>
                                <a class="btn_paging btn_lst" href="javascript:moveByPageNum('17', '2');">
                                    <span class="ico_corp">》</span>
                                </a>
                            </span>
                        </div>
                    </div>
                    <div class="idea_search">
                        <div class="sch_comm">

                            <form method="post" class="sch_form" name="SearchFrm" id="SearchFrm" action="/notices?lang=">
                                <fieldset>
                                    <legend class="screen_out">검색어 입력폼</legend>
    
                                    
                                    <input type="text" id="search_word" name="searchWord" class="inp_keyword" title="검색어" value="" placeholder="검색어를 입력하세요">
    
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