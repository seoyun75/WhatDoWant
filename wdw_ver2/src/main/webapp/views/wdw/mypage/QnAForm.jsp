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
                <div class="site_title ">1 : 1 문의하기</div>
                <form action="QnAReg" method="post">
                    <div>
                        <div>
                            <div>제목</div>
                            <input type="text" name="si_title">
                            <div>
                                <select name="si_cate" id="category">
                                    <option value="QnA-poject">프로젝트 등록</option>
                                    <option value="QnA-funding">리워드 펀딩</option>
                                    <option value="QnA-other">기타</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <div>내용</div>
                            <textarea name="si_content" id="" cols="120" rows="100" var></textarea>
                        </div>
                        <div>
                            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <input class="btn btn-primary" type="submit" value="저장" class="wdw_btn">
                                <input class="btn btn-primary" type="button" value="취소" class="wdw_btn">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    