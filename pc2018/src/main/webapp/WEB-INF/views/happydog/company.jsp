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

<body class="career-page" data-spy="scroll" data-target="#page-nav">   
    <jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
    
   <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder" style="background: #35373C url('${pageContext.request.contextPath}/resources/ufo/assets/images/hero/01-min.jpg') no-repeat 50% 50%;"></div>
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">반려동물보육교사<br>국내최초의 pleducare 시스템</h2>
            <div class="intro">Play + education + care = pleducare 놀이와 교육 그리고 보육이 통합된 국내최초의 시스템 </div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#features-section">사업소개 보기</a>
                 <a class="scrollto-no-offset" href="#features-section"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->  
    
    <section id="features-section" class="features-section section" style="padding-bottom: 0px;">
        <h2 class="section-title">행복하개 사업소개</h2>
        <div class="container">
            <div class="row">
                <div class="features-content-wrapper col-xs-12 col-sm-7 com-md-7">
                    <div class="intro">사업 구성</div><!--//intro-->
                    <ul class="feature-list list-unstyled">
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature one: lorem ipsum dolor sit amet.</li>
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature two: lorem ipsum dolor sit amet.</li>
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature three: lorem ipsum dolor sit amet.</li>
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature four: lorem ipsum dolor sit amet.</li>
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature five: lorem ipsum dolor sit amet.</li>
                        <li><img class="tick-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/tick.svg" alt=""> Feature six: lorem ipsum dolor sit amet.</li>
                    </ul><!--//feature-list-->
                    
                    <div id="reviews-carousel" class="reviews-carousel carousel slide" data-ride="carousel">
                        <!--//wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <blockquote class="review center-block">
                                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    <p>안심하고 행복하개를 이용하세요! 안심하고 행복하개를 이용하세요! 안심하고 행복하개를 이용하세요! 안심하고 행복하개를 이용하세요! 안심하고 행복하개를 이용하세요!</p>
                                </blockquote><!--//review-->
                                <div class="source">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div><!--//rating-->
                                    <img class="profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-1.png" alt="" />
                                    <div class="name">이효리, 효리네민박 회장</div>
                                </div><!--//source-->    
                            </div><!--//item-->
                            
                            <div class="item">
                                <blockquote class="review center-block">
                                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    <p>좋아요! 좋아요! 좋아요! 좋아요! 좋아요! 좋아요! 좋아요!</p>
                                </blockquote><!--//review-->
                                <div class="source">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div><!--//rating-->
                                    <img class="profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-2.png" alt="" />
                                    <div class="name">이상순, 효리네민박 사장</div>
                                </div><!--//source-->    
                            </div><!--//item-->
                            
                            <div class="item">
                                <blockquote class="review center-block">
                                    <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    <p>강아지를 사랑합시다. 고양이를 사랑합시다. 반려동물을 사랑합시다. 강아지를 사랑합시다. 고양이를 사랑합시다. 반려동물을 사랑합시다.</p>
                                </blockquote><!--//review-->
                                <div class="source">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div><!--//rating-->
                                    <img class="profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/users/user-3.png" alt="" />
                                    <div class="name">아이유, 효리네민박 직원</div>
                                </div><!--//source-->    
                            </div><!--//item-->
                            
                        </div><!--//carousel-inner-->
                        
                        <!--//Indicators-->
                        <ol class="carousel-indicators">
                            <li data-target="#reviews-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#reviews-carousel" data-slide-to="1"></li>
                            <li data-target="#reviews-carousel" data-slide-to="2"></li>
                        </ol>
                        
                    </div><!--//reviews-carousel-->
                </div><!--//features-content-wrapper-->                
            </div><!--//row-->
        </div><!--//container-->
        
        <div class="features-figure-wrapper">
            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/imac-screen.png" alt="">
        </div><!--//features-figure-wrapper-->
        
        <div class="press-wrapper">
            <div class="container">
               <div class="logos row">
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-1.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-2.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-3.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-4.svg" alt=""></div>
               </div>
               <div class="logos row">
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-1.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-2.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-3.svg" alt=""></div>
                   <div class="logo col-xs-6 col-sm-3"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/logos/logo-4.svg" alt=""></div>
               </div>  
            </div><!--//container-->
        </div><!--//press-wrapper-->
        
    </section><!--//features-section-->
    
            
    <jsp:include page="footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</body>
</html> 

