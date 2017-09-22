<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- ******HEADER****** --> 
    <header id="header" class="header">  
        <div class="container">      
            <h1 class="logo">
                <a href="index.html"><img style="max-height: 2em;" src="${pageContext.request.contextPath}/resources/ufo/assets/images/hd2.jpg" alt=""></a>
            </h1><!--//logo-->
            <nav class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->
                <div id="navbar-collapse" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"><a href="about">행복하개</a></li>
                        <li class="nav-item"><a href="company">사업소개</a></li>
                        <li class="nav-item"><a href="news">행복하개 소식</a></li>
                        <li class="nav-item"><a href="apply">반려동물 보육교사 신청</a></li>                                          
                        <li class="nav-item"><a href="info">정보마당</a></li>                                          
                        <li class="nav-item"><a href="qna">고객문의</a></li>                                          
                     </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->      
    
     <!-- Javascript -->          
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/jquery.flexslider-min.js"></script>       
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>
    
    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src="${pageContext.request.contextPath}/resources/ufo/assets/js/demo/style-switcher.js"></script>
    <script>
	    $(document).ready(function() {
	    
	    /* ======= Header Background Slideshow - Flexslider ======= */    
	    /* Ref: https://github.com/woothemes/FlexSlider/wiki/FlexSlider-Properties */
	    
	    $('.hero-slider').flexslider({
	        animation: "fade",
	        directionNav: false, //remove the default direction-nav - https://github.com/woothemes/FlexSlider/wiki/FlexSlider-Properties
	        controlNav: false, //remove the default control-nav
	        slideshowSpeed: 8000,
	        start: function(){
	             $(this).find('.slide').css("display", "block"); //prevent flash of the images
	        },
	    });     
	
	});
	</script>