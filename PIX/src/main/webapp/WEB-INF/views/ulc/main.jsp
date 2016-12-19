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
	<title>UFO79 Landing Page</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="UFO79 is a simple and clean design landing page that built-in professional responsive template, elegant style, smooth-animation and have a slew of features.">
    <meta name="keywords" content="Landing Page, One Page Template, Simple Design, Clean Design, Responsive Template, Smooth Animation, App Showcase, PSD, HTML5, CSS3, jQuery">
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
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ulc/images/favicon.ico">
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/ulc/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/ulc/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/ulc/images/apple-touch-icon-114x114.png">
    
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
                    	<li class="active"><a href="#header" class="smooth-scroll">Home</a></li>
                        <li><a href="#features" class="smooth-scroll">Features</a></li>
                        <li><a href="#counter" class="smooth-scroll">Counter</a></li>
                        <li><a href="#testimonials" class="smooth-scroll">Reviews</a></li>
                        <li><a href="#screenshots" class="smooth-scroll">Screenshots</a></li>
                        <li><a href="page">Page</a></li>
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
                    	<a href="#" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on Play Store"><i class="ion ion-social-android"></i>Play Store</a>
                        <a href="#" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on App Store"><i class="ion ion-social-apple"></i>App Store</a>
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
    
    <!-- #counter -->
    <div id="counter" class="bg-grey section-wrap padding-top100 padding-bottom100-xs">
        
        <!-- .container -->
        <div class="container">
            
            <!-- .row -->
            <div class="row">
                
                <div class="col-sm-6 col-md-5 col-lg-4 col-md-offset-0 col-lg-offset-1 img-padding-xs">
                	<figure class="margin-bottom35-min margin-bottom60-xs animation" data-animation="animation-slide-in-left">
                    	<img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/counter-1.png" alt="Image">
                    </figure>
                </div>
                
                <div class="col-sm-6 col-lg-5 col-sm-offset-0 col-md-offset-1">
                	<div class="padding-top120 padding-top100-sm padding-top0-xs text-center-xs">
                    	<p class="text-lg margin-bottom40">Morbi sed faucibus urna mi aenean erat turpis, iaculis at ultricis eget, malesuada sed sociosqu class aptent taciti turpis litora.</p>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 1 -->
                            	<div class="affa-counter">
                                	<h4><span>128</span>k</h4>
                                    <p><i class="ion ion-ios-world"></i>Downloads</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 2 -->
                            	<div class="affa-counter">
                                	<h4><span>75</span>k</h4>
                                    <p><i class="ion ion-happy-outline"></i>Members</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 3 -->
                            	<div class="affa-counter">
                                	<h4><span>2560</span></h4>
                                    <p><i class="ion ion-ios-box"></i>Reviews</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 4 -->
                            	<div class="affa-counter">
                                	<h4><span>44</span>m</h4>
                                    <p><i class="ion ion-ios-people"></i>Visitors</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- .row end -->
            
		</div>
        <!-- .container end -->
        
    </div>
    <!-- #counter end -->
    
    <!-- #testimonials -->
    <div id="testimonials" class="bg-img" style="background-image:url(${pageContext.request.contextPath}/resources/ulc/images/content/bg/2.jpg);">
        
        <!-- .bg-overlay -->
        <div class="bg-overlay bg-overlay90 container-padding140">
            
            <!-- .container -->
            <div class="container">
                
                <!-- .carousel-slider -->
                <div class="carousel-slider testimonials-slider">
                    
                    <div class="slick-slide"> <!-- 1 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"Aenean erat turpis, iaculis at ultricies eget, malesuada sed turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>Mugiwara Kiwolen</h4>
                                <p>Founder Of Minima</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="slick-slide"> <!-- 2 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"Aenean erat turpis, iaculis at ultricies eget, malesuada sed turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>Rendy Jagerjack</h4>
                                <p>Developer Of Minima</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="slick-slide"> <!-- 3 -->
                        <div class="affa-testimonial">
                            <div class="testimonial-txt">
                                <p>"Aenean erat turpis, iaculis at ultricies eget, malesuada sed turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."</p>
                            </div>
                            <div class="testimonial-name">
                                <h4>Bebbh Duduls</h4>
                                <p>Designer Of Minima</p>
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
    
    <!-- #features2 -->
    <div id="features2" class="bg-grey container-padding100">
        
        <!-- .container -->
        <div class="container">
            
            <!-- .row -->
            <div class="row">
                
                <div class="col-sm-6 col-lg-5 col-sm-offset-0 col-md-offset-1 margin-bottom40-xs">
                	<div class="padding-top140 padding-top80-sm padding-top0-xs text-center-xs">
                    	<div class="post-heading-left">
                        	<p>UFO 서베이 서비스</p>
                            <h2>축제 방문객의 참여와 피드백을 이끌어내는 간편한 매개체</h2>
                            <h5>UFO는 설문조사, 퀴즈, 미션 등을 생성하여 축제 방문객의 참여를 유도하고 피드백을 받을 수 있는 서베이 서비스를 제공합니다. </h5>
                        </div>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 1 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-paper-airplane"></i>
                                    <p><strong>스토리가 있는 서베이</strong> 방문객의 참여를 최대로 이끌어낼 수 있도록 컨설팅 지원</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 2 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-speakerphone"></i>
                                    <p><strong>맞춤형 서베이 폼</strong> 객/주관식 문항, 사진 올리기 등 원하는 형태의 설문조사 제작 지원</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                        	<div class="col-sm-6"> <!-- 3 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-trophy"></i>
                                    <p><strong>보상 프로그램</strong> 설문조사에 참여하는 참가자들에게 제공하는 상품 쿠폰 발행 가능</p>
                                </div>
                            </div>
                            
                            <div class="col-sm-6"> <!-- 4 -->
                            	<div class="affa-feature-icon2">
                                    <i class="ion ion-stats-bars"></i>
                                    <p><strong>피드백 결과 분석</strong> 참가자에게 받은 피드백을 심층적으로 분석한 서베이 결과 제공</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-md-5 col-lg-4 col-md-offset-0 col-lg-offset-1 img-padding-xs">
                	<figure class="img-layers2 img-layer-left-front">
                    	<div class="img-layer-left animation" data-animation="animation-slide-in-right">
                        	<img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/feature-1-left.png" alt="Image Left">
                        </div>
                        <div class="img-layer-right animation" data-animation="animation-fade-in-left" data-delay="1000">
                        	<img src="${pageContext.request.contextPath}/resources/ulc/images/content/landing/feature-1-right.png" alt="Image Right">
                        </div>
                    </figure>
                </div>
                
            </div>
            <!-- .row end -->
            
		</div>
        <!-- .container end -->
        
    </div>
    <!-- #features2 end -->
    
    <!-- #screenshots -->
    <div id="screenshots" class="container-padding100">
        
        <!-- .container -->
        <div class="container">
            
            <div class="post-heading-center margin-bottom80">
            	<p>Screenshots</p>
                <h2>Look app in action</h2>
                <h5>Aenean erat turpis, iaculis at ultricies eget, malesuada sed turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos bibendum lacinia tunc himenaeos.</h5>
            </div>
            
		</div>
        <!-- .container end -->
        
        <!-- .carousel-slider -->
        <div class="carousel-slider screenshots-slider">
            
            <div class="slick-slide"> <!-- 1 -->
            	<div class="container">
                	<div class="row">
                    	<div class="col-lg-10 col-lg-offset-1">
                        	<figure><img src="${pageContext.request.contextPath}/resources/ulc/images/content/screenshots/1.png" alt="Image"></figure>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="slick-slide"> <!-- 2 -->
            	<div class="container">
                	<div class="row">
                    	<div class="col-lg-10 col-lg-offset-1">
                        	<figure><img src="${pageContext.request.contextPath}/resources/ulc/images/content/screenshots/2.png" alt="Image"></figure>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="slick-slide"> <!-- 3 -->
            	<div class="container">
                	<div class="row">
                    	<div class="col-lg-10 col-lg-offset-1">
                        	<figure><img src="${pageContext.request.contextPath}/resources/ulc/images/content/screenshots/3.png" alt="Image"></figure>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- .carousel-slider end -->
        
    </div>
    <!-- #screenshots end -->
    
    <!-- #download -->
    <div id="download" class="bg-img" style="background-image:url(${pageContext.request.contextPath}/resources/ulc/images/content/bg/3.jpg);">
        
        <!-- .bg-overlay -->
        <div class="bg-overlay container-padding140120">
            
            <!-- .container -->
            <div class="container text-center">
                
                <div class="post-heading-center">
                	<h2>Simple solution. Built for everyone.</h2>
                </div>
                
                <p class="text-lg text-padding margin-bottom50">Morbi condimentum, lorem acid vulputate elementum, tellus dolor dictum erat, porttitor in augue nisi libero. Phasellus vel ante molestie, vehicula augue nec purus, lobortis mentum eros inceptos bibendum.</p>
                
                <div class="post-btn">
                	<a href="#" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on Play Store"><i class="ion ion-social-android"></i>Play Store</a>
                    <a href="#" class="btn-custom btn-white btn-border btn-rounded btn-icon" title="Download on App Store"><i class="ion ion-social-apple"></i>App Store</a>
                </div>
                
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
                        <h2>Stay updated on the release</h2>
                        <h5>Be the first to know when we start!</h5>
                    </div>
                </div>
                
                <div class="pull-right">
                    <form method="post" action="#" class="pull-right affa-form-subscribe">
                        <input type="text" name="email" placeholder="Email address">
                        <input type="submit" name="submit" value="Subscribe Now">
                    </form>
                </div>
                
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
            	<a href="#" class="link-icon" title="Facebook"><i class="ion ion-social-facebook"></i></a>
                <a href="#" class="link-icon" title="Twitter"><i class="ion ion-social-twitter"></i></a>
                <a href="#" class="link-icon" title="Google Plus"><i class="ion ion-social-googleplus"></i></a>
                <a href="#" class="link-icon" title="Dribbble"><i class="ion ion-social-dribbble"></i></a>
                <a href="#" class="link-icon" title="Instagram"><i class="ion ion-social-instagram"></i></a>
                <a href="#" class="scrollup">Back to Top<i class="ion ion-ios-arrow-up"></i></a>
            </div>
            
            <div class="footer-copyright">
            	<p>&copy; 2016 by <a href="http://affapress.com" target="_blank">Affapress</a>. All Rights Reserved.</p>
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
    
</body>
</html>