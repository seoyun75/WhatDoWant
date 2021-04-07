<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="wrap container">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div class="mp_title">마이페이지</div>
   <div class="mp_nav">

        <ul>
            <a href="/mypage/wallet/wallet">내지갑</a>
        	<a href="/mypage/activity/shopping">내활동</a>
        	<a href="/mypage/mypageMain/myInfo" >설정</a>
        </ul>

    </div>
    <div id="contents">
    	<div class="cont">
            <div class="inner_cont">
                <div class="side_title">통장 관리    </div>
                <button class="new_account" onclick="location.href='accountAdd'"> 통장 추가하기 </button>
            </div>
                
            <div class= "inner_cont" style="background: azure">
                <div>등록한 통장</div>
                <div class="accounts">
<c:forEach items="${data }" var="account" varStatus="no">
                    <div>통장${no.index +1}
                        <div>${account.bank }</div>
                        <div>${account.account_number }</div>
                        <button onclick="location.href='accountDelete?account_number=${account.account_number}'">삭제</button>
                    </div>
</c:forEach>            
                </div>
            </div>
            <!-- <div class="inner_cont">
                <div class="side_title">카드 관리    </div>
                <button class="new_account"> 카드 추가하기 </button>
            </div>
                
            <div class= "inner_cont" style="background: azure">
                <div>등록한 카드</div>
                <div class="accounts">
                    <div>카드1
                        <div>카드사</div>
                        <div>카드번호</div>
                        <button>관리</button>
                    </div>
                    <div>카드1
                        <div>카드사</div>
                        <div>카드번호</div>
                        <button>관리</button>
                    </div>
                    <div>카드1
                        <div>카드사</div>
                        <div>카드번호</div>
                        <button>관리</button>
                    </div>
                </div>
            </div>
        </div> -->
        
    </div>
</div>
