<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--><html lang="en"><!--<![endif]-->

<head>
    
    <!-- Your Basic Site Informations -->
	<title>UFO79</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="UFO79, 축제를 위한, 축제에 의한 플랫폼!">
	<meta name="author" content="TEAM U.F.O.">
    
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,700" rel="stylesheet" type="text/css">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/slick-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/style.css">
    
    <!-- Custom Colors -->
    <!-- <link rel="stylesheet" href="css/colors/blue/color.css"> -->
    <!--<link rel="stylesheet" href="css/colors/green/color.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/colors/orange/color.css">
    <!--<link rel="stylesheet" href="css/colors/pink/color.css">-->
    <!--<link rel="stylesheet" href="css/colors/yellow/color.css">-->
    
    <!--[if lt IE 9]>
    	<script src="js/html5.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->
    
    <!--[if lt IE 8]>
    	<link rel="stylesheet" href="css/ie-older.css">
    <![endif]-->
    
    <noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/no-js.css"></noscript>
    
    <!-- Favicons -->
	<link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon3.ico">
</head>
<body>
    
    <!-- #header -->
    <header id="header">

        
        <!-- #navigation -->
        <nav id="navigation" class="navbar scrollspy">
            
            <!-- .container -->
            <div class="container">
                
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-collapse-1">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand">
                        <a href="index"><img src="${pageContext.request.contextPath}/resources/ulc/images/logo_ufo_white.png" alt="Logo"></a> <!-- site logo -->
                    </div>
                </div>
                
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="menu-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                    	<li class="active"><a href="#header" class="smooth-scroll">홈</a></li>
                        <li><a href="#features2" class="smooth-scroll">서비스</a></li>
<!--                         <li><a href="#counter" class="smooth-scroll">Counter</a></li> -->
                        <li><a href="#features" class="smooth-scroll">특징</a></li>
