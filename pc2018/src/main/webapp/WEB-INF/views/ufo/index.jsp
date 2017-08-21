<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/flexslider.css">

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">


</head>

<body class="blog-page" data-spy="scroll" data-target="#page-nav">
	<!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	
	<div style="height: 6em;"></div>
	
	<%-- <!-- 상단 이미지 & 버튼 -->
	<section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.pc2018.ga/image/${ufo.main_image})"></div>
			<div class="hero-mask-gradient"></div>
		</div>		
		<div class="container heading-content">		
			<div style="height:1em"></div>
			<h2 class="headline" style="color: #015794; font-size: 25px;font-weight: 600; text-shadow: 2px 2px rgba(255,255,255,0.8);">${ufo.title }</h2>
			<div class="intro" style="color: #015794; font-size: 25px;font-weight: 600; text-shadow: 2px 2px rgba(255,255,255,0.8);">${ufo.event_date }</div>
			<div style="height:1em"></div>		
			<div class="actions">
	                 <div class="actions">
	         			<a class="scrollto" href="#page-nav-wrapper1"><button class="btn" style="background-color: #EE334E;">포토 콘테스트</button></a>
	   				</div>
            </div>
		</div>
	</section>
	
	<!-- 중간 메뉴 -->
	<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li class="active" style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">포토 콘테스트</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프 투어</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">경기장 정보</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">설문조사</a></li></c:if>
				</ul>
			</div>
		</div>
	</div> --%>	
	
	<section id="page-nav-wrapper1" class="support-section section text-center" style="padding:1em;">
		<div class="team-figure" >	
			<!-- 공지 -->
			<c:if test="${not empty ufo.ufo_notice1 && not empty ufo.ufo_notice2 && not empty ufo.ufo_notice3}">
				<div class="row" style="margin-left:0px; margin-right:0px; margin-bottom:15px; padding:0;">
					<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #EE334E">${ufo.ufoLable.index_title }</span></h3>
				</div>		
				<div class="row" >
					<marquee>
					<h4 style="white-space:nowrap; color:#000000;">
					<c:if test="${not empty ufo.ufo_notice1 }">${ufo.ufo_notice1}<span style="color: #0081C8;">&emsp;<strong>||</strong>&emsp;</span></c:if>
					<c:if test="${not empty ufo.ufo_notice2 }">${ufo.ufo_notice2}<span style="color: #0081C8;">&emsp;<strong>||</strong>&emsp;</span></c:if> 
					<c:if test="${not empty ufo.ufo_notice3 }">${ufo.ufo_notice3}</c:if>
					</h4>
					</marquee>
				</div>
				<!-- 공지 선 -->
				<div class="row">
					<div style="height:0.1em; background-color: #0081C8"></div>
					<div style="height:1.5em"></div>
				</div>
			</c:if>
			
			<!-- 승리자 -->
			<c:if test="${fn:contains(sessionScope.eventMenu, 'index_winner')}">
				<div class="row" style="margin-left:0px; margin-right:0px; margin-bottom:15px; padding:0;">
					<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #16adde">${ufo.ufoLable.index_winner}</span></h3>
				</div>
				<div class="row">
					<c:choose>
						<c:when test="${not empty winner }">
							<c:forEach items="${winner}" var="ele" varStatus="stat">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<h4 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #ed45a4">${stat.count}. ${ele.last_name } ${ele.first_name } <span id="winner${ele.idUfoWinnerRecord}">${ele.winner_like }</span></span></h4>
								<img alt="" src="https://www.pc2018.ga/image/${ele.ufo_image }" class="img-responsive" style="width: 100%" onclick="winnerLike(${ele.idUfoWinnerRecord})"><br>
							</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							${ufo.winner_msg }
						</c:otherwise>
					</c:choose>
				</div>		
			</c:if>
			
			<!-- 페북라이브 & 댓글 -->
			<c:if test="${not empty ufo.fb_live }">
				<div class="row" style="margin-left:0px; margin-right:0px; margin-bottom:15px; padding:0;">
					<h3 class="feature-title" style="float: left; margin-top: 0px;"><span class="label label-default" style="background-color: #00a27c">L!VE</span></h3>
				</div>	
				<div class="row">
					<div class="fb-video" data-href="${ufo.fb_live }" data-width="500" data-show-text="false"></div>
				</div>
			</c:if>		
			${ufo.event_long_description }			
		</div>
	</section>

	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>
	
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=1508199992578149";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>	
<script type="text/javascript">
function winnerLike(param){
	 $.ajax({
         url: '/PIX/ufo/winnerLike',
         method: "POST",
         data: {'winneridx' : param},
         success: function(result){
//         	 $(".likeBtn").fadeOut( 'fast' , function() {
//         		 $("#winner"+param).replaceWith("<span id='winner'"+param+">"+result+"</span>");
//         	  });
        	 $("#winner"+param).replaceWith("<span id='winner'"+param+">"+result+"</span>");
        	 
       	  	console.log(result+"성공");
         },
         error: function(er){
        	console.log(er);
         }
 	});
}
</script>
</body>
</html>