<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${path }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber value="${vo.info.pu_basic_info_target_amount }" pattern="0,000.00"/>
<!DOCTYPE html>
<html>
	<head>
		<c:set var = "vo" value = "${data}"/>
		<meta charset="UTF-8">
		<title>story</title>
		<script src="/resources/js/common/jquery-3.5.1.js"></script>
		<script type="text/javascript">
		function parse(str){
			var y = str.substr(0, 4);
			var m = str.substr(4, 2);
			var d = str.substr(6, 2);
			return new Date(y, m-1, d); 

		}
		
		function remaindTime() {
		    var now = new Date(); //현재시간을 구한다. 
		    var nowdate = parse('${vo.info.parsedate}'); 
		    var end = new Date(nowdate.getFullYear(),nowdate.getMonth(),nowdate.getDate(),00,00,00);
		
		    var nt = now.getTime(); // 현재의 시간만 가져온다
		    var et = end.getTime(); // 종료시간만 가져온다.
		  
		   if(nt>et){ //현재시간이 오픈시간보다 이르면 오픈시간까지의 남은 시간을 구한다. 
		     $(".time").fadeIn();
		   $(".timetext").html('마 감');
		      $(".col").css("display","none");
		   }else { 
		       $('.time').fadeIn();
		     sec =parseInt(et - nt) / 1000;
		     day  = parseInt(sec/60/60/24);
		     sec = (sec - (day * 60 * 60 * 24));
		     hour = parseInt(sec/60/60);
		     sec = (sec - (hour*60*60));
		     min = parseInt(sec/60);
		     sec = parseInt(sec-(min*60));
		     if(hour<10){hour="0"+hour;}
		     if(min<10){min="0"+min;}
		     if(sec<10){sec="0"+sec;}
		      $('.hours').html(hour);
		      $('.minutes').html(min);
		      $('.seconds').html(sec);
		   }
		 }
		 setInterval(remaindTime,1000);
		
		</script>
	</head>
	<body>
            <div id="wrap">	 

            <!-- 큰제목 -->
            <div class="content_top">
                <div class="big_title">
                    <div>
                        <p>${vo.info.pu_basic_info_proj_sub }</p>
                        <p>${vo.maker.pu_maker_info_comp_name }</p>
                    </div>
                </div>      
                
                <!-- 상품사진 + 간단정보-->  

                <!--메인썸네일-->
                <div class="goods_top">
                    <div>
                        <img src="/img_up/project/${data.provo.pro_code }/${data.provo.pro_img}">
                    </div>

                    <div>
                        <div>
                            <p>펀딩금액</p>
                            <p><fmt:formatNumber value="${vo.info.pu_basic_info_target_amount }" pattern="0,000"/>원</p>
                        </div>
                        
                        <div>
                            <p>달성률</p>
                            <p><fmt:formatNumber value="${vo.info.pu_basic_info_target_amount/vo.provo.pro_now_amount}" pattern="0"/>%</p>
                        </div>
                                        
                        <div>
                            <p>후원자</p>
                            <p>185</p><p>명</p>
                        </div>

                        <hr>

                        <div id = "dday" class="sec7-text-box">
			              <div class="time font40">
			                 <span class="timetext"></span>
			                <span class="hours"></span>
			                <span class="col">:</span>
			                <span class="minutes"></span>
			                <span class="col">:</span>
			                <span class="seconds"></span>
			              </div>
			              
			            </div>

                        <a href="/infund/payment/payment?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">
                            <div>
                                프로젝트 펀딩하기
                            </div>
                        </a>

                        
                        
                        <div class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop2">문의</div>
                        
                        <div class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop3">공유하기</div>

                        <!-- Modal -->
                        <div class="write modal fade" id="staticBackdrop3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    
                                    <div class="modal-body">
                                        
                                        <div class="sns-go">
                                            <ul>
                                              <li>
                                                <a href="#" onclick="javascript:window.open('http://share.naver.com/web/shareView.nhn?url=' +encodeURIComponent(document.URL)+'&title='+encodeURIComponent(document.title), 'naversharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Naver" ><img src="${pageContext.request.contextPath}/resources/img/detail/sns_naver.png" width="40" alt="네이버 블러그 공유하기"></a>
                                              </li>
                                              <li>
                                                <a href="#" onclick="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=' +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Facebook" ><img src="${pageContext.request.contextPath}/resources/img/detail/sns_face.png" width="40" alt="페이스북 공유하기"></a>
                                              </li>
                                              <li>
                                                <a href="#" onclick="javascript:window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20' +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Twitter" ><img src="${pageContext.request.contextPath}/resources/img/detail/sns_tw.png" width="40" alt="트위터 공유하기"></a>
                                              </li>
                                              <li>
                                                <a href="#" onclick="javascript:window.open('https://story.kakao.com/s/share?url=' +encodeURIComponent(document.URL), 'kakaostorysharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes, height=400,width=600');return false;" target="_blank" alt="Share on kakaostory"><img src="${pageContext.request.contextPath}/resources/img/detail/sns_kakao.png" width="40" alt="카카오스토리 공유하기"></a>
                                              </li>
                                            </ul>
                                          </div>


                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>


            <!-- 공지사항, 커뮤니티 등 카테고리 -->
                
            <!-- 카테고리 -->
            <div class="category">
                <div>
                    <a href="detail_story?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">스토리</a>
