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
		
		<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>
	<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
	<c:set var = "vo" value = "${data}"/>
	<script type="text/javascript">
	function pay1(){
		BootPay.request({
		price: 0, 
		application_id: "5fdc50bc2fa5c2002f038a96",		
		name: '정기적인 결제', 
		pg: 'kcp',
		method: 'card_rebill', 
		show_agree_window: 0, 
		user_info: {
			username: $("#pid").val(),
			email: '사용자 이메일',
			addr: $("#address").val(),
			phone: $("#phone").val()
		},
		order_id: '고유order_id_1234', 
		params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
		extra: {
			start_at: '2019-05-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
			end_at: '2022-05-10' // 정기결제 만료일 -  기간 없음 - 무제한
		}
	}).error(function (data) {
		console.log(data);
	}).cancel(function (data) {	
		console.log(data);
	}).done(function (data) {
		console.log(data);	
		var member_id = $("#donaClick01").attr("title");
		console.log("컨트롤러 넘어가기전 아이디" + member_id)
		console.log("끝 : "+data);
		
		$.ajax({
			url: "/BootpayController",
			method: "post",
			data: {"obj" : JSON.stringify(data)},
			success: function(msg){
				 var form = document.paydetail;
				 var form2 = document.payment;
				 /* var form2 = document.red; */
				 location.href="/infund/payment/payment_reservation_finish?pro_state=<%=request.getParameter("pro_state")%>&pro_cate=<%=request.getParameter("pro_cate")%>&pro_code=<%=request.getParameter("pro_code")%>";
				 form.submit(); 
				 /* form2.submit();  */
				 /* form2.submit(); */
			},
			error:function(){
				alert("통신 실패");
			}
		}); 
		
	});
	}
	</script>
		
	</head>
	<body>	
	<c:set var = "remap" value = "${data}"/>
		<c:set var = "finalpay" value = "0"/>
		<c:set var = "finaldel" value = "0"/>
		 <div id="wrap">	 

            <!-- 틀 -->
            <div class="form">
                <div class="list">
                    <div>
                        <div>리워드 선택</div>
                        <div> ▶ </div>
                        <div>결제 예약</div>
                        <div> ▶ </div>
                        <div>결제 완료</div>
                    </div>
                </div>
				<%-- <c:forEach items = "${remap }" var = "dsn" varStatus="mincnt"> --%>
                 <!-- <form method = "post" id = "payment" name = "payment" enctype = "multipart/form-data"> -->
                 <form method = "post" id = "paydetail" name = "paydetail" enctype = "multipart/form-data" action="payment_reservation_finish?pro_state=<%=request.getParameter("pro_state")%>&pro_cate=<%=request.getParameter("pro_cate")%>&pro_code=<%=request.getParameter("pro_code")%>" >
					<c:set var = "finalpay" value = "${finalpay + remap.rewd * remap.cnt}"/>
                <div class="menu_1">
                  <p>${remap.name }</p>
                  <div>
                  		<c:set var= "op_cnt" value = "${mincnt.index }"/>
	                  <p><fmt:formatNumber value="${remap.rewd }" pattern="#,##0"/>원</p>
	                  <p>수량 <input name = "re_input_cnt" type="hidden" value = "${remap.cnt}"/>${remap.cnt}개</p>
	              </div>
                </div>
				<c:set var = "finaldel" value = "${finaldel + remap.sendcon}"/>
                <div class="delivery_charge">
                  <p>배송비</p>
                  <p><fmt:formatNumber value="${remap.sendcon }" pattern="#,##0"/>원</p>
                </div>
                <input type = "hidden" name = "pu_reward_dsn_rew_name" value="${remap.name }"/>
                <input type = "hidden" name = "pu_reward_dsn_rew_price" value="${(remap.rewd * remap.cnt) + remap.sendcon}"/>
                <input type = "hidden" name = "re_input_chk" value="<%=request.getParameter("re_input_chk")%>"/>
                

                <div class="point3">
                  <p>펀딩 금액</p>
                  <p><fmt:formatNumber value="${finalpay}" pattern="#,##0"/>원</p>
                  <p>포인트 차감금액</p>
                  <p>-</p>
                  <p>추가후원금</p>
                  <p>
                  <c:if test="${remap.pay == null }">0원</c:if>
                  <c:if test="${remap.pay != null }">
                  	<fmt:formatNumber value="${remap.pay }" pattern="#,##0"/>원
                  </c:if>
                  </p>
                  <p>배송비</p>
                  <p><fmt:formatNumber value="${finaldel}" pattern="#,##0"/>원</p>
                  <p>최종결제금액</p>
                  <p><fmt:formatNumber value="${finalpay + finaldel + remap.pay}" pattern="#,##0"/>원</p>
                </div>

                <div class="point4">
                    <p>리워드 배송지</p>
                    <div>
                        <%-- <form method = "post" id = "paydetail" name = "paydetail" enctype = "multipart/form-data" action="payment_reservation_finish?pro_state=<%=request.getParameter("pro_state")%>&pro_cate=<%=request.getParameter("pro_cate")%>&pro_code=<%=request.getParameter("pro_code")%>" > --%>
                        <div>
                            <label for="pid">이름</label>
                            <input type="text" id="pid" name="purhistory_name">

                            <label for="phone">휴대폰번호</label>
                            <input type="text" id="phone" name="purhistory_phone">
                            
                            <label for="address">주소</label>
                            <input type="text" id="address" name="purhistory_address">

                        </div>    
                        </form>
                    </div>
                </div>

                <div class="point5">
                    <p>결제 정보 입력</p>
                    <div class="paypay">
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                              <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">
                              		<button onclick="pay1()" id="donaClick01" class = "pay_btn donation-content">결제하기</button>
                              </a>
                            </li>
                           <!--  <li class="nav-item" role="presentation">
                              <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">카드 직접입력</a>
                            </li> -->
                          </ul>

                          <div class="tab-content" id="pills-tabContent">

                            <!-- 간편결제 -->
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">

                                <!-- Button trigger modal -->
                                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
                                    카드 등록
                                </button>

                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal5">
                                    계좌 등록
                                </button> -->
                                
                                

                                <!-- 카드 등록 모달-->
                                <!-- Modal -->
                               <!--  <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content registration">
                                            <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">카드 등록</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            </div>
                                            <div id="easy" class="modal-body easy_payment">
                                        
                                                <form>
                                                    <p>신용(체크)카드 번호</p>
                                                    
                                                        <input type="text" id="card">
                                                        <input type="text" id="card">
                                                        <input type="text" id="card">
                                                        <input type="text" id="card">
                                                    

                                                    <div>
                                                        <p>유효기간</p>
                                                        <P>카드 비밀번호</P>
                                                        <input type="text" placeholder="MM/YY">
                                                        <input type="password" placeholder="앞 2자리">
                                                    </div>
                
                                                    <p>생년월일 (주민번호 앞 6자리)</p>
                                                    <input type="text" id="birth">
                                                    <p>무기명 법인카드는 사업자등록번호 10자리를 입력하세요.</p>
                
                                                </form>


                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                            <button type="button" class="btn btn-primary">등록하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->


                                <!-- 계좌 등록 모달-->
                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content registration">
                                            <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">계좌 등록</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            </div>
                                            <div id="easy" class="modal-body easy_payment">
                                        
                                                <form>
                                                    <p>은행 선택</p>
                                                    
                                                    <select name="ask_kind">
                                                        <option disabled value="은행 선택" selected>은행 선택</option>
                                                        <option value="국민은행">국민은행</option>
                                                        <option value="기업은행">기업은행</option>
                                                        <option value="NH농협">NH농협</option>
                                                        <option value="신한은행">신한은행</option>
                                                        <option value="한국시티은행">한국시티은행</option>
                                                        <option value="SC은행">SC은행</option>
                                                        <option value="우리은행">우리은행</option>
                                                        <option value="카카오뱅크">카카오뱅크</option>
                                                        <option value="케이뱅크">케이뱅크</option>
                                                        <option value="하나은행">하나은행</option>
                                                        <option value="경남은행">경남은행</option>
                                                        <option value="광주은행">광주은행</option>
                                                        <option value="대구은행">대구은행</option>
                                                        <option value="부산은행">부산은행</option>
                                                        <option value="KDB산업은행">KDB산업은행</option>
                                                        <option value="수협은행">수협은행</option>
                                                        <option value="우체국">우체국</option>
                                                        <option value="전북은행">전북은행</option>
                                                        <option value="제주은행">제주은행</option>
                                                        <option value="새마을금고">새마을금고</option>
                                                        <option value="신협">신협</option>
                                                        <option value="SBI저축은행">SBI저축은행</option>
                                                        <option value="저축은행">저축은행</option>
                                                        <option value="미래에셋대우">미래에셋대우</option>
                                                        <option value="삼성증권">삼성증권</option>
                                                        <option value="SK증권">SK증권</option>
                                                        <option value="유안타증권">유안타증권</option>
                                                        <option value="유진투자증권">유진투자증권</option>
                                                        <option value="한국투자증권">한국투자증권</option>
                                                    </select>
                                                    
                                                    <p>계좌번호</p>
                                                    <input type="text" id="acc" placeholder="'-' 없이 입력하세요.">
                                                    <p>본인 명의의 계좌만 등록 가능합니다.</p>

                                                    <p>휴대폰 번호 등으로 만든 평생계좌번호 및 가상계좌, 펀드/적금/정기예금 등의 계좌는 등록이 불가능합니다.</p>
                                                    <p>출금이체동의를 위한 ARS 인증과 계좌인증을 하셔야만 계좌등록을 할 수 있습니다.(전자금융거래법 제 15조 1항)</p>
                                                    <p>'체크카드'는 '신용카드'와 달리 신용공여기간이 부여되지 않고 결제 시 결제계좌에서 이용금액이 바로 출금됩니다. 이에 따라, 마이너스 통장을 네이버페이 체크카드 결제계좌로 이용할 경우 예금 잔액이 부족하게 되면 마이너스 대출로 결제금액이 지급되고 마이너스 대출 사용에 따른 이자가 즉시 발생될 수 있으므로 이용에 유의하시기 바랍니다.</p>
                
                                                </form>


                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                            <button type="button" class="btn btn-primary">등록하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <div id="warning">
                                    <p>결제시 유의사항</p>

                                    <p>- 결제실행일에 결제자 귀책사유(한도초과, 이용정지 등)로 인하여 결제가 실패할 수 있으니, 결제수단이 유효한지 한번 확인하세요.</p>
                                    <p>- 1차 결제 실패 시 실패일로부터 3 영업일 동안 재 결제를 실행합니다.</p>
                                    <p>- 결제 예약 이후, 결제할 카드를 변경하려면 마이페이지 > 나의 펀딩의 결제정보에서 카드정보를 변경해주세요.</p>
                                    <p>- 왓두원에서 카드번호를 저장하지 않습니다! 카드사에서 제공하는 암호화된 정보만을 저장하기 때문에 안심하셔도 됩니다.</p>
                             </div>


                            </div>
                            
                            <!-- 직접 입력-->
                            <div class="direct_payment tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <form>
                                    <p>신용(체크)카드 번호</p>
                                    <input type="text" id="card">
                                    <input type="text" id="card">
                                    <input type="text" id="card">
                                    <input type="text" id="card">

                                    <div>
                                        <p>유효기간</p>
                                        <P>카드 비밀번호</P>
                                        <input type="text" placeholder="MM/YY">
                                        <input type="password" placeholder="앞 2자리">
                                    </div>

                                    <p>생년월일 (주민번호 앞 6자리)</p>
                                    <input type="text" id="birth">
                                    <p>무기명 법인카드는 사업자등록번호 10자리를 입력하세요.</p>

                                </form>
                             </div>
                            </div>
                          </div>
                    </div>

                    <div class="point6">
                    <section>
                        <div class="agree_title">
                            약관은 자동으로 동의됩니다.
                        </div>
                        
                        <!-- Button trigger modal --> 		
                        <button type="button" id="agree_btn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            ＞ 제 3자에 대한 개인정보 제공 동의 <b>* 꼭 읽어보세요</b>
                        </button>
                        
                        <!-- Modal --> 		
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content agree_out">
                                    <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">제 3자에 대한 개인정보 제공 동의</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    </div>
                                    <div class="modal-body">
                                    '펀딩하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해, 이용자의 사전 동의 아래 제3자(프로젝트 메이커)에게 제공합니다.
                                        메이커에게 전달되는 개인 정보는 기재된 목적 달성 후 파기에 대한 책임이 메이커에게 있으며, 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게 있습니다.
                                        아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이 제한됩니다.

                                        <p>개인 정보 이용 내역</p>
                                        <table id="agree_list">
                                            <tr>
                                                <td class="table_title">제공받는자</td>
                                                <td class="table_content">(주)회사이름</td>
                                            </tr>
                                            <tr>
                                                <td class="table_title">목적</td>
                                                <td class="table_content">리워드 펀딩 정보 확인 및 발송, 리워드 발송과 관련된 공지 및 민원처리 </td>
                                            </tr>
                                            <tr>
                                                <td class="table_title">항목</td>
                                                <td class="table_content">	서포터 정보(이름, 이메일, 휴대폰 번호), 수취인 정보(이름, 휴대폰 번호, 주소, 배송 시 요청사항)</td>
                                            </tr>
                                            <tr>
                                                <td class="table_title">보유기간</td>
                                                <td class="table_content">펀딩 마감 후 1년</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- Button trigger modal --> 		
                        <button type="button" id="agree_btn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
                            ＞ 책임 규정에 대한 동의 <b>* 꼭 읽어보세요</b>
                        </button>
                        
                        <!-- Modal --> 		
                        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">제 3자에 대한 개인정보 제공 동의</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    </div>
                                    <div class="modal-body">
                                        왓두원은 플랫폼을 제공하는 중개자로 크라우드펀딩을 받는 당사자가 아닙니다. 보상품 제공 등에 관한 지연, 제품의 하자 등으로 인한 일체의 법적책임은 펀딩을 받는 프로젝트 개설자가 부담합니다. 하지만, 왓두원은 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의 노력을 다하고 있습니다.
                                               
                                    </div>
                                    <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </section>
                    </div>
<%-- 
                    <div class="total_sponsor">
                        <a href = "payment_reservation_finish?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code}"><button type="button" class="funding_button" >결제 예약하기</button></a>
                    </div>
 --%>

                </div>



            </div>  
            
           
	</body>
</html>