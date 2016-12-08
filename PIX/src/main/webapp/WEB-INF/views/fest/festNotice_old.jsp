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
		<h1><a href="main">강원 페스티발</a> 어드민 공지사항 화면 </h1>
	</div>
	<div class="col-sm-4">
	</div>
	<div class="col-sm-4 well">
	<c:forEach var="var" items="${notice}" varStatus="status">
		<div class="panel panel-primary">
		  <div class="panel-heading">
    		<h3 class="panel-title">${var.fest_event_notice_title } <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></h3>
		  </div>
		  <div class="panel-body">
		    ${var.fest_event_notice_content }
		  </div>	
		  <div class="panel-footer"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> 분류 : ${var.fest_event_notice_type }  
		  <span class="glyphicon glyphicon-time" aria-hidden="true"></span> 생성일 : ${var.fest_event_notice_created_on }</div>
		</div>	
	</c:forEach>
		<button type="button" class="btn btn-warning btn-xs" style="margin:3px">
  			<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> 추가하기	
		</button>
	</div>
	<div class="col-sm-4">
	</div>
</form>
<script src="/PIX/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>