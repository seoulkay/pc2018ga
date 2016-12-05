<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강원 페스티발 메인</title>
<link href="/PIX/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/PIX/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
                
</head>
<body style="background-color:#3498db">

	<div class="col-sm-12" style="text-align: center; color: #bdc3c7">
		<h1> <a href="main">강원 페스티발</a>  어드민 메인 </h1>
	</div>
	
	<div class="col-sm-4"></div>
	<div class="col-sm-4 well well-sm">
	<c:forEach var="var" items="${event}" varStatus="status">
	
	<div class="panel panel-primary">
	<div class="panel-heading">
		<h4><span class="glyphicon glyphicon-music" aria-hidden="true"></span> ${var.idx}. ${var.fest_event_name }</h4>
		
	</div>
  <div class="panel-body">
    <button type="button" class="btn btn-primary btn-xs" onclick="location.href='festNotice?idx=${var.idx }' " style="margin:3px">
  			<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 공지사항	 
		</button>
		<button type="button" class="btn btn-info btn-xs" onclick="location.href='festInfo?idx=${var.idx }' " style="margin:3px">
  			<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 정보
		</button>
		<button type="button" class="btn btn-warning btn-xs" onclick="location.href='festQuestion?idx=${var.idx }' " style="margin:3px">
  			<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 설문지	
		</button>
		<button type="button" class="btn btn-success btn-xs" style="margin:3px">
  			<span class="glyphicon glyphicon-star" aria-hidden="true"></span> 통계	
		</button>
  </div>
  <div class="panel-footer">축제 기간</div>
</div>
		
		
		<br>
	
	</c:forEach>
	</div>
	<div class="col-sm-4"></div>
	
	
	
	
	
<script src="/PIX/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>