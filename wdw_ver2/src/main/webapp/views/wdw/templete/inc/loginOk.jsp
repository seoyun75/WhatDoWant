<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>

		function logout(){
			if(confirm("로그아웃 하시겠습니까?")==true){
				alert("로그아웃 되었습니다.\n이용해주셔서 감사합니다.");
				location.href="/main/main/main";
			}
		}

	</script>

</head>
<body>
	<div id="header_wrap">
        <div id = "header">
            <div class="left">
                <h1><a href="/main/main/main">WDW</a></h1>
                <nav class="navbar navbar-expand-lg navbar-light" style="height: 50px;">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                        <ul class="navbar-nav mr-auto" style="height: 50px;">
                            <li class="nav-item active">
                                <a class="nav-link" href="/infund/product_investment/reward_main?pro_state=진행&pro_cate">상품투자 <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                더보기
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/aboutus/aboutus/aboutus">회사소개</a>
                                <a class="dropdown-item" href="/board/notice/notice">공지사항</a>
                                <a class="dropdown-item" href="/guid/guiding/guiding">이용가이드</a>
                                <a class="dropdown-item" href="/questions/questions/fnq">F&Q</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class = "projec_join">
                <a href="/project_up/project_up/funding_establishment"><button type="button" class="btn btn-outline-primary">프로젝트 등록</button></a>
                <a href="/mypage/mypageMain/main"><button type="button" class="btn">마이페이지</button></a>
                <a href="/login/login/logout"><button type="button" class="btn">로그아웃</button></a>
            </div>
            
        </div>
    </div>
</body>
</html>