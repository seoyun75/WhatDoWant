<%@page import="java.net.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>

var pro_no = ${data.pjbvo.project_board_pro_no};
this.window.location.replace("after_inquiry?pro_code=" + pro_no);

</script>