<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<html> 
<head> 
	<title>메뉴 프레임</title> 
	<meta charst="EUC-KR">
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<Link Rel="Stylesheet" Type="text/css" href="test.css">
<script src="test.js"></script>
<script src="jquery-3.5.1.js"></script>
<script type="text/javascript">
	function logoutProcess() {
		parent.location.replace("index.html")
	}
	$(document).ready(function(){
		$(".panel").hide();
		$("a.news").click(function(){
			$(".panel").slideDown(6000);
		});
	});
</script>
<style>
	div.panel{
		width:300px;
		height:180px;
		background-color:#610606;
		color:white;
		padding:30px;
	}
	a#send{
		font-size:1em;
		color:white;
	}
</style>
</head>
<body bgcolor="#FBDEDE"> 
<form  align="center" name="loginForm">
	<script type="text/javascript">
		<% String strID=request.getParameter("name"); %>
		var strName = "<%=strID%>";
		document.write(strName+ " 님<br>");
	</script>
	<p>회원가입 환영합니다!</p>
	<br><button type="button" onClick="javascript:logoutProcess()">로그아웃</button>
	<br><hr width="70%"><br>
	
	<small>오픈 채팅방 참여하기</small><br/>
	<a href="https://open.kakao.com/o/gFueFFjc" target="right">[누르세요]</a>
	<hr/>
	
	<center><a href="#" class="news">[문의하기]</a><br><br>
		<div class="panel">회원가입자 문의사항 작성가능<br><br>
			<a href="#" onclick="send()" id="send">문의 사항 보내기</a><br>
			<table border="1" color="white">
			<tr><td><input type="text" id="name" value="" placeholder="이름"></td>
			<tr><td><textarea id="text1" cols=23 rows=4 placeholder="문의사항"></textarea></td></tr>
		</div>
	</center><br>
</form>