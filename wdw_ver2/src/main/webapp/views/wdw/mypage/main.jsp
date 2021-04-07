<%@page import="java.util.List"%>
<%@page import="com.example.demo.model.ProjectVO"%>
<%@page import="com.example.demo.model.ShoppingVO"%>
<%@page import="com.example.demo.model.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String, Object> data = (HashMap<String, Object>)request.getAttribute("data");
	MemberVO user = (MemberVO)data.get("actore");
	List<ShoppingVO> shopping = (List<ShoppingVO>)data.get("shopping");
	List<ProjectVO> project = (List<ProjectVO>)data.get("project");
	
%>
<div id="wrap">
    <div class="mp_title">마이페이지</div><hr/>	
	<div id="contents">
		<div class = "cont mp_main">
   			    	<div class="info clear">
                       <div>
                            <div class="wrap_sub_title info_title">내정보
                            </div>
                            <img src="../../resources/img/mypage/boy.png" alt="사진">
				        </div>
				        <div>
                            <div class="input_name"><%=user.getMember_pname() %></div><!--정보받아옴-->
                            <div class="input_name"><%=user.getMember_id() %></div>
                            <div class="input_name"><%=user.getMember_phone() %></div>
                            <div class="input_name"><%=user.getMember_address() %></div>
                            <button onclick="location.href='/mypage/mypageMain/myInfo'">수정</button>
				        </div>
				    </div>
				    <div class="wallet clear ">
                        <div class="wrap_sub_title">내지갑
                        </div>
	                        <a href="/mypage/wallet/wallet">상세></a>
				        
				        <div class="name">
					        <div >사용한 금액</div>
					        <div >${data['use'] }원</div>
					        
				        </div>
				        <div class="name">
					        <div>프로젝트 성공 금액</div>
					        <div>${data['income'] }원</div>
				        </div>
				        
				    </div>
				    <div class="activity">
                        <div class="wrap_sub_title">내활동</div>
                        <div class="buy_act">
                          <div>
                              펀딩한 상품
                              <a href="/mypage/activity/shopping" >상세></a>
                          </div>
                          <div class="row row-cols-1 row-cols-md-3">
<%						
						int max = shopping.size() - 6 ;
							if(max<0){
								max=0;
							}
						for(int i=shopping.size()-max; i>0; i--){
							ShoppingVO ss = shopping.get(shopping.size()-i);
%>
	                      <div class="col mb-4">
	                        <div class="card h-100" style="width: 17rem;">
	                          <img src="../../img_up/project/<%=ss.getPurhistory_code() %>/thum.jpg" class="card-img-top" alt="상품"  ">
	                          <div class="card-body">
	                            <a class="card-title"  href="/infund/detail/detail_story?pro_state=<%=ss.getPro_state()%>&pro_cate=<%=ss.getPro_cate()%>&pro_code=<%=ss.getPurhistory_code()%>"><%=ss.getPro_title()%>
		                            <p class="card-text">
	                            </a>
	                          </div>
	                        </div>
	                      </div>
<%						} %>                     
	                 
	                      
	                    </div>
                      </div>
		        <div class="sell_act">
		            <div >
		                등록한 상품
		                <a href="/mypage/activity/fundingReg">상세></a>
		            </div>
		            <div class="row row-cols-1 row-cols-md-3">
<%						
							max = project.size() - 6;
							if(max<0)
								max = 0;
							for(int i=project.size()-max; i>0; i--){
								
							ProjectVO pp = project.get(project.size()-i);
%>
	                      <div class="col mb-4">
	                        <div class="card h-100" style="width: 17rem;">
	                          <img src="../../img_up/project/<%=pp.getPro_code()%>/thum.jpg" class="card-img-top" alt="상품" >
	                          <div class="card-body">
	                            <a class="card-title"  href="/infund/detail/detail_story?pro_state=<%=pp.getPro_state()%>&pro_cate=<%=pp.getPro_cate()%>&pro_code=<%=pp.getPro_code()%>"><%=pp.getPro_title()%>
		                            <p class="card-text">
	                            </a>
	                          </div>
	                        </div>
	                      </div>
<%						} %>                     

	                    </div>
		        </div>
		        <!-- <div class="idea_act" >
		            <div>
                              아이디어
		                <a href="idea">상세></a>
		            </div>
		            <div class="board">내가 쓴 글
                              <div>
                                  <a href="">목록1</a>
                                  <a href="">목록2</a>
                                  <a href="">목록3</a>
                              </div>
		            </div>
		            <div class="board">관심 글
		                <div>
                                  <a href="">목록1</a>
                                  <a href="">목록2</a>
                                  <a href="">목록3</a>
		                </div>
		            </div>
		        </div> -->
		    <!-- </div>
		    <div class="taste">
                      <div class="wrap_sub_title">최근/찜</div>
		        <div class="taste_new">
		            <div>최근</div>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view01.png" alt="상품뷰">
                        </a>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view02.png" alt="상품뷰">
                        </a>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view03.png" alt="상품뷰">
                        </a>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view01.png" alt="상품뷰">
                        </a>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view02.png" alt="상품뷰">
                        </a>
                        <a href="../detail/detail_story.html" class="product_view">
                            <img src="../../resources/img/mypage/product_view03.png" alt="상품뷰">
                        </a>
		        </div>
		        <div class="taste_zzim">
		            <div>찜</div>
		            <a href="../detail/detail_story.html" class="product_view">
                        <img src="../../resources/img/mypage/product_view04.png" alt="상품뷰">
                    </a>
		        </div> -->
 		    </div>
		    <div class="qna">
		        <div class="wrap_sub_title">문의하기</div>
		        <input type="button" onclick="location.href='/mypage/activity/QnAlist'" value="문의내역 보러가기">		         

		        <input type="button" onclick="location.href='/mypage/activity/QnAForm'" value="1:1 문의하기">
		    </div>
		</div>
	</div>
</div>