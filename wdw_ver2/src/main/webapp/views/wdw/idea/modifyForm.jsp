<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>
<h1>modify</h1>
<form method="post" enctype="multipart/form-data" >
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="${vo.title }"/></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${vo.writer }</td>
		</tr>
		<tr>
			<td>이미지</td>
			<td><input type="file" name="upfileFF" />${vo.img }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="30" rows="4">${vo.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정하기" />
				<a href="idea2">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>