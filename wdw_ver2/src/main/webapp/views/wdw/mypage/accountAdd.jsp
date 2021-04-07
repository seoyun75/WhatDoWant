<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="wrap container">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>


</script>


  <div class="mp_title">마이페이지</div>
   <div class="mp_nav">

        <ul>
            <a href="/mypage/wallet/wallet">내지갑</a>
        	<a href="/mypage/activity/shopping">내활동</a>
        	<a href="/mypage/mypageMain/myInfo" >설정</a>
        </ul>

    </div>
    <div id="contents">
    	<div class="cont accordion" id="accordionExample">
            <div class="side_title">통장 추가    </div>

                
			<form action="/mypage/wallet/account" method="post">
	            <div class="card">
				   <div class="card-header" id="headingOne">
				     <h2 class="mb-0">
				       <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				         은행 선택 ▼
				       </button>
				     </h2>
				   </div>
				   <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				     <div class="card-body">
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="농협은행"/>농협은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="우리은행"/>우리은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="기업은행"/>기업은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="산업은행"/>산업은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="KB은행"/>KB은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="하나은행"/>하나은행
				       <input type="radio" name="bank" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" value="카카오뱅크"/>카카오뱅크
				     </div>
				   </div>
				 </div>
				 <div class="card">
				   <div class="card-header" id="headingTwo">
				     <h2 class="mb-0">
				       <div>
				         통장 정보 입력
				       </div>
				     </h2>
				   </div>
				   <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
				     <div class="card-body">
				       <div class="field mem-name-field">
	                        <div class="wdw input action bank_name">
	                        </div>
	                    </div>
	                    <div class="field mem-pw-field">
	                        <div class="wdw input action">
	                            <input type="text" name="account_number" id="mem-pname" placeholder="'-'없이 계좌번호 입력">
	                        </div>
	                    </div>
	                    <input type="submit" class="form-com" value="설정 저장" />
				     </div>
				   </div>
				 </div>
			 </form>
        </div>
        
    </div>
</div>
