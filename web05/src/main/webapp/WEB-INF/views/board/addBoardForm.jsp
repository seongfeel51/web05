<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../inc/head.jsp" %>
<script src="//cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
</head>
<body>
<form action="addBoard.do" method="post">
	<table class="table">
		<tbody>
			<tr>
				<th><label for="title">제목</label></th>
				<td><input type="text" name="title" id="title" size="100" class="single100" placeholder="글제목 입력" required></td>
			</tr>
			<tr>
				<th><label for="exampleTextarea1" class="form-label">글 내용</label></th>
				<td><textarea class="form-control" name="content" id="ckeditor" rows="6"></textarea></td>
			</tr>
			<tr>
				<th><label for="nickname">작성자</label></th>
				<td><input type="text" name="nickname" id="nickname" size="40" class="single40" value="admin" readonly></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="글 등록">
					<input type="reset" class="btn btn-primary" value="취소">
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script>
$(function(){
CKEDITOR.replace('ckeditor', {width:"100%", height:"400px", filebrowserUploadUrl:"fileupload.do"});
});
</script>
	
</body>
</html>