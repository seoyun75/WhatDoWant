<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
		
	</head>
	<body>

		<div id="quest_wrap">
			<div id="quest_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">아이디어 등록</p>
						<img src="${path }/resources/img/questions/img1.jpg" alt="" />
					</div>
				</div>
				
				<form method="post" enctype="multipart/form-data">
				<div id = "quest">
                    <h4>아이디어</h4>
                    
                  
                    <ui-view name="name">
                        <div class="form_section">
                            <div class="title_line" role="button" >
                                <label class="col-lg-2 col-sm-3 col-xs-6 control_label">상품명
                                    <i class="icon_must" aria-label="필수항목"></i> 
                                    <a role="button" href="">
                                        <i class="fn fn_help1 text_primary" aria-hidden="true"></i>
                                    </a>   
                                </label>
                                <div class="col-lg-10 col-sm-9 col-xs-6 input_content">
                                    <div class="set_option no_set"> 
                                        <a class="btn btn_default btn-hide active" href="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="inner_content input_content">
                                <div class="form_section_sub">
                                    <div class="form_sub_wrap">
                                        <div class="input_content">
                                            <div class="form_group">
                                                <div class="input_group">
                                                    <div class="seller_input_wrap">
                                                        <input name="product.name" type="text" class="form_control"maxlength="100" title="상품명 입력">
                                                        <a role="button" class="btn_clear" tabindex="-1" style="display:none;">
                                                            <span aria-label="삭제">×</span>
                                                        </a>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ui-view>
                    
                    <ui-view name="images">
                        <div class="form_section">
                            <ng-form name="product" class="">
                                <div class="title_line" role="button">
                                    <label class="col-lg-2 col-sm-3 col-xs-6 control_label">상품이미지 
                                        <i class="icon_must" aria-label="필수항목"></i>
                                        <a role="button" href="">
                                            <i class="fn fn_help1 text_primary" aria-hidden="true"></i>
                                        </a>
                                    </label>
                                    <div class="col-lg-10 col-sm-9 col-xs-6 input_content">
                                        <div class="set_option">
                                            <a class="btn btn_default active" href="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="input_content inner_content">
                                    <div class="form_section_sub">
                                        <div class="form_sub_wrap form_sub_wrap2">
                                            <label class="control_label">메인이미지
                                               
                                                <a role="button" href="">
                                                    <i class="fn fn_help1 text_primary" aria-hidden="true"></i>
                                                </a>
                                            </label>
                                            <div class="input_content">
                                                <ncp-photo-infra-image-upload id="representImage">
                                                    <div class="pc">
                                                        <div class="seller_product_img add_img">
                                                            <div class="wrap_img">
                                                                <ul class="img_list">
                                                                    
                                                                      
                                                                        
                                                                        <script type="text/javascript"> 

																			function previewImage(targetObj, View_area) {
																				var preview = document.getElementById(View_area); //div id
																				var ua = window.navigator.userAgent;
																	
																			  //ie일때(IE8 이하에서만 작동)
																				if (ua.indexOf("MSIE") > -1) {
																					targetObj.select();
																					try {
																						var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
																						var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);
																	
																	
																						if (ie_preview_error) {
																							preview.removeChild(ie_preview_error); //error가 있으면 delete
																						}
																	
																						var img = document.getElementById(View_area); //이미지가 뿌려질 곳
																	
																						//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
																						img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
																					} catch (e) {
																						if (!document.getElementById("ie_preview_error_" + View_area)) {
																							var info = document.createElement("<p>");
																							info.id = "ie_preview_error_" + View_area;
																							info.innerHTML = e.name;
																							preview.insertBefore(info, null);
																						}
																					}
																			  //ie가 아닐때(크롬, 사파리, FF)
																				} else {
																					var files = targetObj.files;
																					for ( var i = 0; i < files.length; i++) {
																						var file = files[i];
																						var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
																						if (!file.type.match(imageType))
																							continue;
																						var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
																						if (prevImg) {
																							preview.removeChild(prevImg);
																						}
																						var img = document.createElement("img"); 
																						img.id = "prev_" + View_area;
																						img.classList.add("obj");
																						img.file = file;
																						img.style.width = '180px'; 
																						img.style.height = '118px';
																						preview.appendChild(img);
																						if (window.FileReader) { // FireFox, Chrome, Opera 확인.
																							var reader = new FileReader();
																							reader.onloadend = (function(aImg) {
																								return function(e) {
																									aImg.src = e.target.result;
																								};
																							})(img);
																							reader.readAsDataURL(file);
																						} else { // safari is not supported FileReader
																							//alert('not supported FileReader');
																							if (!document.getElementById("sfr_preview_error_"
																									+ View_area)) {
																								var info = document.createElement("p");
																								info.id = "sfr_preview_error_" + View_area;
																								info.innerHTML = "not supported FileReader";
																								preview.insertBefore(info, null);
																							}
																						}
																					}
																				}
																			}
																	
																			</script>
                                                                        
                                                                        
                                                                        <!-- 이미지 미리보기 -->
                                                                        <div id = "img_view">
	                                                                        <div id='View_area' style='position:relative; width: 180px; height: 118px; color: black; border: 1px solid #ccc; dispaly: inline; '></div>
																			
																			<label class="input-file-button" for="profile_pt">
																			  이미지 등록
																			</label>
																			
																			<input type="file" name="profile_pt" id="profile_pt" onchange="previewImage(this,'View_area')" >
                                                                        
                                                                        
                                                                     	</div>
                                                                        
                                                                        <div class="form_group">
				                                                            <p class="sub_text text_primary mg_reset">권장 크기 : 400 x 260 (윈도대상 400 x 260)
				                                                            <br>jpg,jpeg,gif,png,bmp 형식의 정지 이미지만 등록됩니다.
                                                                			<br class="">(움직이는 이미지의 경우 첫 번째 컷이 등록)</p>
				                                                        </div>
                                                                        
                                                                        
                                                                    
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="form_group sr_only">
                                                            <input type="text" style="visibility: hidden; opacity: 0" name="_hidden_uploaded_names"> 
                                                            <input type="text" style="visibility: hidden; opacity: 0" name="_hidden_uploaded_upload_all_names" class="ng_valid_required">
                                                            <input type="text" style="visibility: hidden; opacity: 0" name="_hidden_uploaded_upload_minSize" class="ng_valid_required"> 
                                                            <input type="text" style="visibility: hidden; opacity: 0" name="_hidden_uploaded_upload_maxSize"class="ng_valid_required"> 
                                                            <input type="text" style="visibility: hidden; opacity: 0" name="_hidden_uploaded_upload_square" class="ng_valid_required">
                                                        </div>
                                                        <div class="upload_error_area"></div>
                                                        
                                                    </div>
                                                </ncp-photo-infra-image-upload>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </ng-form>
                        </div>
                    </ui-view>
                    <ui-view name="detailContent">
                        <div class="form_section">
                            <div class="title_line" role="button" >
                                <label class="col-lg-2 col-sm-3 col-xs-6 control_label">상품설명
                                    <i class="icon_must" aria-label="필수항목"></i> 
                                    <a role="button" href="">
                                        <i class="fn fn_help1 text_primary" aria-hidden="true"></i>
                                    </a>   
                                </label>
                            </div>
                            <div class="inner_content input_content">
                               <!--  <div class="form_section_sub">
                                    <div class="form_sub_wrap">
                                        <ncp-editor-form>
                                            <div class="seller_product_detail seller_tap_wrapper">
                                                <div class="content write_html" style="">
                                                    <div class="form_group"> -->
                                                    
                                                    <!-- ck editor -->
                                                    <textarea id = "editor4" name = "editor4"></textarea>
													<script>CKEDITOR.replace('editor4',{filebrowserUploadUrl:'/mine/imageUpload.do'});</script>
                                                   
                                                   <!--      <textarea class="form_control" rows="3"></textarea> -->
      <!--                                               </div>
                                                </div>
                                            </div>
                                            <div id="error_message_detail_content" class="mg_bottom"></div>
                                        </ncp-editor-form>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </ui-view>
                    <div class="btn_group qu_text_center">
                   		<input class="qu_button qu_button_primary" type="submit" value="아이디어 등록" />
                        <a href="idea" class="qu_button"><span>취소</span></a>
                    </div>
                </div>
                </form>
                
                
                
                	
			</div>
        </div>
	</body>
</html>