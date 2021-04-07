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
                    <li><a href="QnAlist">문의하기</a></li>

                </ul>
            </div>
            <div class="cont_main col-9">
                <div class="mp_list">
                    <div class="side_title">나의 아이디어 게시글</div>
                    <table class="table table-hover idea_table">
                      <thead>
                        <tr>
                          <th scope="col">번호</th>
                          <th scope="col">분류</th>
                          <th scope="col" width="400px">제목</th>
                          <th scope="col">작성일</th>
                          <th scope="col">조회수</th>
                          <th scope="col">좋아요</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">194</th>
                          <td>아이디어</td>
                          <td>박정환 코고는소리 알람</td>
                          <td>20-10-10</td>
                          <td>@mdo</td>
                          <td>@mdo</td>
                        </tr>
                        <tr>
                          <th scope="row">211</th>
                          <td>베스트</td>
                          <td>노대훈 그시절 아버지사진</td>
                          <td>20-03-30</td>
                          <td>@fat</td>
                          <td>@fat</td>
                        </tr>
                        <tr>
                          <th scope="row">232</th>
                          <td>베스트</td>
                          <td>김민영 기깔나는 사이트 페이지</td>
                          <td>20-01-10</td>
                          <td>@twitter</td>
                          <td>@twitter</td>
                        </tr>
                      </tbody>
                    </table>
                </div>
                <div class="mp_list">
                    <div class="side_title">좋아요한 글목록</div>
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th scope="col">번호</th>
                          <th scope="col">분류</th>
                          <th scope="col" width="400px">제목</th>
                          <th scope="col">작성일</th>
                          <th scope="col">작성자</th>
                          <th scope="col">좋아요</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>아이디어</td>
                          <td>박정환 코고는소리 알람</td>
                          <td>20-10-10</td>
                          <td>@mdo</td>
                          <td><button>취소</button></td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>베스트</td>
                          <td>노대훈 그시절 아버지사진</td>
                          <td>20-03-30</td>
                          <td>@fat</td>
                          <td><button>취소</button></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>베스트</td>
                          <td>김민영 기깔나는 사이트 페이지</td>
                          <td>20-01-10</td>
                          <td>@twitter</td>
                          <td><button>취소</button></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>베스트</td>
                          <td>김민영 기깔나는 사이트 페이지</td>
                          <td>20-01-10</td>
                          <td>@twitter</td>
                          <td><button>취소</button></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>베스트</td>
                          <td>김민영 기깔나는 사이트 페이지</td>
                          <td>20-01-10</td>
                          <td>@twitter</td>
                          <td><button>취소</button></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>베스트</td>
                          <td>김민영 기깔나는 사이트 페이지</td>
                          <td>20-01-10</td>
                          <td>@twitter</td>
                          <td><button>취소</button></td>
                        </tr>
                      </tbody>
                    </table>
                </div>
            </div>   
        </div>
    </div>
</div>