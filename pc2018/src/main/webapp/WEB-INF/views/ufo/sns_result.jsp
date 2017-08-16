<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>${ufo.title }</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 페이스북 메타 -->
  	<meta property="og:url"                content="${homepage }" />
	<meta property="og:type"               content="article" />
	<meta property="og:title"              content="${ufo.title }" />
	<meta property="og:description"        content="${ufo.event_short_description }" />
	<meta property="og:image"              content="http://www.pc2018.ga/image/${ufo.main_image }" />
    
    <link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href=
"${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">
</head>
<body>
<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
<!-- 	  		<button type="button" class="close" data-dismiss="modal">&times;</button> -->
		<c:choose>
			<c:when test="${userSize eq ufoSize }">
				<h3 style="color : #0081C8; font-family:football; margin-top:10px;">스탬프 투어를 완성하였습니다! ${userSize }/${ufoSize }</h3>
			</c:when>
			<c:otherwise>
				<h3 style="color : #0081C8; font-family:football;">스탬프 투어를 진행중입니다. ${userSize }/${ufoSize }</h3>
			</c:otherwise>
		</c:choose>
		
	   </div>
	   <div class="modal-body" style="background-color: #0081C8;">
	   		<div class="row" id="stampResultList">
	   			<c:forEach items="${ufoResult }" var="ele" varStatus="statusEle">
	   			<c:choose>
	   				<c:when test="${ele.ufo_go_type eq type}">
	   			<div class="col-xs-6" id='qr_div_${ele.ufo_gid }' style="position : relative; padding-left: 0.2em;padding-right: 0.2em">
	   				<div style="padding-top:3px; padding-bottom:3px">
	   				<c:choose>
	   					<c:when test="${not ele.submit}">
	   						<div style="position:absolute; top:20%; left:20%; width: 60%; height:60%;z-index: 5">
		   						<br>
		   						<img src="https://www.pc2018.ga/image/stamp_please.svg" class="img-responsive" align="middle" style="margin: 0 auto">
	   						</div>
		   					<div style="border: 2px solid #FFF; height:10em; overflow:hidden; background-color: WHITE;">
		   					</div>
	   					</c:when>
	   					<c:otherwise>
	   						<a style="display:block" href="https://www.pc2018.ga/PIX/ufo/${ufo.para }/result/${type}/${uid}/${ele.ufo_gid }">
	   							<div style="border: 2px solid #FFF; height:10em; overflow:hidden; background-color: WHITE;">
	   							<img src="https://www.pc2018.ga/image/${ele.go_image}" class="img-responsive">
	   							</div>
	   						</a>
	   					</c:otherwise>
	   				</c:choose>
	   				</div>
	   			</div>
	   			</c:when>
	   			</c:choose>
	   			</c:forEach>
	   		</div>
	   		<br>
	   		<h5 style="font-family:football; color:WHITE; float:right;"><fmt:formatDate pattern="yyyy.MM.dd" value="${now}" /> ${ufo.title } </h5>
			<br>
		</div>
	 	<%-- <div style="background: url('${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_collage_02_500px.svg')"> --%>
	 	<div style="background: url('https://www.pc2018.ga/image/bg_collage_02_500px.svg')">
			<div class="modal-footer">
			<br>
		    	<span class="btn" style="background-color:WHITE; color:#0081C8; border:2px solid #0081C8" onClick="location.href='https://www.pc2018.ga/PIX/ufo/${ufo.para}/stamp'"><span class="btn-text">확인</span></span>
		    	<span id="shareBtn" class="btn btn-social btn-facebook" style="margin: auto;"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">공유하기</span></span>
		    <br>
		    </div>
  		</div>
	</div>
	<div id="fb-root"></div> 
</div>
<!-- ******FOOTER****** -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>

<script>
(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1508199992578149";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
document.getElementById('shareBtn').onclick = function() {
	  FB.ui({
	    method: 'share',
	    display: 'popup',
	    href: '${ shareLink}',
	  }, function(response){
		  var share_return = response.post_id;
		  var para = '${ufo.para}';
		  var uid = '${uid}';
		  var result_type = '${type}_result';
		  $.post( "/PIX/ufo/${ufo.para}/shareSubmit", {para:para, uid:uid, share_return:share_return, result_type:result_type})
		  .done(function( data ) {
			  console.log("submitted");
		  });
	  });
}
// 
// 
// 
// 

// /**
//  * 쉐어 서밋
//  */
//  
//  
// 	 
//  
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>