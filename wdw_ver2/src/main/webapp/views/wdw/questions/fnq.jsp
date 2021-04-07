<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>What do want?</title>
	</head>
	<body>

		<div id="questions_wrap">
			<div id="question_wrapper">
				<div id="banner_wrap">
					<div class="banner_img">
						<p class = "banner_title">자주하는 질문</p>
						
					</div>
				</div>
				
				<div id = "question_wrap">
		<!-- 			<div class = "question_menu">
						<ul class = "question_menu_list">
							<li><a href = "fnq">F&Q</a></li>
						</ul>
					</div> -->
					
					<div id = "question_content">
						<div class="question_container" id="question_container">
							<h4 class="sub_strapline">F&Q</h4>
							<form id="frmSearch">
								<input type="hidden" name="id">
								<input type="hidden" name="dispCt" id="dispCt" value="">
								<input type="hidden" name="page" id="page" value="1">
								<input type="hidden" name="searchOption" value="0">
								<input type="hidden" name="searchText" value="">
							<div class="question_total_search_input search_input_type">
								<div class="question_inner">
									<div class="question_row">
										<input type="text" name="si_title" id="searchText" placeholder="검색어를 입력하세요." title="검색어" class="white" value="">
										<button id="btnSearch" type="submit" class="btn_list question_pp">검색</button>
									</div>
								</div>
							</div>
							
							
							</form>
				
                             
                            
                             <div id="accordion" class="panel-group">


                              <c:forEach items="${data }" varStatus="si_no" var="vo"> 
                              
			                      <div class="panel panel-default">
			                        <div class="panel-heading">
			                          <h4 class="panel-title">
			                              <label for="check${vo.si_no }" href="#collapse${vo.si_no }" data-toggle="collapse" data-parent="#accordion" class="" aria-expanded="true">
			                               		<p class="q">Q</p>
			                                	<div class="reward_content" aria-expanded="true">
			                                      	${vo.si_title}
			                                	</div>
			                              </label>
			                          </h4>
			                        </div>
			
			                        <div id="collapse${vo.si_no }" class="panel-collapse collapse in" aria-expanded="true" style="">
			                          <div class="panel-body">
			
			                            <img src="../../img_up/${vo.si_cate }/${vo.si_no }/${vo.si_content }">
			
			                          </div>
			                        </div>
			                        
			                        
			                        
			                      </div>
			                     
			                     
			
			 				 </c:forEach>
			
                            </div>
                    
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>