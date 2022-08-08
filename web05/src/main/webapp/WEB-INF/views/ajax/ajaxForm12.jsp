	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 로그인 실습</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	$("#sendBtn").on("click", function(){
		var arr = [{num:1, score:90}, {num:2, score:80}, {num:3, score:70}];
		
		$.ajax({
			url:"ajax12.do",
			type:"post",
			data:JSON.stringify(arr), //JSON.stringify() 는 여러 데이터는 원핫 스타일로 하나의 데이터로 묶어줌
			dataType:'json',
			contentType:'application/json',
			success:function(data){
				console.log(data);
			}
		});
		
		/*
		Get : select, Post : insert, Put : update 또는 delete, Delete : delete
		
		@RequestParam 는 파라미터(매개변수)를 활용하는 방식
		@RequestBody 는 Data(DTO)객체를 활용하는 방식
		*/
	});
});
</script>
</head>
<body>
	<h2>여러 값의 전송과 처리</h2>
	<p>[{num:1, score:90}, {num:2, score:80}, {num:3, score:70}]</p>
 	<hr>
 	<input type="button" id="sendBtn" value="전송">
 	<br><hr><br>
 	<div id="res">
 	</div>
</body>
</html>