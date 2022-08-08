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
<link rel="stylesheet" href="${path1 }/resources/css/customer.css" />
<%@ include file="../inc/head.jsp" %>
<style>
        .contents{ padding: 110px 0; width: 1100px; margin: 0 auto; position: relative;}
        .contents_top{margin-bottom: 110px;}
        .contents h3{ font-size: 36px; line-height: 50px; letter-spacing: -2px; text-align: center;}
        .contents p{margin-top: 30px; font-size: 17px; line-height: 28px; text-align: center; color: #8e8e8e;}
        .faq_serach{position: relative; width: 100%; overflow: hidden;}
        .faq_tab{ position: absolute; left: 0; top: 40px; font-size: 13px;}
        .faq_tab li{float: left; margin: 0 5px; color: #d4d4d4;}
        .faq_tab li a{ color: #000; font-weight: 400;}
        .f_serach{display: inline-block; float: right; position: relative; text-align: right;}
        .f_serach form{ width: 350px; float: right;}
        .f_serach form input{border: 0; width: 280px; height: 55px; float: left;}
        .f_serach form a{display: inline-block; background: url(../resources/img/btn_search_off.png) no-repeat center #d4d4d4; width: 67px; height: 55px;}
        .faq_list{width: 1100px; margin: 0 auto;}
        .faq_list ul{border-top: 2px solid #000;}
        .faq_list ul li dl{line-height: 60px;}
        .faq_list ul li dt{border-bottom: 1px solid #e4e4e4; overflow: hidden; cursor: pointer; padding: 10px 0;}
        .faq_list ul li dt span{float: left; display: inline-block; color: red; width: 7%;}
        .faq_list ul li dt strong{float: left; display: inline-block; width: 17%;}
        .faq_list ul li dt strong{float: left; display: inline-block; width: 30%; text-align: left;}
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../inc/header.jsp" %>
<div class="bg_box">
        <h2>뉴스</h2>
    </div>
    <div class="contents">
        <div class="contents_top">
            <div>
                <h3>자주 묻는 질문을 모아 답변드립니다.</h3>
                <p>
                    아래의 답변 중 원하시는 내용이 없다면 "질문과 답변" 게시판을 이용하세요.
                </p>
            </div>
        </div>
        <div class="faq_serach">
            <div class="faq_tab">
                <ul>
                    <li><a href="">전체</a></li>
                    <li><a href="">제품관련</a></li>
                    <li><a href="">AS관련</a></li>
                    <li><a href="">구매 및 배송 관련</a></li>
                    <li><a href="">회원정보 관련</a></li>
                    <li><a href="">기타</a></li>
                </ul>
            </div>
            <div class="f_serach">
                <form action="" method="get">
                    <input type="text" name="" placeholder="검색어를 입력하세요">
                    <a href="" title="검색하기"></a>
                </form>
            </div>
        </div>
        <div class="faq_list">
            <ul>
            	<c:forEach items="${faqList }" var="faq" varStatus="status">
                <li>
                    <dl>
                        <dt>
                            <span>Q</span>
                            <strong>${faq.tag }</strong>
                            <h4>${faq.qcon }</h4>
                        </dt>
                        <dd></dd>
                    </dl>
                </li>
                </c:forEach>
            </ul>
        </div>
		<div class="row">
			<table class="paging">
				<tbody>
				<tr>
					<td class="item1">
						<c:if test="${page.curPage > 1}">
						<a href="javascript:;" onclick="list('1')">[처음]</a>
						</c:if>
					</td>
					<td class="item2">
						<c:if test="${page.curPage > 1}">
						<a href="javascript:;" onclick="list('${page.curPage-1}')">[이전]</a>
						</c:if>
					</td>
					<td class="item3">
					<c:forEach var="num" begin="${page.startPage }" end="${page.endPage }">
						<c:choose>
							<c:when test="${num == page.curPage}">
								<span style="color:red; font-weight:bold">${num }</span>
							</c:when>
							<c:otherwise>
								<a href="javascript:;" onclick="list('${num }')">${num }</a>&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</td>
					<td class="item4">
						<c:if test="${page.curBlock < page.totBlock}">
						<a href="javascript:;" onclick="list('${page.nextPage}')">[다음]</a>
						</c:if>
					</td>
					<td class="item5">
						&nbsp;<c:if test="${page.curPage < page.totPage}">
						<a href="javascript:;" onclick="list('${page.totPage}')">[끝]</a>
						</c:if>
					</td>
				</tr>
				</tbody>
			</table>
			<script>
			function list(page){
				location.href="../faq/list.do?curPage="+page;
			}
			</script>
		</div>
    </div>
<%@ include file="../inc/footer.jsp" %>
</div>
</body>
</html>