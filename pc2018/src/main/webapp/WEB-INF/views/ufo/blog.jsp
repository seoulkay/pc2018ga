<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>2017 강릉단오제</title>
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

<body class="blog-page">   
    <!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->      
    
   
   <section class="heading-section section section-on-bg" style="padding-top:7em">
		<div class="hero-wrapper">
			<div class="hero-holder" style="background-image: url(https://www.pc2018.ga/image/${ufo.info_program_pic}"></div>
			<div class="hero-mask-gradient"></div>
		</div>
		<!--//hero-wrapper-->
		<div class="container heading-content">
			<c:choose>
			<c:when test="${!empty ufo.q1_img}">
		   			<img src="https://www.pc2018.ga/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:25em; margin: 0 auto;" data-dismiss="modal">
			</c:when>
			<c:otherwise>
			<div style="height:3em"></div>
					<h2 class="headline" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.title }</h2>
					<div class="intro" style="font-size: 25px;font-weight: 600;text-shadow: 2px 2px 30px #000000;">${ufo.event_date }</div><br>
							<div class="actions">
                 			<a class="scrollto" href="#page-nav-wrapper"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            				</div>
			</c:otherwise>
		</c:choose>		
			<div class="actions" style="margin-top: 1em">
           		<a class="scrollto-no-offset" href="#page-nav">공지사항 보러가기</a>
                 <a class="scrollto-no-offset" href="#page-nav"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
		</div>
		<!--//container-->
	</section>
	<!--//heading-section-->

<div class="page-nav-space-holder">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/index">홈</a></li>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'modal')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stamp">스탬프랠리</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'stories')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/stories">설문조사</a></li></c:if>
					<c:if test="${fn:contains(sessionScope.eventMenu, 'features')}"><li style="margin: 0%"><a href="${pageContext.request.contextPath}/ufo/${sessionScope.eventPara }/features">축제정보</a></li></c:if>
				<!-- <li><a class="scrollto" href="#survey-section">서베이 결과보기</a></li> -->
				</ul>
				<!--//page-nav-->
			</div>
		</div>
		<!--//page-nav-wrapper-->
	</div>
	<!--//page-nav-space-holder-->
    <div class="posts-promo-block" id="posts-promo-block">
        <div class="container">
            <div id="promo-carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#promo-carousel" data-slide-to="0" class="active"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="1"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="2"></li>
                    
                    <li data-target="#promo-carousel" data-slide-to="3"></li>
                </ol><!--//carousel-indicators-->
                <div class="carousel-inner" role="listbox">
                <c:forEach var="var" items="${noticeList}" varStatus="status" begin="0" end="3">
                	<c:choose>
                	<c:when test="${status.count == 1 }">
                		<div class="item item-${status.count} active">
                	</c:when>
                	<c:otherwise>
                		<div class="item item-${status.count}">
                	</c:otherwise>
                    </c:choose>
                        <div class="row">
                            <div class="item-figure col-md-8 col-sm-7 col-xs-12">
                                 <c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<div class="figure-holder"> </div>
			                	</c:when>
			                	<c:otherwise>
			                		 <div>
                                     	<img src="https://www.pc2018.ga/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px">
                                     </div>  
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="item-content col-md-4 col-sm-5 col-xs-12">
                                <div class="item-content-inner">
                                    <h3 class="item-title"><a href="blog-single">${var.title }</a></h3>
                                    <div class="item-meta" >${var.createdBy}</div>                                 
