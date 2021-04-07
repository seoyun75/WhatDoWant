<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
		 <script type="text/javascript"> 
			function initialize() {
			var myLatlng = new google.maps.LatLng(37.556911,126.918694); 
			var myOptions = {
				zoom: 15,
				center: myLatlng,
				mapTypeId: google.maps.MapTypeId.TERRAIN
			}
			var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
			var marker = new google.maps.Marker( {
				position: myLatlng, 
				map: map, 
				title:"(주)서울" 
			});   
			var infowindow = new google.maps.InfoWindow( {
				content: "(주)서울시 마포구"
			});
			infowindow.open(map,marker);
			}
			window.onload=function() {
			initialize();
			}
        </script> 
	</head>
	<body>
		<div id="about_wrap">
			<div id="about_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">회사 정보</p>
					</div>
				</div>
				
				<div id = "aboutus_wrap">
					<div class = "aboutus_menu">
						<ul class = "aboutus_menu_list">
							<li><a href = "aboutus">회사 정보</a></li>
							<li><a href = "road">찾아오시는 길</a></li>
						</ul>
					</div>
                    <div id="aboutus_content" class="about_sub about_summary">
                        <div class="aboutus_wrap_layout">
                            <figure class="aboutus_title_img">
                                <img src="../../resources/img/aboutus/brand-bg-pc.jpg" alt="회사개요 이미지">
                                <figcaption class="screen_out">회사개요 이미지</figcaption>
                            </figure>
                            <h4 class="sub_strapline">회사개요</h4>
                            <p class="sub_txt">
                                <strong class="first_word">WDW은</strong>
								대한민국에서 새로운 도전이 자연스러운 환경을 만들고자 합니다.
								이를 위해 리테일, 트레이더스, 벤처스 등 새로운 사업 영역을 확대하며
								스타트업을 위한 종합 지원 플랫폼으로 나아가고 있습니다.
								왓두원은 서로를 지지하고 도전을 즐기는 기업문화 안에서 아래 5가지 원칙을 가지고 일합니다.
                            </p>
                            <table class="tbl_comm">
                                <caption class="caption_out">WDW전자 주소, 대표전화 정보</caption>
                                <colgroup>
                                    <col style="width:15%">
                                    <col style="width:85%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">주소</th>
                                        <td><span class="zip_code">06236</span> 서울 강남구 테헤란로 146</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">대표전화</th>
                                        <td>010-1565-9878</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
				</div>
			</div>
        </div>
	</body>
</html>