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
		<title>story</title>
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
                      
                        <div>
                            <p>이 프로젝트의 정보 및 정책을 확인하세요.</p>
                            <p>펀딩 취소 및 리워드 옵션 변경, 배송지 변경 안내</p>
                             <c:forEach items = "${vo.rewdsn }" var = "dd">
	                            <p>${dd.pu_reward_dsn_detail }</p>
                            </c:forEach>
                        </div>

                        <div>
                            <p>리워드 정보 제공 고시</p>
                            <p>리워드 상세정보</p><p>가방</p>
                            <div>
                                <div>
                                    <div>품명 및 모델명</div>
                                    <div>${vo.risk.pu_riskpolicy_prod_name }</div>
                                </div>
                                <div>
                                    <div>종류</div>
                                    <div>가방</div>
                                </div>
                                <div>
                                    <div>소재</div>
                                    <div>${vo.risk.pu_riskpolicy_prod_material }</div>
                                </div>
                                <div>
                                    <div>색상</div>
                                    <div>${vo.risk.pu_riskpolicy_prod_color }</div>
                                </div>
                                <div>
                                    <div>크기</div>
                                    <div>${vo.risk.pu_riskpolicy_prod_size }</div>
                                </div>
                                <div>
                                    <div>제조자(수입자)</div>
                                    <div>${vo.risk.pu_riskpolicy_manufacturer }</div>
                                </div>
                                <div>
                                    <div>제조국</div>
                                    <div>${vo.risk.pu_riskpolicy_ctr_manufact }</div>
                                </div>
                                <div>
                                    <div>취급시 주의사항</div>
                                    <div>${vo.risk.pu_riskpolicy_handling }</div>
                                </div>
                                <div>
                                    <div>품질보증기준</div>
                                    <div><%-- ${vo.risk.pu_riskpolicy_qual_assurance } --%></div>
                                </div>
                                <div>
                                    <div>A/S 책임자와 전화번호</div>
                                    <div>${vo.risk.pu_riskpolicy_manager_info }</div>
                                </div>
                            </div>
                        </div>
                        
                        <div>
                            <p>펀딩금 반환안내</p>
                            <p>펀딩 종료 후, 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다. 펀딩금 반환은 서포터가 펀딩한 카드 결제 건을 취소하는 방식으로 이뤄집니다.
                                펀딩금 반환은 나의 리워드 > 펀딩내역에서 신청하실 수 있습니다. </p>
                            <p>1) 리워드 발송이 지연될 경우

                                메이커가 최대 발송 지연 가능일까지 리워드를 발송하지 않을 경우, 서포터는 펀딩금 반환 신청을 할 수 있습니다. 최대 발송 지연 가능일은 리워드 발송 시작의 마지막 날로부터 90일 이후 입니다.
                                
                                
                                리워드별 최대 발송 지연 가능일
                                2021.04.10 
                             </p>
                                <c:forEach items = "${vo.rewdsn }" var = "dd">
                                	<p style = "font-size: 13px; color: #717171; line-height: 20px; white-space: pre-line;">${dd.pu_reward_dsn_rew_name }</p>
                                </c:forEach>
                             <p style = "font-size: 13px; color: #717171; line-height: 20px; white-space: pre-line;"> 
                                2) 리워드에 하자가 있을 경우
                                
                                서포터가 수령한 리워드가 아래 하자 기준에 해당할 경우, 배송 완료일로부터 7일 이내에 펀딩금 반환 신청을 할 수 있습니다. 이때 메이커는 하자 판단을 위한 증빙자료, 리워드 반송을 서포터에게 요청할 수 있습니다. 
                                
                                ・ 리워드의 품질에 아래와 같은 하자가 발생한 경우 
                                
                                예)
                                
                                
                                공산품, 공예품 등
                                
                                제품 흠집, 휨, 백화현상 및 도장 불량, 악취 등 자극성 냄새, 좀 등의 벌레 발생, 균열, 뒤틀림 또는 변색, 녹, 누수, 오염
                                
                                
                                신발, 의류, 패션 잡화 등
                                
                                봉제 불량, 접착 불량, 염색 불량, 원단 불량(제직, 세탁 후 변색, 탈색, 수축 등), 부자재 불량(단추, 지퍼, 천조각, 실오라기 등), 치수(사이즈)의 부정확
                                
                                
                                식품, 의약품, 의약외품, 생활위생용품, 화장품 등
                                
                                이물혼입, 함량 부적합, 변질, 부패, 성분이상
                                
                                
                                그 외 품목
                                
                                소비자분쟁해결 기준을 따름
                                
                                ・ 정상적인 사용상태에서 리워드의 기능/성능상 오작동 또는 미작동 되는 경우 
                                ・ 리워드로 인해 아래와 같은 피해를 입은 경우 
                                ・ 부작용으로 인해 신체상의 피해가 발생한 경우
                                
                                ・ 용기 불량, 파손 등으로 인한 상해, 피해사고를 입은 경우
                                
                                자세한 하자 반환 기준은 펀딩금 반환 정책을 확인하세요. 
                                
                                
                                단, 아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.
                                -메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우
                                (예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.
                                -서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우
                                -모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우
                                -공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우
                                
                                3) 기타 주의 사항
                                -크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.
                                -회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.
                                -하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게 청구될 수 있습니다.
                                </p>
                        </div>
    
                      
                    </div>


                    <div class="detail_right">
                        <div>
                            <p>창작자 소개</p>
                            <p><img src="/img_up/project/${data.info.pu_basic_info_pro_no }/${data.info.pu_basic_info_repre_img}"></p>
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
                                <p></p>
                            </a>
							</c:forEach>


                        </div>

                    </div>
                </div>
            </div>

        </div>
	</body>
</html>