<%--                                     <div class="item-intro">${var.content }</div> --%>
                                    <!--//item-intro-->
                                    <a class="item-cta btn btn-secondary" href="blog-single?num=${var.idfest_ufo_notice }">확인하기</a>
                                </div><!--//item-content-inner-->
                            </div><!--//item-content-->
                        </div><!--//row-->
                    </div><!--//item-->
                 </c:forEach>
                </div><!--//carousel-inner-->
                
            </div><!--//promo-carousel-->
        </div><!--//container-->
    </div>
    <div class="posts-block text-center" id="posts-block">
        <div class="container">
            <h2 class="block-heading text-center">공지사항</h2>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab-1" aria-controls="tab-1" role="tab" data-toggle="tab">단오소식</a></li>
                <li role="presentation"><a href="#tab-2" aria-controls="tab-2" role="tab" data-toggle="tab">언론보도</a></li>
                <li role="presentation"><a href="#tab-3" aria-controls="tab-3" role="tab" data-toggle="tab">뉴스레터</a></li>
                <li role="presentation"><a href="#tab-4" aria-controls="tab-4" role="tab" data-toggle="tab">FAQ</a></li>
            </ul><!--//nav-tabs-->
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane tab-pane-1 active" id="tab-1">
                <c:forEach var="var" items="${danoNotice}" varStatus="status">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single?num=${var.idfest_ufo_notice }">${var.title }</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">${var.createdBy}</div>
                                </div><!--//author-->
                                <div class="time-stamp">${var.date }</div>
                                <!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                             	<c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<a href="blog-single?num=${var.idfest_ufo_notice }"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb01.jpg" alt=""></a>
			                	</c:when>
			                	<c:otherwise>
			                		 <a href="blog-single?num=${var.idfest_ufo_notice }"><img src="https://www.pc2018.ga/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px"></a>
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="post-intro"> <a href="blog-single?num=${var.idfest_ufo_notice }" class="readmore">더 보기</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    </c:forEach>
                    
                    
<!--                     <div class="pagination-container text-center"> -->
<!--                         <ul class="pagination"> -->
<!--                             <li class="disabled"><a href="#">Â«</a></li> -->
<!--                             <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li> -->
<!--                             <li><a href="#">2</a></li> -->
<!--                             <li><a href="#">3</a></li> -->
<!--                             <li><a href="#">4</a></li> -->
<!--                             <li><a href="#">5</a></li> -->
<!--                             <li><a href="#">Â»</a></li> -->
<!--                         </ul>//pagination -->
<!--                     </div> -->
                    
                </div><!--//tab-pane-1-->
                
                <div role="tabpanel" class="tab-pane tab-pane-2" id="tab-2">
                    <c:forEach var="var" items="${mediaNotice}" varStatus="status">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single?num=${var.idfest_ufo_notice }">${var.title }</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">${var.createdBy}</div>
                                </div><!--//author-->
                                <div class="time-stamp">${var.date }</div>
                                <!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                             	<c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<a href="blog-single?num=${var.idfest_ufo_notice }"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb01.jpg" alt=""></a>
			                	</c:when>
			                	<c:otherwise>
			                		 <a href="blog-single?num=${var.idfest_ufo_notice }"><img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px"></a>
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="post-intro"> <a href="blog-single?num=${var.idfest_ufo_notice }" class="readmore">더 보기</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    </c:forEach>
                </div><!--//tab-pane-2-->
                
                <div role="tabpanel" class="tab-pane tab-pane-3" id="tab-3">
                    <c:forEach var="var" items="${newsLetterNotice}" varStatus="status">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single?num=${var.idfest_ufo_notice }">${var.title }</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">${var.createdBy}</div>
                                </div><!--//author-->
                                <div class="time-stamp">${var.date }</div>
                                <!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                             	<c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<a href="blog-single?num=${var.idfest_ufo_notice }"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb01.jpg" alt=""></a>
			                	</c:when>
			                	<c:otherwise>
			                		 <a href="blog-single?num=${var.idfest_ufo_notice }"><img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px"></a>
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="post-intro"> <a href="blog-single?num=${var.idfest_ufo_notice }" class="readmore">더 보기</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    </c:forEach>
                </div><!--//tab-pane-3-->
                
                
                
                <div role="tabpanel" class="tab-pane tab-pane-4" id="tab-4">
                    
                    <c:forEach var="var" items="${faqNotice}" varStatus="status">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single?num=${var.idfest_ufo_notice }">${var.title }</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                                    <div class="author-name">${var.createdBy}</div>
                                </div><!--//author-->
                                <div class="time-stamp">${var.date }</div>
                                <!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                             	<c:choose>
			                	<c:when test="${empty var.photo_file }">
			                		<a href="blog-single?num=${var.idfest_ufo_notice }"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/dano_notice_thumb01.jpg" alt=""></a>
			                	</c:when>
			                	<c:otherwise>
			                		 <a href="blog-single?num=${var.idfest_ufo_notice }"><img src="/image/${var.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px"></a>
			                	</c:otherwise>
			                    </c:choose>
                            </div>
                            <div class="post-intro"> <a href="blog-single?num=${var.idfest_ufo_notice }" class="readmore">더 보기</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    </c:forEach>
                    
                </div><!--//tab-pane-4-->
                
            </div><!--//tab-content-->
        </div><!--//container-->
    </div><!--//posts-block-->
    
    <div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">강릉단오제 뉴스레터 구독하기</h3>
            <div class="block-intro">강릉단오제의 소식을 보내드립니다.</div>
            <div class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail"  type="email" class="form-control email-field" placeholder="이메일 주소를 입력하세요." name="email" required="" aria-required="true">
                    <button class="btn btn-primary" onClick="sendNewsLetterEmail();">구독하기</button>  
                </div>                              
            </div>
        </div><!--//container-->
    </div><!--//blog-signup-block-->

           
    <!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
</body>
</html> 
