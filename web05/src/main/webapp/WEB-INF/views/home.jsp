<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css">
<link rel="stylesheet" href="${path1 }/resources/css/header.css">
<link rel="stylesheet" href="${path1 }/resources/css/footer.css">
<link rel="stylesheet" href="${path1 }/resources/css/index.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<div class="wrap">
<%@ include file="inc/header.jsp" %>
    <div class="container">
        <div id="index_02">
            <div id="slide2">
                <ul>
                    <li><a href="#"><img src="${path1 }/resources/img/main01.jpg" alt="슬라이드4"></a></li>
                    <li><a href="#"><img src="${path1 }/resources/img/main02.jpg" alt="슬라이드5"></a></li>
                    <li><a href="#"><img src="${path1 }/resources/img/main04.jpg" alt="슬라이드6"></a></li>
                </ul>
            </div>
        </div>
        <script>
            setInterval(function(){
                $('#slide2>ul').delay(2500);
                $('#slide2>ul').animate({marginTop: "-700px"})
                $('#slide2>ul').delay(2500);
                $('#slide2>ul').animate({marginTop: "-1400px"})
                $('#slide2>ul').delay(2500);
                $('#slide2>ul').animate({marginTop: "0px"})
            });
        </script>
        <div class="category">
            <ul>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
    </div>
<%@ include file="inc/footer.jsp" %>
</div>
</body>
</html>