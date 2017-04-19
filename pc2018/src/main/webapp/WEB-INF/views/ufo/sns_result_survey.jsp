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
	<meta property="og:image"         content="https://www.ufo79.com/image/${go_image}" />
  
  
    <link rel="shortcut icon" href="https://www.ufo79.com/image/https://www.ufo79.com/image/favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css' media="all">
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css' media="all">
    <!-- Global CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css" media="all">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css" media="all">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" media="all">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css" media="all">
<style>
button.close {
    font-size: 24px;
    font-weight: 300;
    text-shadow: none;
    background: none;
    position: absolute;
    right: 15px;
    top: 15px;
    z-index: 10;
    -webkit-opacity: 0.6;
    -moz-opacity: 0.6;
    opacity: 0.6;
    width: 28px;
    height: 28px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 50%;
    -moz-background-clip: padding;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    background: #999ca4;
    color: #fff;
    outline: none;
}
</style>
</head>
<body>
<div class="modal-dialog">
	<div class="modal-content">
	   <div class="modal-header">
	  		<button type="button" class="close" data-dismiss="modal" onclick="location.href='https://www.ufo79.com/PIX/ufo/${ufo.para}/stories';">&times;</button><br>
	   </div>
	   <div class="modal-body" style="background-color: #d7579f;">
	   		<div class="row" id="stampResultList">
	   			<ul  class="list-group">
	   			<c:forEach items="${surveyList }" var="ele" varStatus="statusEle">
	   				<li class="list-group-item list-group-item-info">${ele.question }</li>
	   				<c:forEach items="${ele.questionOptions }" var="elem">
	   					<li class="list-group-item">${elem.q_option }</li>
	   				</c:forEach>
	   				<c:if test="${statusEle.count == 6}">
	   					<li class="list-group-item">${answer.q6_a }</li>
	   				</c:if>
	   			</c:forEach>
	   			</ul>
	   			
	   			<div class="col-xs-12" id='qr_div' style="position : relative; padding-left: 0.2em;padding-right: 0.2em">
	   					<div style="border: 2px solid #FFF;"><a href="https://www.ufo79.com/image/${answer.q7_a}" download><img alt="" src="https://www.ufo79.com/image/${answer.q7_a}" style="width:100%" class="img-responsive"></a></div>
		   		</div>
	   			
	   		</div>
	   		<h5 style="font-family:football; color:WHITE; float:right;"><fmt:formatDate pattern="yyyy.MM.dd" value="${now}" /> ${ufo.title } </h5>
			<br>
		</div>
	 	<div style="background: url('${pageContext.request.contextPath}/resources/ufo/assets/images/stamp/bg_collage_02_500px.svg')">
			<div class="modal-footer">
			<br>
		    	<a href="https://www.ufo79.com/image/${answer.q7_a}" download><span class="btn" style="background-color:WHITE; color:#d7579f; border:2px solid #d7579f"><span class="btn-text">사진저장</span></span></a>
		    	<span id="shareBtn" class="btn btn-social btn-facebook" style="margin: auto;"><i class="fa fa-facebook" aria-hidden="true"></i><span class="btn-text">공유하기</span></span>
		    <br><br>
		    <div><img id="barcode" style="width:350px; margin: 0 auto; display:block" class="img-responsive"/></div>
		    </div>
  		</div>
	</div>
	<div id="fb-root"></div> 
</div>

<!-- ******FOOTER****** -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jsbarcode/3.5.8/barcodes/JsBarcode.code128.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
<script>
var barString = "${shareLink}";
var n = barString.indexOf("/result/");
var e = barString.length;
barString = barString.substring(n+8, e);
JsBarcode("#barcode", barString);


document.getElementById('shareBtn').onclick = function() {
	  FB.ui({
	    method: 'share',
	    display: 'popup',
	    href: '${ shareLink}',
	  }, function(response){
		  var share_return = response.post_id;
		  var para = '${ufo.para}';
		  var uid = '${uid}';
		  var result_type = '${type}_single';

		  /**
		   * 쉐어 서밋
		   */
		   $.post( "/PIX/ufo/${ufo.para}/shareSubmit", {para:para, uid:uid, share_return:share_return, result_type:result_type})
		   .done(function( data ) {
		  	 console.log("submitted");
		   });
	  });
	}
	

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