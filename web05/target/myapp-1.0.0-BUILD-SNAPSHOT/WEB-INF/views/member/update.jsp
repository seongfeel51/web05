<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css">
<link rel="stylesheet" href="${path1 }/resources/css/header.css">
<link rel="stylesheet" href="${path1 }/resources/css/footer.css">
<link rel="stylesheet" href="${path1 }/resources/css/bg.css">
<style>
	
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../inc/header.jsp" %>
<div class="mypage">
	<div class="bg_box">
		<h2>마이페이지</h2>
	</div>
	<form action="${path1 }/member/updateMember.do" method="post">
		<table>
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="mid" id="mid" class="single100" value="${member.mid }" required></td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
<%@ include file="../inc/footer.jsp" %>
</div>
</body>
</html>