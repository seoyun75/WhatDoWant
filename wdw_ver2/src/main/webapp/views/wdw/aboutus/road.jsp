<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
		 <script type="text/javascript" src=" http://maps.google.com/maps/api/js?v=3.3&sensor=true"></script>
        <script type="text/javascript"> 
			function initialize() {
			var myLatlng = new google.maps.LatLng(37.5000441,127.0352164); 
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
				content: "(주)WDW"
			});
			infowindow.open(map,marker);
			}
			window.onload=function() {
			initialize();
			}
        </script> 
	</head>
	<body>
		<div id="roads_wrap">
			<div id="road_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">찾아오시는 길</p>
					</div>
				</div>
				
				<div id = "road_wrap">
					<div class = "road_menu">
						<ul class = "road_menu_list">
							<li><a href = "aboutus">회사 정보</a></li>
							<li><a href = "road">찾아오시는 길</a></li>
						</ul>
					</div>
					<div class = "road_map">
                        <h4 class="sub_strapline">찾아오시는 길</h4>
                         <div id="map_canvas" style="width:100%; height:400px;"></div>
                       <%--  <img  style="width:100%; height:400px; alt="" src="${path }/resources/img/aboutus/map.jpg"> --%>
                  <!--       <div id="map_canvas" style="width:100%; height:400px;"></div> -->
                    </div>
				</div>
			</div>
		</div>
	</body>
</html>