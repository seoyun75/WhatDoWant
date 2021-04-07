
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/common/reset.css">
<link rel="stylesheet" href="/resources/css/project_up/common.css">
<link rel="stylesheet" href="/resources/css/project_up/funding_first.css" />


<script language='JavaScript'>
function _submit(f)
{
	
	
    //같이 보낼 값 정리
    if (typeof(f.elements['send'].length) == 'undefined') //단일
    {
        if (f.elements['send'].checked==false)
        {
            f.elements['funding_date'].disabled=true;

        }
    } else { //다중
        for (i=0; i<f.elements['send'].length; i++)
        {
            if (f.elements['send'][i].checked==false)
            {
                f.elements['funding_date'][i].disabled=true;
                f.elements['delivery'][i].disabled=true;

            }
        }
    }
    return true;
}

function _checked(){
	$("input:checkbox[name='send']").prop("checked", true);
	
}

$('.link').click(function () {return false;});
</script>
</head>


<body>
<c:set var="pvoList" value="${data['pvoList'] }"/>
<c:set var="page" value="${data['page'] }"/>
 <div id="funding_wrap">
			<div id="funding_Container" class="funding_container">
				<div class="funding_navbar_container">
					<button type="button" class="rwd button less navbar_button">
						<i aria-hidden="true" class="icon menu"></i>
					</button>
					<div class="navbar_logo">
						<button type="button" class="rwd button less" onclick="location.href='/main/main/main'">
							<img alt="로고" src="/resources/img/common/logo.png" style="width: 60px;">
						</button>
					</div>
					<div class="navbar_Info">
                        <span class="navbar_Info_wrap navbar_Image navbar_Image_company" style="width: 32px; height: 32px;">
                            <span class="navbar_Infoimg"></span>
                        </span>
                        <span>${member.member_pname }</span>
                    </div>
                    <div class="navbar_buttons">
                        <div class="button_container">
                            <button class="preview_button rwd button circular dense primary_outline" type="button">
                                미리보기
                            </button>
                        </div>
                        <button type="button" class="rwd button less navbar_exitButton">
                            나가기
                        </button>
                    </div>
                </div>
                <div class="navbar_main_info">
                    <div class="sidebar_contents">
                        <div class="projectInfo_container">
                            <a href="#" target="_blank" >
                                <strong class=" projectInfo_box projectInfo_flag">
                                    펀딩
                                </strong>
                                <strong class=" projectInfo_box">
                                    펀딩 준비 작성 중
                                </strong>
                                <h2 class="projectInfo_title">
                                    ${member.member_pname }의
                                    <br>
                                    멋진 프로젝트
                                </h2>
                            </a>
                            <button type="button" class="projectInfo_port">
                                <div>
                                    <%-- ${pvoList.purhistory_code} --%>
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                        <div class="menuList_text">
                                            오픈 이후에 수정이 불가능합니다. 왓두원에 문의하세요.
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="after_fundingStatus?pro_code=${data.pro_code} ">
                                        펀딩 현황
                                    </a>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="after_sendManagement?pro_code=${data.pro_code}">
                                        발송 관리
                                        <!-- <i aria-hidden="true" class="icon open_after menuList_open"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div> -->
                                    </a>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="after_inquiry?pro_code=${data.pro_code}">
                                        문의·답변
                                        <!-- <i aria-hidden="true" class="icon open_after menuList_open"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div> -->
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div id="funding_preparation" class="funding_preparation">
                        <div class="funding_preparation_wrapper">
                           <div class="send_Management">
                           
                           		<form onsubmit="_submit(this);">
	                       
	                           		<span>발송 관리</span>
	                           		<div class="btn_wrapper">
	                           			<div class="btn_list">
		                           			<button>전체선택</button>
		                           			<button onclick="_checked();">선택취소</button>
		                           			<input type="submit" value="발송" formaction="after_sendManagement_send"/>
		                           			<input type="submit" value="발송취소" formaction="after_sendManagement_cancel"/>
	                           			</div>
	                           		</div>
	                           		<div class="send_list_wrapper">
	                           			<table class="table">
										  <thead class="thead-dark">
										    <tr>
										      <th scope="col"><input type="checkbox" /></th>
										      <th scope="col">성명</th>
										      <th scope="col">리워드 명</th>
										      <th scope="col">주소</th>
										      <th scope="col">배송상태</th>
										      <th scope="col">발송일</th>
										    </tr>
										  </thead>
										  <tbody>
										
										<c:forEach var="pur" items="${pvoList }">
										    <tr>
										      <th scope="row">
										      	<input type="checkbox" name="send" value="${pur.purhistory_buyer}"/>
									      	
										      	<input type="hidden" name="funding_date" value="${pur.pur_funding_date_tostring }"/>
										      	<input type="hidden" name="delivery" value="${pur.purhistory_delivery }"/>
										      </th>
										      <td>${pur.purhistory_name }</td>
										      <td>${pur.purhistory_reward }</td>
										      <td>${pur.purhistory_address }</td>
										      <td>${pur.delivery_state }</td>
										      <td>${pur.purhistory_delivery }</td>
										    </tr>
										</c:forEach>									  
								      	<input type="hidden" name="pro_code" value="${data.pro_code }"/>
										  </tbody>
										</table>
	                           		</div>
                           		</form>
                           </div>
                        </div>
                    </div>
                 </div>
              </div>
         </div>
</body>
</html>
