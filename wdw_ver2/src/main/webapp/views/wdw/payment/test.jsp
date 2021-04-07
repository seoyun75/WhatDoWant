
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Agenda</title>
<c:set var = "vo" value = "${data}"/>

<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
//실제 복사하여 사용시에는 모든 주석을 지운 후 사용하세요
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
		start_at: '2019-05-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
		end_at: '2022-05-10' // 정기결제 만료일 -  기간 없음 - 무제한
	}
}).error(function (data) {
	//결제 진행시 에러가 발생하면 수행됩니다.
	console.log(data);
}).cancel(function (data) {
	//결제가 취소되면 수행됩니다.
	console.log(data);
}).done(function (data) {
	// 빌링키를 정상적으로 가져오면 해당 데이터를 불러옵니다.
	console.log(data);

	//결제가 정상적으로 완료되면 수행됩니다
	//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
	console.log(data);
		
		/* main.jsp 후원 부분의 c:when 하위 div에 id와 title이 있음.
		 * var(변수) member_id는 #donaClick01이라는 id를 가진 div에서 title 값을 attr(잘라서 가져오기)한 것 */	
		var member_id = $("#donaClick01").attr("title");
		console.log("컨트롤러 넘어가기전 아이디" + member_id)
		console.log("끝 : "+data);
		
		/* ajax를 통해서 url에 json형태의 결과값인 data를 string형태로 바꾼 obj와, 위에서 만든 변수인 member_id를 같이 보냄
		 * (여기까지 읽고 dnController의 donation으로 가세요)
		 * dnController의 "donation"으로 간 json 형태의 값은 다시 이곳으로 돌아와서
		 * success니까 member_id와 같이 dnController의 "dnlist"로 이동함.
		 * */
		$.ajax({
			url: "/BootpayController",
			method: "post",
			data: {"obj" : JSON.stringify(data)},
			success: function(msg){
				/* location.href="./BootpayController"+member_id; */
			},
			error:function(){
				alert("통신 실패");
			}
});
});
</script>
<!-- 
// body 태그 안에 들어가는 후원 박스(부트페이 결제 API)
// JSTL의 c:choose문에서 후원 버튼을 눌렀을 때
// logindto가 null이 ne(아닐)일 때 결제창이 실행되고(c:when),
// null이라면 '로그인해주세요'라는 alert창이 뜸(c:otherwise)
 -->
	<!-- <section class="section third area"> -->
	
		<div class="donation-wrapper">
			<span></span><span></span><span></span>
			<div class="donation-content-wrapper">
				<p>A Cup of Coffee </p>
				
					
						<button class="donation-content" onclick="BootPay.request()" id="donaClick01" >rufwpgkrl</button>
					
		

			</div>
			<span></span><span></span><span></span>
		</div>
		
		<%-- <div class="donation-wrapper">
			<span></span><span></span><span></span>
			<div class="donation-content-wrapper">
				<p>A piece of cake</p>
				<c:choose>
					<c:when test="${logindto ne null }">
						<div class="donation-content" onclick="pay02()" id="donaClick02" title="${logindto.member_id }">donate</div>
					</c:when>
					<c:otherwise>
						<div class="donation-content" onclick="alert('로그인해주세요')" id="donaClick02">donate</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<div class="donation-wrapper">
			<span></span><span></span><span></span>
			<div class="donation-content-wrapper">
				<p>Coffee</p> <p>with a Piece of Cake</p>
				<c:choose>
					<c:when test="${logindto ne null }">
						<div class="donation-content" onclick="pay03()" id="donaClick03" title="${logindto.member_id }">donate</div>
					</c:when>
					<c:otherwise>
						<div class="donation-content" onclick="alert('로그인해주세요')" id="donaClick03">donate</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<div class="donation-wrapper">
			<span></span><span></span><span></span>
			<div class="donation-content-wrapper">
				<p>Whole Cake set</p>
				<c:choose>
					<c:when test="${logindto ne null }">
						<div class="donation-content" onclick="pay04()" id="donaClick04" title="${logindto.member_id }">donate</div>
					</c:when>
					<c:otherwise>
						<div class="donation-content" onclick="alert('로그인해주세요')" id="donaClick04">donate</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</section> --%>
    
<%-- // body 끝나기 직전에 js(javascript) 호출 코드
<script type="text/javascript" src="${pageContext.request.contextPath}/main/mainpay.js"></script> --%>