<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>행복하개</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/flexslider.css">
  
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles_hd.css">
</head> 

<body data-spy="scroll" data-target="#page-nav">   
    <jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
    
   <section class="promo-section section section-on-bg">
        <div class="hero-slider-wrapper">
            <div class="flexslider hero-slider">
                <ul class="slides">
                    <li class="slide slide-1"></li>
                    <li class="slide slide-2"></li>
                    <li class="slide slide-3"></li>
                </ul>
            </div>
            <div class="hero-slider-mask"></div>
        </div><!--//hero-slider-wrapper--> 
        <div class="container promo-content">                
            <h2 class="headline">내 반려동물을 사랑하는 방법<br>반려동물 보육교사</h2>
            <p class="tagline">답답한 케이지가 아닌 동물보육교사가 당신의 강아지만을 돌봐드립니다. 애견호텔 보다 이젠 동물보육교사와 함께하세요! </p>
            <div class="actions">
                <a class="btn btn-cta btn-primary" href="#" data-toggle="modal" data-target="#signup-modal">행복하개 이용가이드</a>  
                <br class="visible-xs-block">
                <a href="#" class="play-trigger" data-toggle="modal" data-target="#modal-video" ><img class="play-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/play-icon.svg" alt="">행복하개 영상보기</a>
            </div>
        </div><!--//container-->
    </section><!--//promo-section-->
    
    <div class="page-nav-space-holder hidden-xs">
        <div id="page-nav-wrapper" class="page-nav-wrapper text-center">
            <div class="container">
                <ul id="page-nav" class="nav page-nav list-inline">
                    <li><a class="scrollto" href="#overview-section">행복하개 소개</a></li>
                    <li><a class="scrollto"  href="#features-section">연혁</a></li>
                    <li><a class="scrollto"  href="#support-section">CEO인사말</a></li>
                    <li><a class="scrollto"  href="#customers-section">사회공헌</a></li>
                    <li><a class="scrollto"  href="#signup-section">Contact us</a></li>
                </ul><!--//page-nav-->
            </div>
        </div><!--//page-nav-wrapper-->
    </div><!--//page-nav-space-holder-->
        
    <section id="overview-section" class="overview-section section">
        <h2 class="section-title">행복하개 소개 문구가 들어갑니다.
        </h2>
        <div class="section-intro">행복하개 소개 상세 문구가 들어갑니다.
        </div><!--//section-intro-->
        <div class="figures-wrapper">
            <div class="container text-center">
                <figure class="macbook-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/macbook-screen.png" alt=""></figure>
                <figure class="ipad-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/ipad-screen.png" alt=""></figure>
                <figure class="iphone-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/iphone-screen.png" alt=""></figure>
                <a href="#" type="button" class="play-icon" data-toggle="modal" data-target="#modal-video"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/play-icon-md.svg" alt=""></a>
            </div><!--//container-->
        </div><!--//figures-wrapper-->
        <div class="benefits-wrapper">
            <div class="container text-center">
                <div class="row">
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/clock-white.svg" alt="">
                            <h3 class="item-title">특징1</h3>
                            <div class="item-desc">특징1 내용이 들어갑니다.</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/presenter-white.svg" alt="">
                            <h3 class="item-title">특징2</h3>
                            <div class="item-desc">특징2 내용이 들어갑니다.</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/chat-white.svg" alt="">
                            <h3 class="item-title">특징3</h3>
                            <div class="item-desc">특징3 내용이 들어갑니다.</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//row-->
            </div><!--//container-->
        </div><!--//benefits-->        
    </section><!--//overview-section-->
    
    <section id="features-section" class="features-section section" style="background: #f5f5f5">
        <h2 class="section-title">연혁</h2>
        <div class="container">
            <div class="row">
                <div class="features-content-wrapper col-xs-12 col-sm-7 com-md-7">
                    <div class="intro">연혁 내용 혹은 이미지가 들어갑니다.</div><!--//intro-->
                
                </div><!--//features-content-wrapper-->
            </div><!--//row-->
        </div><!--//container-->
        
               
    </section><!--//features-section-->
    
    <section id="support-section" class="support-section section text-center">
        <h2 class="section-title">CEO 인사말</h2>
        <div class="section-intro">CEO 인사말이 들어갑니다.</div>        
        <div class="team-figure">
            <img class="img-responsive support-team" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team.png" alt="">
        </div><!--//team-figure-->
    </section><!--//support-section-->
    
    <section id="customers-section" class="customers-section section">
        <h2 class="section-title">사회공헌</h2>
        <div class="section-intro">사회공헌 내용 혹은 이미지가 들어갑니다.</div>
        <div class="container">
            <div class="stories-wrapper row">
                <div class="item item-1 col-xs-12 col-md-6">
                    <div class="item-inner text-center">
                        <div class="item-mask"></div>
                        <div class="item-content">
                            <h3 class="content-title">사회공헌<br>활동1</h3>
                            <div class="content-desc">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                <p>사회공헌 활동1 내용이 들어갑니다.</p>
                            </div>
                        </div><!--//item-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-2 col-xs-12 col-md-6">
                    <div class="item-inner text-center">
                        <div class="item-mask"></div>
                        <div class="item-content">
                            <h3 class="content-title">사회공헌<br>활동2</h3>
                            <div class="content-desc">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                <p>사회공헌 활동2 내용이 들어갑니다.</p>
                            </div>
                        </div><!--//item-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-1 col-xs-12 col-md-6">
                    <div class="item-inner text-center">
                        <div class="item-mask"></div>
                        <div class="item-content">
                            <h3 class="content-title">사회공헌<br>활동3</h3>
                            <div class="content-desc">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                <p>사회공헌 활동3 내용이 들어갑니다.</p>
                            </div>
                        </div><!--//item-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-2 col-xs-12 col-md-6">
                    <div class="item-inner text-center">
                        <div class="item-mask"></div>
                        <div class="item-content">
                            <h3 class="content-title">사회공헌<br>활동4</h3>
                            <div class="content-desc">
                                <i class="fa fa-quote-left" aria-hidden="true"></i>
                                <p>사회공헌 활동4 내용이 들어갑니다.</p>
                            </div>
                        </div><!--//item-content-->
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//row-->
        </div><!--//container-->
    </section><!--//customers-section-->
    
    <section id="signup-section" class="signup-section section">
        <div class="section-inner">
            <div class="container text-center">
                <div class="counter-container">
                </div><!--//counter-container-->                
                <h2 class="counter-desc">Contact us</h2>                
                <div class="form-wrapper">                    
                    <div class="form-box">
                        <div class="form-desc">Contact us 내용이 들어갑니다.</div>
                    </div><!--//form-box-->
                </div><!--//form-wrapper-->
            </div><!--//container-->
        </div><!--//section-inner-->
    </section><!--//signup-section-->
    
    
    <jsp:include page="footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</body>
</html> 

