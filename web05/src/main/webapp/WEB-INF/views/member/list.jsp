<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css">
<link rel="stylesheet" href="${path1 }/resources/css/header.css">
<link rel="stylesheet" href="${path1 }/resources/css/footer.css">
<link rel="stylesheet" href="${path1 }/resources/css/customer.css">
</head>
<body>
<%@ include file="../inc/header.jsp" %>
<div class="bg_box">
    <h2>회원목록</h2>
</div>
<table>
	<thead>
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>이메일</td>
			<td>전화번호</td>
			<td>가입일</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${memberList }" var="member" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td><a href="">${member.mid }</a></td>
				<td>${member.mname }</td>
				<td>${member.email }</td>
				<td>${member.phone }</td>
				<td><fmt:formatDate value="${member.regdate }" pattern="YYYY/MM/dd"></fmt:formatDate></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%@ include file="../inc/footer.jsp" %>
</body>
</html>