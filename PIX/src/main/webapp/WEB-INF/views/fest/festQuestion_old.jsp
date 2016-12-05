<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강원 페스티발 어드민 7Q</title>
<link href="/PIX/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/PIX/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
                
</head>
<body style="background-color:#3498db">
<form action="nogo" method="POST" enctype="multipart/form-data">
	<div class="col-sm-12" style="text-align: center; color: #bdc3c7">
		<h1> <a href="main">강원 페스티발</a>  어드민 설문지 화면 </h1>
	</div>
	<div class="col-sm-4">
	</div>
	<div class="col-sm-4 well">
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q1</span>
		<input type="text" name="q1" class="form-control" value="${q1.fest_q1_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q1.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>

		
		<br>
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q2</span>
		<input type="text" name="q2" class="form-control" value="${q2.fest_q2_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q2.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>
		<br>
		
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q3</span>
		<input type="text" name="q2" class="form-control" value="${q3.fest_q3_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q3.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>
		<br>
		
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q4</span>
		<input type="text" name="q2" class="form-control" value="${q4.fest_q4_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q4.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>
		<br>
		
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q5</span>
		<input type="text" name="q2" class="form-control" value="${q5.fest_q5_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q5.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>
		<br>
		
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q6</span>
		<input type="text" name="q2" class="form-control" value="${q6.fest_q6_question }"><br>
		</div>
		<ul class="list-group" style="margin:10px">
		<c:forEach var="var" items="${q6.optionlist}" varStatus="status">
			<li class="list-group-item">${var.fest_option_content } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>	</li>
		</c:forEach>
		<li class="list-group-item"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span></li>
		</ul>
		<br>
		
		<span style="margin:10px">*7번 문항은 반드시 사진을 올려주세요 문항입니다.</span>
		<div class="input-group input-group-lg" style="margin:10px">
		<span class="input-group-addon" id="basic-addon1">Q7</span>
		<input type="text" name="q2" class="form-control" value="${q7.fest_q7_question }"><br>
		</div>
		
		<br>
		<input type="submit" value="수정하기" class="form-control">
	</div>
	<div class="col-sm-4">
	</div>
</form>
<script src="/PIX/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>