<%--                     <a href="detail_community?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">커뮤니티</a> --%>
                    <a href="detail_company_info?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">회사정보</a>
                    <a href="detail_fdGuide?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">환불 · 정책</a>
                    <a href="detail_fd_process?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">진행과정</a>
                </div>
            </div>
            
            <!-- 상세 -->
            <div class="detail">
                <div class="out">
                    <div class="detail_left">
                        <img src="/img_up/project/${data.provo.pro_code }/${data.provo.pro_content}">
                    </div>

                    <div class="detail_right">
                        <div>
                            <p>창작자 소개</p>
                            <p><img src="/img_up/project/${data.info.pu_basic_info_pro_no }/${data.info.pu_basic_info_repre_img}"><a>${vo.maker.pu_maker_info_comp_name }</a></p>
                            <p>${vo.story.pu_story_proj_summary }</p>
                            <hr>
                            <p>창작자 평균 응답 시간</p><p>9시간 이내</p>
                            
                            <a class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop2">
                                <div>
                                    <img src="/resources/img/detail/message_light.png"><p>창작자에게 문의하기</p>
                                </div>
                            </a>

                            <!-- Modal -->
                            <div class="ask modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-lg modal-dialog ">
                                    <div class="modal-content">

                                        <h1>창작자에게 문의하기</h1>
                                        
                                        <div class="modal-body">

                                            <form  method="post" class="ask_content">

                                                <div>
                                                    <p>받는사람</p>
                                                    <p>${vo.maker.pu_maker_info_comp_name }</p>
                                                </div>
                                                
                                                <div>
                                                	<p>제목</p>
                                                	<input type="text" name="project_board_title" />
                                                	<input type="hidden" name="project_board_writer" value="${member.member_id }" />
                                                	<input type="hidden" name="project_board_no" value="${vo.probb.project_board_no }"/>
                                                	<input type="hidden" name="project_board_pro_no" value="<%=request.getParameter("pro_code") %>" />
                                                </div>

                                                <div>
                                                    <p>문의 내용</p>
                                                    <select name="project_board_cate">
                                                        <option disabled value="문의 유형" selected>문의 유형</option>
                                                        <option value="문의">프로젝트</option>
                                                        <option value="문의">수령자 정보</option>
                                                        <option value="문의">교환/환불</option>
                                                        <option value="문의">배송</option>
                                                        <option value="문의">기타</option>
                                                    </select>
                                                </div>

                                                <textarea placeholder="프로젝트 진행자에게 문의하고 싶은 내용을 적어주세요" name="project_board_content"></textarea>


                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                            <button type="submit" class="btn btn-primary">등록</button>
                                        </div>
					                    </form>
                                        </div>
                                       	
                                    </div>
                                </div>
                            </div>

                        </div>
                        
                        <!-- 리워드 선택 -->
                        <p>리워드 선택</p>
                        <div class="reward_choose">

							<c:forEach items = "${vo.rewdsn }" var = "rr">
	                            <a class="re_choice" href="../payment/payment">
	                                <p><fmt:formatNumber value="${rr.pu_reward_dsn_rew_price }" pattern="0,000"/>원</p>
	                                <p>${rr.pu_reward_dsn_rew_name }</p>
	                                <p>${rr.pu_reward_dsn_detail }</p>
	                                <p>배송비</p>
	                                <p> </p>
	                            </a>
							</c:forEach>


                        </div>


                    </div>
                </div>
            </div>

        </div>
		

	</body>
</html>