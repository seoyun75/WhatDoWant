<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

    
    <div id="wrap ">
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
                        <li><a href="shopping">펀딩 현황</a></li>
                        <li><a href="fundingReg">등록한 프로젝트</a></li>
                        <li><a href="QnAlist">문의하기</a></li>

                    </ul>
                </div>
                <div class="cont_main col-9">
                        <div class="side_title">펀딩현황</div>
                        <div class="buy_list">
<c:forEach items="${data }" var="item">
<%  %>   
                            <div class="sh_product">
                                <a href="purchase" class="">${obj }<img src="../../img_up/project/${item.getPurhistory_code() }/thum.jpg" alt="상품"></a>
                                <div class="prod_text">
                                    <a href="/infund/detail/detail_story?pro_state=${item.pro_state}&pro_cate=${item.pro_cate }&pro_code=${item.purhistory_code}" >
                                        <div>${item.pro_title }</div>
                                        
                                    </a>
                                    <div>${item.purhistory_reward } / ${item.purhistory_cnt } 개</div>
                                    <hr/>
                                    <p>${item.purhistory_funding_date.substring(0,4) }년 ${item.purhistory_funding_date.substring(5,7) }월
                                     ${item.purhistory_funding_date.substring(8,10) }일 ${item.purhistory_funding_date.substring(10) }</p>
                                </div>
                                <div><input type="button" value="상세정보1"  onclick="location.href='purchase?pur_code=${item.purhistory_code}&funding_date=${item.purhistory_funding_date }'"></div>
                            </div>
</c:forEach>                            

                        </div>
                    </div>   
                </div>
            </div>
        </div>
