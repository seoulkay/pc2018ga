<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- ******HEADER****** -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>

<header id="header" class="header">
	<div class="container">
		<div class="logo">
		<c:choose>
			<c:when test="${not empty ufo.logo}">
				<a href="index"> <img src="https://www.ufo79.com/image/${ufo.logo }" alt="" style="max-height: 3em"></a>
			</c:when>
			<c:otherwise>
				<a href="index"> <img src="https://www.ufo79.com/PIX/resources/ulc/images/logo_ufo_white.png" alt="" style="height: 2em; margin-top: 0 auto; margin-bottom: 0 auto;"></a>
			</c:otherwise>
		</c:choose>
		</div>
		<!--//logo-->
		<nav class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--//nav-toggle-->
			</div>
			<!--//navbar-header-->
			<div id="navbar-collapse" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<c:if test="${fn:contains(sessionScope.eventMenu, 'index')}">
					   <li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">공지사항</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}">
						<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프 투어</a></li>
					</c:if>					
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}">
					 <li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">경기장 정보</a></li>
					</c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}">
						<li class="nav-item"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">설문조사</a></li>
					</c:if>
				</ul>
				<!--//nav-->
			</div>
			<!--//navabr-collapse-->
		</nav>
		<!--//main-nav-->
	</div>
	<!--//container-->
</header>
<!--//header-->