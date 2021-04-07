<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>


<script>
$(document).ready(function() {
    //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.

    $("#addr").click(function(){
    	daum.postcode.load(function(){

            new daum.Postcode({

                oncomplete: function(data) {
					console.log(data)
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

					$("#mem-addr1").val("["+data.zonecode+"]"+data.address)
                    

                }

            }).open();

        });
       })
    
});

</script>

    
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
        <div id="c-area">
            <div class="c-title">
                회원정보 설정
            </div>
            <div class="c-content">
                <form action="/mypage/mypageMain/infoModify" method="post">
                    <div class="field mem-name-field">
                        <div class="wdw input action">
                            <input type="text" name="member_id" id="mem-id" value="${data.member_id }" disabled="disabled">
                        </div>
                    </div>
                    <div class="field mem-pw-field">
                        <div class="wdw input action">
                            <input type="text" name="member_pname" id="mem-pname" value="${data.member_pname }">
                        </div>
                    </div>
                    <div class="field mem-pw-field">
                        <div class="wdw input action">
                            <input type="text" name="member_address" id="mem-addr1" value="${data.member_address.split('&')[0] }">
                            <button type="button" id="addr">주소검색</button>
                        </div>
                        <div class="wdw input action">
                            <input type="text" name="member_address_second" id="mem-addr2" value="${data.member_address.split('&')[1] }">
                        </div>
                    </div>
                    <input type="submit" class="form-com" value="설정 저장" formaction=""/>
                </form>
               <div class="c-title">
                   본인인증
               </div>
               <form method="POST">
                   <div class="field mem-name-field">
                       <div class="wdw input action">
                           <input type="text" name="pname" id="mem-pname" placeholder="이름">
                       </div>
                   </div>
                   <div class="field mem-jumin-field">
                       <div class="wdw input action">
                           <input type="text" name="jumin" id="mem-jumin" placeholder="주민번호">
                       </div>
                   </div>
                   <div class="field mem-jumin-field">
                       <select class="form-select agency" aria-label=".form-select-lg example">
                           <option selected>통신사를 선택하세요</option>
                           <option value="skt">SKT</option>
                           <option value="kt">KT</option>
                           <option value="lg">LG</option>
                         </select>
                   </div>
                   <div class="field mem-phone-field">
                       <div class="wdw input action phone">
                           <input type="text" name="phone" id="mem-phone" placeholder="'-'없이 핸드폰 번호를 입력해주세요.">
                       </div>
                       <input type="submit" class="form-com phone" value="인증 요청" formaction=""/>
                   </div>
               </form>
               <div class="c-title">
                   비밀번호 변경
               </div>
               <form action="/mypage/mypageMain/infoModify" method="post">
                   <div class="field mem-pw-field">
                       <div class="wdw input action">
                           <input type="text" name="prepw" id="mem-pw" placeholder="현재 비밀번호">
                       </div>
                   </div>
                   <div class="field mem-pw-field">
                       <div class="wdw input action">
                           <input type="text" name="newpw" id="mem-pw" placeholder="새 비밀번호">
                       </div>
                       <div class="wdw input action">
                           <input type="text" name="chkpw" id="mem-pw-chk" placeholder="비밀번호 확인">
                       </div>
                   </div>
                   <input type="submit" class="form-com" value="비밀번호 변경" formaction=""/>
               </form>
               <div class="c-title">
                   회원 탈퇴
               </div>
               <button type="button" class="btn btn-primary form-com" data-toggle="modal" data-target="#secede" >회원탈퇴</button>
               <div class="modal fade" id="secede" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">탈퇴하시겠습니다?</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				 	  <form action="/mypage/mypageMain/withdraw" method="post">
				      	<div class="modal-body">
					     
					        <p>비밀번호를 입력후 탈퇴하기를 클릭시 즉시 탈퇴됩니다</p>
					        <span>비밀번호</span><input type="text" name="passward"/>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					        <input type="submit" class="btn btn-primary" value="탈퇴하기">
				      	  </div>
			      		</form>
				    </div>
				  </div>
				</div>
           </div>
       </div>
   </div>
</div>
