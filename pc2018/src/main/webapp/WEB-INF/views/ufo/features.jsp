<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>${ufo.title }</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon3.ico">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:100%;}
.tg td{font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;}
.tg th{font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;}
.tg .tg-6wtj{vertical-align:middle;text-align:center;}					
.tg .tg-2qjy{background-color:#16adde;color:#ffffff;text-align:center}
</style>
</head>

<body class="features-page" data-spy="scroll" data-target="#page-nav">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	
	<div style="height: 6em;"></div>
	
	<%-- <!-- 상단 이미지 & 버튼 -->
	<section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.pc2018.ga/image/${ufo.main_image}"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<div class="container heading-content">
			<div style="height:1em"></div>
			<h2 class="headline" style="color: #015794; font-size: 25px;font-weight: 600; text-shadow: 2px 2px rgba(255,255,255,0.8);">${ufo.title }</h2>
			<div class="intro" style="color: #015794; font-size: 25px;font-weight: 600; text-shadow: 2px 2px rgba(255,255,255,0.8);">${ufo.event_date }</div>
			<div style="height:1em"></div>		
			<div class="actions">
                 <div class="actions">
         			<a class="scrollto" href="#info-section"><button class="btn" style="background-color: #EE334E;">베뉴정보</button></a>
   				</div>
            </div>
		</div>
	</section>
	
	<!-- 중간 메뉴 -->
	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">포토 콘테스트</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프 투어</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li class="active" style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">경기장 정보</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">설문조사</a></li></c:if>					
				</ul>
			</div>
		</div>
	</div> --%>
	
	<c:if test="${fn:contains(sessionScope.eventMenu, 'info')}">
	<!-- Section 01 -->
	<section id="info-section">
		<div class="feature-blocks container">
			<div id="feature-block-1" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #0081C8">${ufo.info_title }</span></h3>
					</div>
				</div>
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<div class="feature-desc">
							<p>${ufo.info_info_text }</p>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<c:if test="${ufo.info_info_pic ne null}">
							<img class="img-responsive" src="https://www.pc2018.ga/image/${ufo.info_info_pic}" alt="">
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section 02 -->
	<section>
	<div class="feature-blocks container" >
			<div id="feature-block-3" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #FCB131">${ufo.history_title }</span></h3>
					</div>
				</div>
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">						
						<div class="feature-desc">
							<p>${ufo.info_hist_text }</p>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<div class="figure-holder" align="center">
							<c:if test="${ufo.info_hist_pic ne null}">
							<img class="img-responsive" src="https://www.pc2018.ga/image/${ufo.info_hist_pic}" alt="">
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	<!-- Section 03 -->
	<section style="background-color: #A9D7E6">		
		<div class="feature-blocks container" >		
			<div id="feature-block-3" class="feature-block feature-block-1">
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<h3 class="feature-title"><span class="label label-default" style="background-color: #00A651;">${ufo.location_title }</span></h3>
					</div>
				</div>		
				<div class="row">
					<div class="feature-content col-md-6 col-sm-6 col-xs-12">
						<div class="figure-holder" align="center" style="box-shadow: -10px 10px 10px 1px #666666;">
							<c:if test="${ufo.info_location_pic ne null}">
							<img class="img-responsive" src="https://www.pc2018.ga/image/${ufo.info_location_pic}" alt="">
							</c:if>
						</div>
					</div>
					<div class="feature-figure col-md-6 col-sm-6 col-xs-12">
						<div class="feature-desc">
							<div class="alert alert-success" role="alert" style="background-color: #16adde; color: WHITE; border-color: #16adde;box-shadow: -10px 10px 10px 1px #666666;">${ufo.info_location_text }</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</c:if>
		<%-- <div id="feature-block-4" class="feature-block feature-block-4">
			<div class="row">
				<div
					class="feature-content col-md-4 col-sm-6 col-xs-12 col-md-push-8 col-sm-push-6 col-xs-push-0">
					<h3 class="feature-title">Feature Four Heading</h3>
					<div class="feature-desc">
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit.</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
							commodo ligula eget dolor. Lorem ipsum dolor sit amet, <a
								href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1"
								target="_blank">Screenshot: Admin AppKit Theme</a> consectetuer
							adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum
							dolor sit amet, consectetuer adipiscing elit. Aenean commodo
							ligula eget dolor.
						</p>
					</div>
					<!--//feature-desc-->
				</div>
				<!--//feature-content-->
				<div
					class="feature-figure col-md-8 col-sm-6 col-xs-12 col-md-pull-4 col-sm-pull-6 col-xs-pull-0">
					<div class="figure-holder">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/resources/ufo/assets/images/features/feature-4.png"
							alt="">
					</div>
					<!--//figure-holder-->
				</div>
			</div>
			<!--//row-->
		</div>
		<!--//feature-block-4--> --%>

	</div>
	<!--//feature-blocks-->



	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->



</body>
</html>

