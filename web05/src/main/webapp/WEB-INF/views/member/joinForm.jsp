<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path1 }/resources/css/reset.css">
<link rel="stylesheet" href="${path1 }/resources/css/header.css">
<link rel="stylesheet" href="${path1 }/resources/css/footer.css">
<link rel="stylesheet" href="${path1 }/resources/css/bg.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
        .join form span{color: red;}

        .join_top{margin-bottom: 110px; padding-top: 110px;}
        .top_txt{margin-top: 30px;}
        .join_top h3, .join_top p{text-align: center;}
        .join_top h3{font-size: 36px; line-height: 50px; letter-spacing: -2px;}
        .join_top p{font-size: 17px; line-height: 28px; color: #8e8e99;}
        .step{ display: block;}
        .step li{margin: 0 auto; width: 49.8%; padding: 30px 0; float: left; text-align: center; border: 1px solid #d5d5d5;}
        .step li:last-child{border-top: 1px solid;}
        .step_t{width: 1100px; margin: 60px auto;}
        .join form{width: 1100px; margin: 0px auto 60px;}
        .step_t p {padding-top: 150px; color: #666666;}
        table{border-collapse: collapse; width: 100%; }
        table input{ height: 30px;}
        tbody tr:first-child{border-top: 3px solid;}
        tr{ border-bottom: 1px solid #d5d5d5; height: 50px; line-height: 45px; color: #666666;}
        .phone_num select{height: 34px;}
        .phone_num input{width: 100px; text-align: center;}
        .radio{ height: 30px;}
        .radio input{height: 12px;}
        .join_sub{margin: 0 auto; width: 200px;}
        .join_sub input{margin-top: 70px; width: 200px; height: 40px; background-color: red; color: #fff; border: 0;}
    </style>
</head>
<body>
<div class="join">
<%@ include file="../inc/header.jsp" %>
<div class="bg_box">
    <h2>????????????</h2>
</div>
<div class="join_top">
    <h3>???????????????</h3>
    <p class="top_txt">
        ????????? ????????? ?????? ??????????????? ????????? ?????????. <br>
        ???????????????????????? ????????? ???????????? ???????????????.
    </p>
</div>
<div class="step_t">
    <ul class="step">
        <li><span>Step1</span><br> ????????????</li>
        <li><span>Step2</span><br> ????????????</li>
    </ul>
    <div>
        <p><span>*</span>???????????? ??? ????????? ????????? ????????? ??????????????? ????????? ??????????????????.</p>
    </div>
</div>
<form action="${path1 }/member/add.do" method="post" onsubmit="return joinCheck(this)" name="join_form">
<table>
    <tbody>
        <tr>
            <th><span>*</span>??????</th>
            <td><input type="text" name="mname" id="mname"></td>
        </tr>
        <tr>
            <th><span>*</span>?????????</th>
            <td>
                <input type="text" name="mid" id="mid">
                <input type="button" value="????????????" class="btn btn-primary" onclick="idCheck()">
                <c:if test="${msg == false }">
				<p class="msg">????????? ???????????? ????????? ?????????.</p>
				</c:if>
            </td>
        </tr>
        <tr>
            <th><span>*</span>????????????</th>
            <td><input type="text" name="mpw" id="mpw"></td>
        </tr>
        <tr>
            <th><span>*</span>???????????? ??????</th>
            <td><input type="text" name="mpw2" id="mpw2"></td>
        </tr>
        <tr class="phone_num">
            <th><span>*</span>???????????????</th>
            <td>
                <select id="select_num" name="mtel1">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                </select>&nbsp;-
                <input type="text" name="mtel2" id="mtel2">&nbsp;-
                <input type="text" name="mtel3" id="mtel3">
            </td>
        </tr>
        <tr>
            <th><span>*</span>???????????????</th>
            <td>
                <input type="text" name="email1"> @
                <input type="text" name="email2">
            </td>
        </tr>
        <tr class="radio">
            <th><span>*</span>????????????</th>
            <td>
                <input type="radio" name="sms" value="emailadress" checked><label for="">?????????</label>
                <input type="radio" name="sms" value="SMS"><label for="">SMS</label>
            </td>
        </tr>
    </tbody>
</table>
<div class="join_sub">
    <input type="submit" value="????????????">
</div>
</form>
<%@ include file="../inc/footer.jsp" %>
</div>
</body>
</html>