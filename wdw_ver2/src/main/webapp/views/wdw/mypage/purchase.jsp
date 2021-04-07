<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   

<c:set var="pvo" value="${data['pvo'] }"/>
<c:set var="phvo" value="${data['phvo'] }"/>
<c:set var="rdvo" value="${data['rdvo'] }"/>
<c:set var="bsvo" value="${data['bsvo'] }"/>


<div id="content_wrap">
    <div id="content">
        <div class="pur-content"> 
            <div class="funding area">
                <div class="funding cate">${pvo.pro_cate }</div>
                <div class="funding state">●&nbsp;&nbsp;${pvo.pro_state }</div>
                <a href="/infund/detail/detail_story?pro_state=${pvo.pro_state} &pro_cate=${pvo.pro_cate }&pro_code=${pvo.pro_code}">
                    <div class="funding title">${pvo.pro_title }</div>
                </a>
                <div class="funding company">by
                    <span>${bsvo.business_com_name }</span>
                </div>
                <div class="funding data">
                    <div class="f-data">
                        펀딩 번호
                        <div class="f-value">
                            ${pvo.pro_code }
                        </div>
                    </div>
                    <div class="f-data">
                        펀딩 날짜
                        <div class="f-value">
                        	<fmt:formatDate value="${phvo[0].purhistory_funding_date}" pattern="yy년 MM월 dd일 HH:mm:ss"/>
                             
                        </div>
                    </div>
                    <div class="f-data">
                        펀딩 마감일
                        <div class="f-value">
                        
                            <div class="f-endDate">
	                        	<fmt:formatDate value="${pvo.pro_endate}" pattern="yy년 MM월 dd일 HH:mm:ss"/>
        					</div>
                    	</div>
                    <div class="f-data">
                        펀딩 상태
                        <div class="f-value">
                        
                            ${phvo[0].purhistory_paystate }
                        </div>
                    </div>
                </div>
                <!-- <div class="funding receipt">
                    신용(체크)카드 결제가 완료되었습니다.

                </div> -->
            </div>
        </div>
        <div class="pur-content"> 
            <div class="reward area">
            <c:set var="rdTotal" value="0"/>
            <c:forEach var="rr" items="${rdvo }" varStatus="no">
            	<c:set var="rdTotal" value="${rdTotal= rdTotal+(rr.pu_reward_dsn_rew_price*phvo[no.index].purhistory_cnt)}"/>
                <div class="reward title">${rr.pu_reward_dsn_rew_name}</div>
                <div class="reward con">${rr.pu_reward_dsn_detail}</div>
                <div class="reward data">
                    <div class="option data">${phvo[no.index].purhistory_reward }/ ${phvo[no.index].purhistory_cnt }개</div>
                    <div class="option data">옵션 : ${rr.pu_reward_dsn_option }</div>
                    <div class="option data">발송 시작일 : ${rr.pu_reward_dsn_rew_sendmonth }월 ${rr.pu_reward_dsn_rew_sendday } 예정</div>
                </div>
            </c:forEach>
                <div class="reward state">리워드 준비중</div>
            </div>
        </div>
        <div class="pur-content">
            <div class="payment area">
                <div class="payment subtitle">결제 내역</div>
                <div class="payment pay data">
                    <div class="payment pay">리워드 금액
                        <div class="f-value">
                            ${rdTotal}원
                        </div>
                    </div>


                    <div class="payment pay">배송비
                        <div class="f-value">
                            ${rdvo[0].pu_reward_dsn_sendcon }원
                        </div>
                    </div>
                </div>
                <div class="payment total subtitle">최종 결제 금액
                    <div class="f-value">
                        ${rdTotal+ rdvo[0].pu_reward_dsn_sendcon }원
                    </div>
                </div>
            </div>
        </div>
        <div class="pur-content">
            <div class="payment area">
                <div class="payment subtitle">결제 정보</div>
                <div class="payment pay data">
                    <div class="payment pay">결제방법
                        <div class="f-value">
                            신용(체크)카드
                        </div>
                    </div>
                    <div class="payment pay">카드번호
                        <div class="f-value">
                            ************8060
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pur-content">
            <div class="shipping area">
                <div class="shipping subtitle">배송지 정보</div>
                <div class="shipping pay data">
                    <div class="shipping member block">
                        ${phvo[0].purhistory_name }
                        <div class="member call">
                            ${phvo[0].purhistory_phone }
                        </div>
                    </div>
                    <div class="shipping address block">
                        <div class="address detail">
                        	${phvo[0].purhistory_address }
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
    </div>
    <div class="caution last">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-exclamation-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
        </svg>
    리워드 발송은 메이커의 의무로 프로젝트 진행 시 메이커가 약속한 리워드 발송 시작일에 제공하는 것을 원칙으로 합니다. 다만 크라우드펀딩 특성상 메이커의 예기치 못한 일정 변경이 있을 수 있으며, 리워드 발송에 대해 발생한 이슈는 프로젝트 상세 페이지 - 펀딩 안내 탭에 명시한 정책에 따릅니다.
    <div class="btn-back">
        <button type="button" class="btn btn-outline-secondary list"  onclick="location.href='shopping'">목록으로 돌아가기</button>
    </div>
    </div>
</div>
<div>
