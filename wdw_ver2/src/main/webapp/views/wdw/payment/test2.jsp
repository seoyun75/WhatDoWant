<%@page import="com.example.demo.product.BootpayApi"%>
<%@page import="com.example.demo.product.Test"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>
<script type="text/javascript">
		BootPay.request({
			price: 0, // 0으로 해야 한다.
			application_id: "5fdc50bc2fa5c2002f038a96",
			name: '정기적인 결제', //결제창에서 보여질 이름
			pg: 'kcp',
			method: 'card_rebill', // 빌링키를 받기 위한 결제 수단
			show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
			user_info: {
				username: '사용자 이름',
				email: '사용자 이메일',
				addr: '사용자 주소',
				phone: '010-1234-4567'
			},
			order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
			params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
			extra: {
				start_at: '2020-12-19', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
				end_at: '2020-12-21' // 정기결제 만료일 -  기간 없음 - 무제한
			}
		}).error(function (data) {
			//결제 진행시 에러가 발생하면 수행됩니다.
			console.log(data);
		}).cancel(function (data) {
			//결제가 취소되면 수행됩니다.
			console.log(data);
		}).done(function (data) {

				 //결제가 정상적으로 완료되면 수행됩니다

				 //비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
/* 				 self.location.href="/payment/test2?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code }'&receiptId="+data.receipt_id; */
				 console.log(data);
				 var member_id = $("#donaClick01").attr("title");
					console.log("컨트롤러 넘어가기전 아이디" )/* + member_id */
					console.log("끝 : "+data);
					
					 /* * ajax를 통해서 url에 json형태의 결과값인 data를 string형태로 바꾼 obj와, 위에서 만든 변수인 member_id를 같이 보냄
					 * (여기까지 읽고 BootpayController의 donation으로 가세요)
					 * BootpayController의 "donation"으로 간 json 형태의 값은 다시 이곳으로 돌아와서
					 * success니까 member_id와 같이 BootpayController의 "dnlist"로 이동함.
					 * */ 
					$.ajax({
						url: "/BootpayApi",
						method: "POST",
						headers: { "Content-Type": "application/json" },
						
						/* data: {"obj" : JSON.stringify(data)}, *//* , member_id : member_id */
						/* success: function(msg){
							location.href="/payment_reservation";
						}, */
						error:function(){
							alert("통신 실패");
						}
		});
		});
</script>
</head>
<body>
	<!-- <button onclick="BootPay.request()">결제한다</button> -->
	<hr>
	<button class="donation-content" onclick="BootPay.request()" id="donaClick01" >rufwpgkrl</button>
	
</body>
</html>