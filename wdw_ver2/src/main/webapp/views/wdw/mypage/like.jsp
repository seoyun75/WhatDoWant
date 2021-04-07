<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                    <li><a href="shopping">구매프로젝트</a></li>
                    <li><a href="fundingReg">등록한 프로젝트</a></li>
                    <li><a href="like">찜 / 최근본목록</a></li>
                    <li><a href="idea">아이디어 게시판</a></li>
                    <li><a href="QnAlist">문의하기</a></li>

                </ul>
            </div>
            <div class="cont_main col-9">
                <div class="mp_like_list mp_list">
                    <div class="side_title">찜한 상품</div>
                    <div class="row row-cols-1 row-cols-md-3">
                     
                      <div class="col mb-4">
                        <div class="card h-100" style="width: 17rem;">
                          <img src="../../resources/img/mypage/product01.png" class="card-img-top" alt="상품"  onclick="location.href='../detail/detail_story.html'">
                          <div class="card-body">
                            <h4 class="card-title"  onclick="location.href='../detail/detail_story.html'">우리 강아지 카시트~</h4>
                            <p class="card-text">
                            우리 강아지와 함께 안전한 드라이브를~~~~드~~라~~이~~~브~~~~</p>
                          </div>
                        </div>
                      </div>
                      
                      <div class="col mb-4">
                        <div class="card h-100" style="width: 17rem;">
                          <img src="../../resources/img/mypage/product02.png" class="card-img-top" alt="..."  onclick="location.href='../detail/detail_story.html'">
                          <div class="card-body">
                            <h5 class="card-title"  onclick="location.href='../detail/detail_story.html'">터틀컨트리</h5>
                            <p class="card-text">자라나라  머리~~~</p>
                          </div>
                        </div>
                      </div>
                      
                      <div class="col mb-4">
                        <div class="card h-100" style="width: 17rem;">
                          <img src="../../resources/img/mypage/product03.png" class="card-img-top" alt="..."  onclick="location.href='../detail/detail_story.html'">
                          <div class="card-body">
                            <h5 class="card-title"  onclick="location.href='../detail/detail_story.html'">원터치 벨트</h5>
                            <p class="card-text">이제 간편하게 벨트를 착용하세요</p>
                          </div>
                        </div>
                      </div>
                      
                      <div class="col mb-4">
                        <div class="card h-100" style="width: 17rem;">
                          <img src="../../resources/img/mypage/product03.png" class="card-img-top" alt="..."  onclick="location.href='../detail/detail_story.html'">
                          <div class="card-body">
                            <h5 class="card-title"  onclick="location.href='../detail/detail_story.html'">원터치 벨트</h5>
                            <p class="card-text">이제 간편하게 벨트를 착용하세요</p>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
                <div class="mp_look">
                    <div class="side_title ">최근본 항목</div>
                    <div class="card-deck row-cols-1 row-cols-sm-5 d-flex justify-content-around like_cont">
                        <img src="../../resources/img/mypage/product01.png" class="rounded float-left" alt="..."  onclick="location.href='../detail/detail_story.html'">
                        <img src="../../resources/img/mypage/product02.png" class="rounded float-left" alt="..."  onclick="location.href='../detail/detail_story.html'">
                        <img src="../../resources/img/mypage/product03.png" class="rounded float-left" alt="..."  onclick="location.href='../detail/detail_story.html'">
                        <img src="../../resources/img/mypage/product01.png" class="rounded float-left" alt="..."  onclick="location.href='../detail/detail_story.html'">
                        
                    </div>
                    <div><button type="button" class="btn btn-outline-secondary">더보기▽</button></div>
                </div>
            </div>   
        </div>
    </div>
</div>
