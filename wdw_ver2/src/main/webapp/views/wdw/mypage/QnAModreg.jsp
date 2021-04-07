<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id="wrap container">
        <div class="mp_title">마이페이지</div>
       <div class="mp_nav">

            <ul>
            <a href="/mypage/wallet/wallet">내지갑</a>
            <a href="/mypage/activity/shopping">내활동</a>
            <a href="/mypage/mypageMain/myInfo" >설정</a>
            </ul>

        </div> 
        <div id="contents">
            <div class="mp_qna">
                <div class="side_title ">문의글 수정하기</div>
                <form action="" method="post">
                    <div>
                        <div>
                            <div>제목</div>
                            <div>[${data.si_cate}]${data.si_title }</div>
                        </div>
                        <div>
                            <div>내용</div>
                            <div>${data.si_content }</div>
                        </div>
                        <div>
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <input class="btn btn-primary" type="button" value="목록" class="wdw_btn">
                                <input class="btn btn-primary" type="button" value="수정" class="wdw_btn" onclick="location.href='/mypage/activity/QnAModify?si_no=${data.si_no }'">
                                <input class="btn btn-primary" type="button" value="삭제" class="wdw_btn">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    