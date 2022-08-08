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
<title>회원 가입</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css">
<link rel="stylesheet" href="${path1 }/resources/css/header.css">
<link rel="stylesheet" href="${path1 }/resources/css/footer.css">
<link rel="stylesheet" href="${path1 }/resources/css/bg.css">
<style>
        .login_form{padding: 110px 0; width: 1100px; margin: 0 auto; position: relative; }
        .login_con{margin-bottom: 110px;}
        .login_con h3{font-size: 36px; line-height: 50px; letter-spacing: -2px; text-align: center; }
        .login_con p{margin-top: 30px; font-size: 17px; line-height: 28px; text-align: center;}
        .login_box{ padding: 60px 60px 30px; width: 400px; margin: 0 auto; border: 1px solid #e4e6e9;  border-top: 2px solid #333;}
        .login_box .lo input{border: 0; border-bottom: 1px solid #e4e6e9; padding: 20px 0; width: 100%; margin-bottom: 30px;}
        .btn_lo{ border: 0; background-color: red; color: #fff; width: 100%; padding: 15px 0; text-align: center; font-size: 16px;}
</style>
</head>
<body>
<div class="wrap container">
	<%@ include file="../inc/header.jsp" %>
	<div class="login">
        <div class="bg_box">
            <h2>로그인</h2>
        </div>
        <form action="loginPro.do" method="post">
            <div class="login_form">
                <div class="login_con">
                    <h3>로그인 하시면 서비스를 이용하실 수 있습니다.</h3>
                    <p>
                        스타스포츠의 고객센터는 회원제로 운영됩니다.
                        <br>
                        아직 아이디가 없으시다면 가입해 주세요.
                    </p>
                </div>
                <div>
                    <div class="login_box">
                        <div class="lo id">
                            <input type="text" placeholder="아이디" id="mid" name="mid">
                        </div>
                        <div class="lo pw">
                            <input type="password" placeholder="비밀번호" id="mpw" name="mpw">
                        </div>
                        <input type="submit" value="로그인" class="btn_lo" id="sub">
                        <ul>
    						<li><a href="${path1 }/member/joinForm.do">회원가입</a></li>
    					</ul>
                    </div>
                </div>
            </div>
        </form>
    </div>	
	<%@ include file="../inc/footer.jsp" %>
</div>
</body>
</html>