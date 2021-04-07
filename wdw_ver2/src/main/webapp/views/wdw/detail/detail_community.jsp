<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${path }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber value="${vo.info.pu_basic_info_target_amount }" pattern="0,000.00"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>community</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">	
   
	</head>
	<body>
		<c:set var = "vo" value = "${data}"/>
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
                        <p>${vo.provo.pro_now_amount}%</p>
					</div>
			                
					<div>
					    <p>후원자</p>
					    <p>185</p><p>명</p>
					</div>
			
					<hr>
			
					<div id="dday">
					    <p>480 : 10 : 40</p>
					</div>
			
                        <a href="/infund/payment/payment?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">
					    <div>
					        프로젝트 펀딩하기
					    </div>
					</a>
			
					<div>
						<input type="checkbox" id="heart">
						<label for="heart">
							<div></div>
							<p><%-- ${vo.provo.pro_heart } --%></p>
						</label>
					</div>
			
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
                    <a href="detail_community?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">커뮤니티</a>
                    <a href="detail_company_info?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">회사정보</a>
                    <a href="detail_fdGuide?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">환불 · 정책</a>
                    <a href="detail_fd_process?pro_state=${vo.provo.pro_state }&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">진행과정</a>
			    </div>
			</div>
			
			<!-- 상세 -->
			<div class="detail">
			    <div class="out">
			        <div class="detail_left">
			
			            <div>
			                <p>의견제시 · 리뷰</p>
			                <a class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
			                    <p>글 남기기</p>
			                </a>
			                
			                <!-- Modal -->
							<div class="write modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							    <div class="modal-dialog modal-dialog-scrollable">
							        <div class="modal-content">
							            
							            <div class="modal-body">
							                <form class="radio-item">
							                    <p>글 남기기</p>
							                    <p>응원∙의견∙체험리뷰를 남겨주세요.
							                        메이커의 답변이 필요한 문의 글은 ‘창작자에게 문의하기’를 이용해야 답변을 받을 수 있습니다.</p>
							                    
							                    <label for ="write_radio1">
							                        <input type="radio" name="wr" id="write_radio1"><h1>의견</h1><h5>프로젝트에 대한 의견을 남기고 싶어요</h5>
							                    </label>
							                    <label for = "wirte_radio2">
							                        <input type="radio" name="wr" id="wirte_radio2"><h1>체험 리뷰</h1><h5>오프라인 체험 리뷰를 남기고 싶어요.</h5>
							                    </label>
							
							                    <textarea placeholder="메이커에게 의견, 체험 리뷰 메세지를 남겨주세요"></textarea>
							                
							                </form>
							
							            </div>
							            <div class="modal-footer">
							                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							                <button type="button" class="btn btn-primary">등록</button>
							            </div>
							        </div>
							    </div>
							</div>
							
			
			
							<!-- 의견제시 리뷰 --> 
							<div class = "opinion">
							    <div>
							        <div>   <!-- div:nth-child(1) -->
							
							      <!-- 프로필 -->
								      <div>   
								          <div></div> <!-- 프로필 사진 들어갈곳 -->
								      </div>
								
								      <!-- 댓글쪽 -->
								      <div>
								          <div><p>닉네임입니당</p></div>
								          <div>
								                  [WISH YOU HAPPY]<br><br>
								                  펀딩 참여하고 이벤트도 참여해봅니다
								                  동생한테 선물하고 싶네요. 동생이 근 2년 취준생으로 힘들어하다가 올 8월경 운 좋게 한 회사의 경리로 취직을 하게 되었는데요. 제가 알기로 경리직은 밖에 나가는 시간보다 사무실 안 컴퓨터 앞에 앉아있는 시간이 유독 많은걸로 알고 있습니다. 동생이 근무하는 회사 사무실의 공기질이 얼마나 좋은지는 잘 모르겠지만 힘든 코로나 시기에 원하던 회사 취직한 동생을 위해, 피톤치드 맡으면서 조금이나마 좋은 환경에서 근무하라고 응원의 선물하고 싶네요ㅎㅎ
								                  위시에서 진행중인 이벤트는 많은데 펀딩을 너무 늦게봐서 알림 신청도 못했고, SNS도 네이버 블
								          </div>
								          
								          <!--댓글의 리댓-->
								          <!-- .opinion > div > div:nth-child(1) > div:nth-child(2) > div:nth-child(3) -->
					                        <div>
					
					                             <div>   
					                                  <div></div> 
					                             </div>
					                                
					                            <div>
					                                <div><p>닉네임입니당</p></div>
					                                <div>
					                                        댓글입니당<br><br>
					                                        너무 감사해요^^<br>
					                                        많이 사랑해주세요~<br>
					                                        많이 사랑해주세요~<br>
					                                        많이 사랑해주세요~<br>
					                                        많이 사랑해주세요~<br>
					                                 </div>
					                                 
					                                 <div>
					                                    <form>
					                                        <textarea placeholder="답글을 입력하세요"></textarea>
					                                        <input type="submit" value="등록">
					                                    </form>     
					                                 </div>
					                            	</div>
					                       		 </div>
				                    		  </div>
							                </div>
							                <div>
							
							                </div>
							            </div>
								
							        </div>
							    </div>
								
							</div>
			
							<div class="detail_right">
							    <div>
							        <p>창작자 소개</p>
							        <p>
							        	<img src="${pageContext.request.contextPath}/resources/img/detail/owner.JPG">
							        	<a>${vo.maker.pu_maker_info_comp_name }</a>
						        	</p>
									<p>${vo.story.pu_story_proj_summary }</p>
									<hr>
									<p>창작자 평균 응답 시간</p><p>9시간 이내</p>
							
							
							
									<a class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop2">
									    <div>
									        <img src="${pageContext.request.contextPath}/resources/img/detail/message_light.png"><p>창작자에게 문의하기</p>
									    </div>
									</a>
							
								<!-- Modal -->
								    <div class="ask modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
								        <div class="modal-lg modal-dialog ">
								            <div class="modal-content">
								
								                <h1>창작자에게 문의하기</h1>
								                
								                <div class="modal-body">
								
								                    <form class="ask_content">
								
								                        <div>
								                            <p>받는사람</p>
								                            <p>${vo.maker.pu_maker_info_comp_name }</p>
								                        </div>
								
								                        <div>
								                            <p>문의 내용</p>
								                            <select name="ask_kind">
								                                <option disabled value="문의 유형" selected>문의 유형</option>
								                                <option value="프로젝트">프로젝트</option>
								                                <option value="수령자 정보">수령자 정보</option>
								                                <option value="교환/환불">교환/환불</option>
								                                <option value="배송">배송</option>
								                                <option value="기타">기타</option>
								                            </select>
								                        </div>
								
								                        <textarea placeholder="프로젝트 진행자에게 문의하고 싶은 내용을 적어주세요"></textarea>
								
								                    </form>
								
								                    
								
								                </div>
								                <div class="modal-footer">
								                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
								                    <button type="button" class="btn btn-primary">등록</button>
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