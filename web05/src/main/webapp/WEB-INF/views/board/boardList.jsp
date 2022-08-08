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
<title>news</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css" />
<link rel="stylesheet" href="${path1 }/resources/css/header.css" />
<link rel="stylesheet" href="${path1 }/resources/css/footer.css" />
<link rel="stylesheet" href="${path1 }/resources/css/newsbg.css" />
<style>
        .contents{ padding: 110px 0; width: 1100px; margin: 0 auto; position: relative;}
        .contents h3{ font-size: 36px; line-height: 50px; letter-spacing: -2px; text-align: center;}
        .serach input{height: 55px; line-height: 55px; border: 0; width: 280px; float: left; text-align: center;}
        .news_list{ clear: both; overflow: hidden;  margin-bottom: 60px;}
        .news_list dl{position: relative; float: left; display: inline-block; margin-bottom: 30px;}
        .news_list dl dt{background: #000; width: 345px; height: 360px; overflow: hidden; position: relative;}
        .news_list dl:nth-child(3n+2){ margin: 0 30px 30px;}
        .news_list dl dd{position: absolute; left: 0; bottom: 0; text-align: left; color: #fff; width: 345px; padding: 30px 0 20px;}
        .news_list dl dd p{font-size: 21px; font-weight: 900; line-height: 30px; width: 285px; padding-left: 30px;}
        .news_list dl dd span{font-size: 12px; font-weight: 400; width: 285px; color: #ccc; padding-left: 30px;}
</style>
</head>
<body>
<%@ include file="../inc/header.jsp" %>
<div class="news_container">
    <div class="bg_box">
        <h2>뉴스</h2>
    </div>
    <div class="contents">
        <div>
            <h3>스타스포츠의 새로운 소식을 만나보세요.</h3>
        </div>
        <div class="serach">
            <form action="">
                <input type="text" name="" id="" placeholder="검색어를 입력하세요">
                <a href="" title="검색하기" class="btn_serach"></a>
            </form>
        </div>
        <div class="news_list">
        	<c:forEach items="${boardList }" var="board">
	            <dl>
	                <a href="">
	                    <dt><img src="" alt=""></dt>
	                    <dd>
	                        <p>${board.title }</p>
	                        <span>${board.regdate }</span>
	                    </dd>
	                </a>
	            </dl>
	         </c:forEach>
        </div>
    </div>
</div>
<%@ include file="../inc/footer.jsp" %>
</body>
</html>