<!--                         <li><a href="#screenshots" class="smooth-scroll">Screenshots</a></li> -->
<!--                         <li><a href="page">Page</a></li> -->
                    </ul>
                </div>
                
            </div>
            <!-- .container end -->
            
        </nav>
        <!-- #navigation end -->
        
        <!-- .header-content -->
        <div class="header-content" style="background-image:url(${pageContext.request.contextPath}/resources/ulc/images/content/bg/1.jpg);">
            
            <!-- .header-overlay -->
            <div class="header-overlay">
                
                <!-- .container -->
                <div class="container">
                    
                    <div class="header-txt">
                        <h1>UFO79</h1>
                        <p>축제를 즐기는 새로운 방법</p>
                    </div>
                    
                    <div class="header-btn">
                    	<a href="https://www.pc2018.ga/PIX/ufo/tanger/stamp" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on Play Store"><i class="ion ion-happy-outline"></i>PyeongChang 2018</a>
                    	<a href="https://www.pc2018.ga/PIX/ufo/squid/stamp" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on Play Store"><i class="ion ion-happy-outline"></i>2018 평창동계올림픽</a>                    	
                        <a href="https://www.pc2018.ga/PIX/FEV/" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on App Store"><i class="ion ion-coffee"></i>관리자 사이트</a>
                    </div>
                    
                    <div class="header-img">
                        <figure class="img-layers">
                            <div class="img-layer-left animation" data-animation="animation-fade-in-left" data-delay="200">
                                <img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/header-1-ufo.png" alt="Image Left">
                            </div>
                            <div class="img-layer-center animation" data-animation="animation-fade-in-up" data-delay="800">
                                <img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/header-2-ufo.png" alt="Image Center">
                            </div>
                            <div class="img-layer-right animation" data-animation="animation-fade-in-right" data-delay="200">
                                <img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/header-3-ufo.png" alt="Image Right">
                            </div>
                        </figure>
                    </div>
                    
                </div>
                <!-- .container end -->
                
            </div>
            <!-- .header-overlay end -->
            
        </div>
        <!-- .header-content end -->
        
    </header>
    <!-- #header end -->
    <!-- #features2 -->
    <div id="features2" class="bg-grey container-padding100">
        
        <!-- .container -->
        <div class="container">
            
            <!-- .row -->
            <div class="row">
                
                <div class="col-sm-6 col-lg-5 col-sm-offset-0 col-md-offset-1 margin-bottom40-xs">
                	<div class="padding-top140 padding-top80-sm padding-top0-xs text-center-xs">
                    	<div class="post-heading-left">
                        	<p>UFO 통합형 축제관리 서비스</p>
                            <h2>축제 참여와 피드백을 이끌어내는 간편한 매개체</h2>
                            <h5>UFO는 스탬프랠리와 설문조사를 솔루션을 통해 축제 방문객의 참여를 유도하고 피드백을 받을 수 있는 통합형 축제관리 서비스를 제공합니다. </h5>
                        </div>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 1 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-paper-airplane"></i>
                                    <p><strong>스토리가 있는 서베이</strong><br>객/주관식 문항, 사진 올리기 등 원하는 형태의 설문조사 제작 지원</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 2 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-android-phone-portrait"></i>
                                    <p><strong>모바일 스탬프 랠리</strong><br>방문객의 참여를 최대로 이끌어낼 수 있는 쉽고 재밌는 콘텐츠</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 3 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-social-rss"></i>
                                    <p><strong>바이럴 마케팅 솔루션</strong><br>이벤트 내용을 자동으로 SNS에 업데이트 해주는 바이럴마케팅 지원</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 4 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-stats-bars"></i>
                                    <p><strong>피드백 결과 분석</strong><br>참가자의 스탬프 랠리 참여 패턴 + 서베이를 심층적으로 분석한 결과 제공</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-md-5 col-lg-4 col-md-offset-0 col-lg-offset-1 img-padding-xs">
                	<figure class="img-layers2 img-layer-left-front">
                    	<div class="img-layer-left animation" data-animation="animation-slide-in-right">
                        	<img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/ufo_right.png" alt="Image Left">
                        </div>
                        <div class="img-layer-right animation" data-animation="animation-fade-in-left" data-delay="1000">
                        	<img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/ufo_left.png" alt="Image Right">
                        </div>
                    </figure>
                </div>
                
            </div>
            <!-- .row end -->
            
		</div>
        <!-- .container end -->
        
    </div>
    <!-- #features2 end -->
    
    <!-- #testimonials -->
    <div id="testimonials" class="bg-img" style="background-image:url(${pageContext.request.contextPath}/resources/ulc/images/content/bg/2.jpg);">
        
        <!-- .bg-overlay -->
        <div class="bg-overlay bg-overlay90 container-padding140">
            
            <!-- .container -->
            <div class="container">
                
                <!-- .carousel-slider -->
                <div class="carousel-slider testimonials-slider">
                    
                    
                    
                    <div class="slick-slide"> <!-- 2 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"정보 콘텐츠 + 게임 콘텐츠 + 피드백 콘텐츠가 조화를 잘 이루고 있고, 모바일 앱을 통해 스탬프 랠리를 구현한 점은 독특하면서도 아날로그 감성을 자극하네요."</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>정수용</h4>
                                <p>아토스 서비스데스크 듀티매니저</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="slick-slide"> <!-- 3 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"Shoot, shoot, reward!"</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>User</h4>
                                <p>of stamp rally challenge</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="slick-slide"> <!-- 1 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"좋네요(80년대 스타일 따봉 엄지척)"</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>김서현</h4>
                                <p>부산 사하구청 주무관</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- .carousel-slider end -->
                
            </div>
            <!-- .container end -->
            
        </div>
        <!-- .bg-overlay -->
        
    </div>
    <!-- #testimonials end -->
    
    
    <!-- #features -->
    <div id="features" class="container-padding10050">
        
        <!-- .container -->
        <div class="container">
            
            <!-- .row -->
            <div class="row">
                
                <div class="col-sm-4"> <!-- 1 -->
                	<div class="affa-feature-icon">
                    	<div class="feature-icon-heading">
                        	<i class="ion ion-ios-world-outline"></i>
                            <p>UFO The platform</p>
                            <h4>축제 관리를 위해 최적화된 플랫폼</h4>
                        </div>
                        <p>UFO는 축제 정보와 콘텐츠를 쉽게 관리하고 제작할 수 있도록 도와줍니다.</p>
                    </div>
                </div>
                
                <div class="col-sm-4"> <!-- 2 -->
                	<div class="affa-feature-icon">
                    	<div class="feature-icon-heading">
                        	<i class="ion ion-android-laptop"></i>
                            <p>UFO Hybrid solution</p>
                            <h4>모바일 앱과 웹 사이트 동시 제작</h4>
                        </div>
                        <p>UFO는 축제용 웹 사이트와 모바일 앱을 동시에 제작하는 솔루션으로 구축 비용 및 시간을 절감시킵니다.</p>
                    </div>
                </div>
                
                <div class="col-sm-4"> <!-- 3 -->
                	<div class="affa-feature-icon">
                    	<div class="feature-icon-heading">
                        	<i class="ion ion-android-contacts"></i>
                            <p>UFO Analytics</p>
                            <h4>축제 참여자 피드백 분석 서비스</h4>
                        </div>
                        <p>UFO는 방문자의 축제 참여 활동, 축제 전반에 대한 피드백 자료를 분석하여 제공합니다.</p>
                    </div>
                </div>
                
            </div>
            <!-- .row -->
            
		</div>
        <!-- .container end -->
        
    </div>
    <!-- #features end -->

    
    <!-- #download -->
    <div id="download" class="bg-img" style="background-image:url(${pageContext.request.contextPath}/resources/ulc/images/content/bg/3.jpg);">
        
        <!-- .bg-overlay -->
        <div class="bg-overlay container-padding140120">
            
            <!-- .container -->
            <div class="container text-center">
                
                <div class="post-heading-center">
                	<h2>웹과 모바일 지원</h2>
                </div>
                
                <p class="text-left text-lg text-padding margin-bottom50">UFO는 웹사이트와 모바일사이트를 통합형으로 구축하여 사이트 관리에 최적화되어 있습니다. UFO는 모바일 앱을 다운로드 하는 번거로움이 없습니다.</p>
                
                
            </div>
            <!-- .container end -->
            
        </div>
        <!-- .bg-overlay -->
        
    </div>
    <!-- #download end -->
    
    <!-- #subscribe -->
    <div id="subscribe" class="container-padding140">
        
        <!-- .container -->
        <div class="container">
            
            <!-- .affa-form-wrap -->
            <div class="affa-form-wrap">
            	
                <div class="pull-left">
                	<div class="pull-left post-heading-left padding-top10-lg padding-top10-md">
                        <h2>UFO79 문의</h2>
                        <h5><a href="mailto:ufo79service@gmail.com?Subject=Hello%20UFO79" target="_top">ufo79service@gmail.com</a></h5>
                    </div>
                </div>
                
                <div class="pull-right">
