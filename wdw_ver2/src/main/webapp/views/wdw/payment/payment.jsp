<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${path }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatNumber value="${vo.pro_target_amount }" pattern="0,000.00"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>story</title>
		<script>
		function addComma(value){
	        value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	        return value; 
	    }
		function itemSum()
		{ 
		   var chkbox = $('input[name="re_input_chk"]');
		   var tots = $('input[name="tots"]');
		   var inp = $('input[name="re_input_cnt"]');
		   var sum = 0;
		   var count = chkbox.length;
		   for(var i=0; i < count; i++ ){
		       if( chkbox[i].checked == true ){
		        if(isNaN(parseInt(inp[i].value))){
		            sum += parseInt(tots[i].value);
		        }else{
		            sum += parseInt(tots[i].value)*parseInt(inp[i].value);
		           console.log(sum);
		        }
		       }
		   }
		   $("#tong").html(addComma(String(sum)));
		}

		/* function submit(form){
			var msg = "";
			if(re_input_chk[i].checked == true){
				msg = form.re_input_chk[i].value
				
			} */
			$("input:checked").each(function() {
				  var test = $(this).val(); 
				 

				  alert("벨류값확인 : " + test);


				}
							
		</script>
	</head>
	<body>
	<c:set var = "vo" value = "${data}"/>
		<div id="wrap">	 
		<form method="post" enctype="multipart/form-data" action = "payment_reservation?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }">
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

                <div class="reward_title">
                    <p>리워드 선택</p>
                </div>
                    
                <!-- Button trigger modal -->
                <a class="notice_view" data-toggle="modal" data-target="#staticBackdrop">
                    펀딩 주의사항
                </a>
                            
                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">펀딩 주의사항</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <b style="font-size: 30px;">펀딩하기는 쇼핑하기가 아닙니다.</b>


                                쇼핑과 어떻게 다른지 아래 내용을 읽어주세요! :)

                                와디즈의 펀딩 프로젝트에 펀딩하는 것은 메이커의 창작물을 단순히 사고파는 쇼핑이 아니라, 메이커의 창작활동 및 목표실현을 위한 과정을 지원하는 것입니다. 

                                <b class="bold">1. 펀딩 즉시, 결제가 진행되지 않아요.</b>
                                결제 수단을 등록하면 결제가 바로 진행되는 쇼핑하기와 다르게 펀딩하기는 프로젝트의 목표금액과 마감일이 있어 해당 프로젝트가 목표금액을 달성했을 때만, (프로젝트의 펀딩 타입에 따라 그렇지 않은 경우도 있습니다.) 마감일 다음날 펀딩에 참여한 서포터 모두 함께 결제가 진행됩니다.
                                        

                                <b class="bold">2. 배송이 바로 진행되지 않아요.</b>
                                결제가 모두 완료되었다고 펀딩한 리워드가 바로 발송되지 않습니다. 메이커는 각 리워드마다 리워드 발송 시작일을 명시하고 있으며, 메이커가 약속한 리워드 발송 시작일에 발송이 진행되는 것을 원칙으로 합니다.

                                <b class="bold">3. 메이커의 사정으로 리워드 발송이 지연될 수 있습니다.</b>
                                펀딩 금액을 전달받아 리워드 제작을 시작하는 크라우드펀딩의 특성 상, 메이커가 약속한 리워드 발송이 지연 될 수 있습니다. 스토리 하단에 메이커가 약속한 리워드 발송 지연 시에 대한 약속과 교환 및 환불 정책에 대한 설명이 작성되어 있으니 펀딩 참여 전 꼭 읽어주세요.

                                ※ 단, 기부/후원 프로젝트의 경우 리워드가 없으므로 리워드 배송 등에 해당사항이 없습니다 :)
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- 리워드들 -->
                    
                    <div id="accordion" class="panel-group">

                      <c:forEach items = "${vo.rewdsn }" var = "dsn" varStatus="status">
                      <form method = "post" id = "payment" name = "payment" enctype = "multipart/form-data">
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                              <label for="check1" href="#collapse${status.count}" data-toggle="collapse" data-parent="#accordion" class="" aria-expanded="true">
                                <input type="radio" id="check1" name = "re_input_chk" value = "${dsn.pu_reward_dsn_rew_name}" onclick = "itemSum()">
                                <input name = "tots" type = "hidden" value = "${dsn.pu_reward_dsn_rew_price}" />
                                <input type = "hidden" name = "re_input_chk"/>
                                <div class="reward_content" aria-expanded="true">
                                    <p><fmt:formatNumber value="${dsn.pu_reward_dsn_rew_price }" pattern="#,##0"/>원 펀딩합니다.</p>
                                    <input type = "hidden" value="${dsn.pu_reward_dsn_rew_price }" name = "pu_reward_dsn_rew_price"/>
                                    <p>${dsn.pu_reward_dsn_rew_name } </p>
                                    <input type = "hidden" value="${dsn.pu_reward_dsn_rew_name }" name = "pu_reward_dsn_rew_name"/>
                                    <p>${dsn.pu_reward_dsn_detail }</p>
                                    <input type = "hidden" value="${dsn.pu_reward_dsn_detail }" name = "pu_reward_dsn_detail"/>
                                    <p>배송비 <fmt:formatNumber value="${dsn.pu_reward_dsn_sendcon }" pattern="#,##0"/>원</p>
                                    <input type = "hidden" value="${dsn.pu_reward_dsn_sendcon }" name = "pu_reward_dsn_sendcon"/>
                                </div>
                              </label>
                          </h4>
                        </div>
                        

                        <div id="collapse${status.count}" class="panel-collapse collapse in" aria-expanded="true" style="">
                          <div class="panel-body">

                            <p>수량</p>
                            <input type="text" placeholder="0" onfocus="this.placeholder=''" onblur="this.placeholder='0'" name = "re_input_cnt"  onchange = "itemSum()">
                            <input type="hidden" name = "re_input_cnt" >
							
                          </div>
                        </div>
                      </div>
                      </form>
					</c:forEach>

                    </div>

                    <!-- 후원금 더하기 -->
                    <div class="sponsor">
                        <h3>후원금 더하기 <span>(선택)</span></h3>
                        <div class="donation-wrap">
                         <p class="sub-text">
                             후원금을 더하여 펀딩할 수 있습니다. 추가 후원금을 입력하시겠습니까?</p>
                         <p class="input-area"></p>
                         <div class="pay">
                                 <input type="text" placeholder="0" value = "0" name = "re_input_pay">
                                 <input type="hidden" name = "re_input_pay">
                         </div>
                         <p>원을 추가로 후원합니다.</p>
                        </div>
                    </div>
                    <div class="total_sponsor">
                        	<h6 id = "tong"></h6>
                        <p>원을 펀딩합니다.</p>
                        <a href = "payment_reservation?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }&">
                       		<button type="submit" onclick = "submit()" class="funding_button" value = "다음으로 &gt;"></button>
                       		
                        </a>
                    </div>

                </div>
				</form>
                </div>
         
	</body>
</html>