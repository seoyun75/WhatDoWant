<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<div id="wrap container">
   <div class="mp_title">마이페이지</div>
   <div class="mp_nav clear">
        <ul>
            <a href="/mypage/wallet/wallet">내지갑</a>
            <a href="/mypage/activity/shopping">내활동</a>
            <a href="/mypage/mypageMain/myInfo" >설정</a>
        </ul>
    </div>
    <div id="contents">
        <div class = "cont row justify-content-center">
            <div class="second_nav clear col-2">
                <ul>
                    <li><a href="moneyFlow">거래내역</a></li>
                    <li><a href="account">통장 관리</a></li>
                  
                </ul>
            </div>
            <div class="cont_main col-8">
                <div class="side_title">내지갑
                   	<a href="moneyFlow">상세></a>
                </div>
                

                <!-- 내가 번 금액 -->
                <div class="money_out">
                    <div class="get_money">
                        <div>
                            <img src="../../resources/img/mypage/make_money.png">
                            <p>내가 번 금액</p>
                        </div>
                        <div>
                            <p>원</p><p>${data['sellTot']  }</p>
                        </div>
                    </div>

                    <div class="use_money">
                        <div>
                            <img src="../../resources/img/mypage/money.png">
                            <p>내가 쓴 금액
                            </p>
                        </div>
                        <div>
                            <p>원</p><p>${data['buyTot'] }</p>
                        </div>
                    </div>
                </div>

<!--                 <div class="w_point">
                    <div>
                        <p>W포인트</p>
                        <p>20,000</p><p>원</p><br>
                        <button type="button" onclick="location.href='wpoint'">사용내역 ></button>
                    </div>
                    
                    <div>
                        <img src="../../resources/img/mypage/point.png">
                        이미지 들어갈 자리
                    </div>
                </div> -->

				<!-- 통장정보 -->
                <div class="account">
				<c:set var="account" value="${data['account'] }"/>
                    <div>
                        <p>계좌정보</p>
                        <div class="bank">${account[0].bank }</div>
                        <div class="acc_num">${account[0].account_number }</div>
                        <button type="button" onclick="location.href='/mypage/wallet/account'">관리하기</button>
                    </div>
                    <div>
                        <img src="../../resources/img/mypage/card.png">
                        <!-- 이미지 들어갈 자리 -->
                    </div>
                </div>



            </div>   
        </div>
    </div>
</div>
