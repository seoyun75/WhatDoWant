<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/deleteForm</title>
</head>
<body>
<h1>board/deleteForm</h1>
<form method="post">
<input type="hidden" name="no" value="${vo.no }" />

<input id="delete_btn" type="submit" value="삭제"/>
<a href="idea_detail2?no=${vo.no }">뒤로</a>

</form>
</body>
</html>