<!--                     <div class="pull-right affa-form-subscribe"> -->
                    <div class="fb-comments" data-href="https://www.pc2018.ga/PIX/ULC/" data-width="600px" data-numposts="2"></div>
<!--                     </div> -->
                </div>
                
            </div>
            
            <div class="row">
            
            </div>
            <!-- .affa-form-wrap end -->
            
		</div>
        <!-- .container end -->
        
    </div>
    <!-- #subscribe end -->
    
    <!-- #footer -->
    <footer id="footer">
        
        <!-- .container -->
        <div class="container">
            
            <div class="footer-links">
            	<a href="https://www.facebook.com/UFO79-727262880784383/" class="link-icon" title="Facebook"><i class="ion ion-social-facebook"></i></a>
                <a href="http://www.twitter.com/share?=url=www.pc2018.ga/PIX/ULC/" class="link-icon" title="Twitter"><i class="ion ion-social-twitter"></i></a>
                <a href="http://plus.google.com/share?url=www.pc2018.ga/PIX/ULC/" class="link-icon" title="Google Plus"><i class="ion ion-social-googleplus"></i></a>
<!--                 <a href="#" class="link-icon" title="Dribbble"><i class="ion ion-social-dribbble"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Instagram"><i class="ion ion-social-instagram"></i></a> -->
                <a href="#" class="scrollup">Back to Top<i class="ion ion-ios-arrow-up"></i></a>
            </div>
            
            <div class="footer-copyright">
            	<p>&copy; <a href="http://affapress.com" target="_blank">UFO79 Corp.</a> All Rights Reserved.</p>
            </div>
            
		</div>
        <!-- .container end -->
        
    </footer>
    <!-- #footer end -->
    
    <!--[if lt IE 8]>
    	<div class="browser-notice">
            <div class="container">
            	<div class="text">
                    <h1>Internet Explorer Out To Date</h1>
                    <p>Please update your Internet Explorer browser with a newer version (Internet Explorer 8 above) now!</p>
                    <span>You can download it <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">here....</a></span>
                </div>
            </div>
        </div>
	<![endif]-->
    
    <!-- JavaScripts -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/smoothscroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/response.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/waypoints.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/slick.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.fancybox-media.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ulc/js/script.js"></script>
   <div id="fb-root"></div> 
</body>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1508199992578149";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>
</html>