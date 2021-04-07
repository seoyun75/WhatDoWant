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
		<script type="text/javascript">
			document.function(){
				var msg = '결제에 성공하였습니다.';
                
                alert(msg);
				}
		</script>
	</head>
	<body>	
	<c:set var = "vo" value = "${data}"/>
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

                <div class="success">
                    <p>${member.member_pname} 서포터님,
                        펀딩으로 참여해주셔서 감사합니다!</p>
                    <input type = "hidden" name = "purhistory_name" value = "<%= request.getParameter("purhistory_name")%>"/>
                     <input type = "hidden" name = "purhistory_phone" value = "<%= request.getParameter("purhistory_phone")%>"/>
                     <input type = "hidden" name = "purhistory_address" value = "<%= request.getParameter("purhistory_address")%>"  /> 
                     <input type = "hidden" name = "purhistory_amount" value = "<%= request.getParameter("pu_reward_dsn_rew_price")%>"  /> 
                     <input type = "hidden" name = "purhistory_reward" value = "<%= request.getParameter("pu_reward_dsn_rew_name")%>"  /> 
                     <input type = "hidden" name = "purhistory_cnt" value = "<%= request.getParameter("re_input_cnt")%>"  /> 
                </div>

                <div class="total_sponsor">
                    <a href = "/infund/detail/detail_story?pro_state=${vo.provo.pro_state}&pro_cate=${vo.provo.pro_cate }&pro_code=${vo.provo.pro_code}"><button type="button" class="funding_button">상품으로 가기</button></a>
                </div>



            </div>   
    

        </div>
	
	</body>
</html>