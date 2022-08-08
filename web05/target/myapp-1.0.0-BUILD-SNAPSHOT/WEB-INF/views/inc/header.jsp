<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<header>
        <div class="navi">
            <h1><a href="${path1 }/"><img src="${path1 }/resources/img/logo.png" alt=""></a></h1>
            <div class="menu">
                <ul>
                    <li>
                        <a href="" class="bar">스타스포츠</a>
                        <ul class="sports">
                            <li><a href="">회사소개</a></li>
                            <li><a href="">회사연혁</a></li>
                            <li><a href="">기술 및 인증</a></li>
                            <li><a href="">CEO 인사말</a></li>
                            <li><a href="">CI/BI</a></li>
                            <li><a href="">인재채용</a></li>
                            <li><a href="">스폰서쉽</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="bar">제품소개</a>
                        <ul>
                            <li><a href="${path1 }/goods/list.do">신제품</a></li>
                            <li><a href="${path1 }/goods/football">종족별</a></li>
                            <li><a href="">용도별</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="bar">홍보센터</a>
                        <ul>
                            <li><a href="${path1 }/board/pageList.do?curPage=1">뉴스</a></li>
                            <li><a href="">이벤트</a></li>
                            <li><a href="">자료실</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="bar">고객센터</a>
                        <ul>
                            <li><a href="">지점안내</a></li>
                            <li><a href="">A/S규정</a></li>
                            <li><a href="">질문과 답변</a></li>
                            <li><a href="${path1 }/faq/list.do?curPage=1">FAQ</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="bar">ONLINE SHOP</a>
                    </li>
                </ul>
            </div>
            <div class="gnb">
            	<c:if test="${member == null }">
                <a href="${path1 }/member/loginForm.do"><img src="${path1 }/resources/img/btn_login.png" alt=""></a>
                </c:if>
                <c:if test="${member.mid == 'admin' }">
                <a href="${path1 }/member/list.do">회원목록</a>
				</c:if>
				<c:if test="${member != null }">
                <a href="${path1 }/member/updateMember.do">마이페이지</a>
				<a href="${path1 }/member/logout.do">로그아웃</a>
				</c:if>
            </div>
        </div>
    </header>