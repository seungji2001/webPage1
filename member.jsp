<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<html> 
<head> 
	<title>�޴� ������</title> 
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
		document.write(strName+ " ��<br>");
	</script>
	<p>ȸ������ ȯ���մϴ�!</p>
	<br><button type="button" onClick="javascript:logoutProcess()">�α׾ƿ�</button>
	<br><hr width="70%"><br>
	
	<small>���� ä�ù� �����ϱ�</small><br/>
	<a href="https://open.kakao.com/o/gFueFFjc" target="right">[��������]</a>
	<hr/>
	
	<center><a href="#" class="news">[�����ϱ�]</a><br><br>
		<div class="panel">ȸ�������� ���ǻ��� �ۼ�����<br><br>
			<a href="#" onclick="send()" id="send">���� ���� ������</a><br>
			<table border="1" color="white">
			<tr><td><input type="text" id="name" value="" placeholder="�̸�"></td>
			<tr><td><textarea id="text1" cols=23 rows=4 placeholder="���ǻ���"></textarea></td></tr>
		</div>
	</center><br>
</form>