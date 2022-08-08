<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css" />
<link rel="stylesheet" href="${path1 }/resources/css/header.css" />
<link rel="stylesheet" href="${path1 }/resources/css/footer.css" />
</head>
<body>
<%@ include file="../inc/header.jsp" %>
<div id="contents" class="contents">
	<div class="container px-4 px-lg-5 mt-5">
		<div class="row">
			<br><br>		
			<h2 class="tit">공지사항 목록</h2>
			<c:if test="${member.mid == 'admin' }">
			<div class="row">
				<a href="addBoardForm.do" class="btn btn-primary" style="display:inline-block;">글쓰기</a>
			</div>
			</c:if>
			<br><hr>
			<div class="panel-body">
				<table class="table" id="myTable">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>무게</th>
						</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${goodsList != null }">	
							<c:forEach items="${goodsList}" var="goods" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td><a href="boardRead.do?seq=${board.seq}">${goods.gname}</a></td>
								<td>${goods.weight }</td>
							</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="3">상품이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
			</div>
			<script>
			$(function(){
				$("#myTable").DataTable();
			});
			</script>
		</div>
	</div>
	<div class="blank" style="min-height:350px"></div>		
</div>
<%@ include file="../inc/footer.jsp" %>
</body>
</html>