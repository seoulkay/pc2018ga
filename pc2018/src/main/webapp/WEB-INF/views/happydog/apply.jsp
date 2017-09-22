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
            <div class="hero-holder" style="background: #35373C url('${pageContext.request.contextPath}/resources/ufo/assets/images/hero/02-min.jpg') no-repeat 50% 50%;"></div>
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">반려동물 보육교사 신청</h2>
            <div class="intro">반려동물 보육교사 신청 소제목 입니다.</div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#overview-section">서비스 정보 보기</a>
                 <a class="scrollto-no-offset" href="#overview-section"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="page-nav-space-holder hidden-xs">
        <div id="page-nav-wrapper" class="page-nav-wrapper text-center">
            <div class="container">
                <ul id="page-nav" class="nav page-nav list-inline">
                    <li><a class="scrollto" href="#overview-section">서비스 정보</a></li>
                    <li><a class="scrollto"  href="#support-section">서비스 신청</a></li>
                </ul><!--//page-nav-->
            </div>
        </div><!--//page-nav-wrapper-->
    </div><!--//page-nav-space-holder-->
        
    <section id="overview-section" class="overview-section section">
        <h2 class="section-title">서비스 정보</h2>
        <div class="section-intro">서비스 정보 내용이 들어갑니다.</div><!--//section-intro-->
        <div class="figures-wrapper">
            <div class="container text-center">
                <figure class="macbook-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/macbook-screen.png" alt=""></figure>
                <figure class="ipad-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/ipad-screen.png" alt=""></figure>
                <figure class="iphone-screen"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/iphone-screen.png" alt=""></figure>
                
            </div><!--//container-->
        </div><!--//figures-wrapper-->
        <div class="benefits-wrapper" style="background-color: #fcbc4e;">
            <div class="container text-center">
                <div class="row">
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/clock-white.svg" alt="">
                            <h3 class="item-title">하나</h3>
                            <div class="item-desc">서비스 정보 1</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/presenter-white.svg" alt="">
                            <h3 class="item-title">둘</h3>
                            <div class="item-desc">서비스 정보 2</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-xs-12 col-sm-4">
                        <div class="item-inner">
                            <img class="item-icon" src="${pageContext.request.contextPath}/resources/ufo/assets/images/icons/chat-white.svg" alt="">
                            <h3 class="item-title">셋</h3>
                            <div class="item-desc">서비스 정보 3</div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//row-->
            </div><!--//container-->
        </div><!--//benefits-->        
    </section><!--//overview-section-->
    
    <section id="support-section" class="support-section section text-center">
        <h2 class="section-title">서비스 신청</h2>
        <div class="section-intro">서비스 신청 내용이 들어갑니다.</div>
        <a class="btn btn-secondary" href="support.html">서비스 신청하기</a>
        <div class="team-figure">
            <img class="img-responsive support-team" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team.png" alt="">
        </div><!--//team-figure-->
    </section><!--//support-section-->
            
    <jsp:include page="footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</body>
</html> 

