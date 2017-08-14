<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ADMIN</title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- custom css -->
        <link href="${pageContext.request.contextPath}/resources/pix/css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- font awesome for icons -->
        <link href="${pageContext.request.contextPath}/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!--flex slider-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="${pageContext.request.contextPath}/resources/pix/css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--web fonts-->      
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

        <!--owl carousel css-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="${pageContext.request.contextPath}/resources/pix/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--popups css-->
        <link href="${pageContext.request.contextPath}/resources/pix/css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body data-spy="scroll" data-offset="80">

        <section id="home" data-stellar-background-ratio="0.5">
            <div class="parallax-overlay"></div> 
            <div class="home-content text-center">
                <div class="container">
                    <div class="blog-intro-text bg-heading">
                        <h5>Festival 2016</h5>
                        <div class="center-heading text-center">
                            <h2>UFO</h2>
                            <span class="icon"><i class="fa fa-bars"></i></span> 
                        </div><!--center heading-->
                        <div class=" text-center">
                            <p class="scrollto"><a href="#blog-wrapper" class="btn btn-lg btn-dark-2">찾아보기! </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--blog intro section end-->    
        <section id="navigation">
            <div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar">공지사항</span>
                            <span class="icon-bar">축제정보</span>
                            <span class="icon-bar">설문작성</span>
                            <span class="icon-bar">통계</span>                            
                        </button>
                        <a class="navbar-brand" href="#">UFO</a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right scrollto">
                            <li><a href="#home">공지사항</a></li>                          
                            <li><a href="#home">축제정보</a></li>                          
                            <li><a href="#home">설문작성</a></li>                          
                            <li><a href="#home">통계</a></li>
                            <li><a href="#home"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>                                                      
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container -->
            </div><!--navbar-default-->
        </section><!--navigation section end here-->
        <div class="divided-50"></div>
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                    					
                    					<p class="text-left" id="BtnShow" style="display: block">
                                            <button onClick="showForm(); return false;" class="btn btn-dark btn-lg">
                                                글쓰기
                                            </button>
                                        </p>
                                        
                            <!-- 인픗 시 -->            
                            <div class="blog-post-wrap" id="UfoEventForm" style="display: none">
                          
                           			 	<p class="text-left">
                                            <button onClick="hideForm(); return false;" class="btn btn-dark btn-lg">
                                                숨기기
                                            </button>
                                        </p>
                                        
                                        
                            <form action="UfoEventInput" method="POST" enctype="multipart/form-data">
                            
                            <div class="row">
                                <div class="col-sm-3 margin-btm-30 hidden-xs">
                                   <textarea name="tags" cols="40" rows="5" placeholder="테그를 입력하세요.쉼표로 구분 가능합니다." class="form-control"></textarea>
                                                                         
                                </div>
                                
                                <div class="col-sm-9">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                    	<div class="post-date">
                                    	
                                    	<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
                                    	
                                    	</div>
                                    		<input type="file" name="file" class="form-control">
										
                                        </div>
                                        <div class="col-sm-6">
                                        <div class="post-date">
                                        	<input type="text" name="fest_event_name" class="form-control" placeholder="제목">
                                        </div>
                                        <div class="post-date">
                                        	<textarea name="content" cols="40" rows="5" placeholder="내용을 입력해 주세요." class="form-control"></textarea>
                                        </div>
                                        <div class="post-date">
	                                        <p class="text-right">
	                                        <input type="radio" name="isPublic" value="Y" checked > 공개 
	                                        <input type="radio" name="isPublic" value="N" > 비공개 
	                                        </p>
                                        </div>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                등록
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div><!-- 인픗 끝-->
                      	
                                        
                    	<c:forEach var="var" items="${event}" varStatus="status">
                    	<div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>${var.idx }</h2>
                                        <span>만든 날짜</span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/resources/pix/img/blog-1.jpg" class="img-responsive" alt="">
                                        </a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">${var.fest_event_name }</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <p>
                                        	내용
                                        </p>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                      	</c:forEach>
                        <ul class="pager">
                            <li><a href="#">Previous Page</a></li>
                            <li><a href="#">Next Page</a></li>
                        </ul>
                    </div><!--blog-post col-->
                    <div class="col-sm-3">
                        <div class="post-sidebar-box">
                            <form role="form">
                                <input type="text" class="form-control" placeholder="검색어를 입력하세요.">

                            </form>
                        </div><!--sidebar box-->
                        <div class="sidebar-box margin40">
                            <h4>카테고리</h4>
                            <ul class="list-unstyled cat-list">
                                <li> <a href="#">포스터</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">행사안내</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">어린이</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">교통안내</a> <i class="fa fa-angle-right"></i></li>
                            </ul>
                        </div>
                    </div><!--blog sidebar col-->
                </div>
            </div>
        </section><!--blog wrapper-->
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 margin-btm-30">
                        <div class="footer-col">
                            <h3 class="widget-title">
                               픽스란?
                            </h3>
                            <p>
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text
                            </p>
                        </div><!--footer-col-->

                        <div class="footer-col">
                            <ul class="list-inline social-1">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div><!--footer-col-->
                    </div>

                    <div class="col-sm-4 margin-btm-30">
                        <div class="footer-col">
                            <h3 class="widget-title">
                                최신 정보
                            </h3>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="footer-col">
                            <h3 class="widget-title">
                                뉴스레터를 받아 보세요.
                            </h3>
                            <p>
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.
                            </p>
                            <form role="form" class="subscribe-form">
                                <div class="input-group">
                                    <input type="email" class="form-control" placeholder="Enter email to subscribe">
                                    <span class="input-group-btn">
                                        <a class="btn  btn-theme btn-lg" href="#">Ok</a>
                                        <!--<button class="btn  btn-theme btn-lg">Ok</button>-->
                                    </span>
                                </div>
                            </form>
                        </div><!--footer-col-->
                    </div>
                </div>
            </div>
        </footer><!--footer-->
        <div class="footer-btm">
            <ul class="footer-nav list-inline text-center">
                <li><a href="#">Terms of use</a></li>
                <li><a href="#">Privacy and policy</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="typography.html">Typography</a></li>
                <li><a href="#">Sign In</a></li>
            </ul>
            <div class="copyright text-center">
                Copyright &copy; 2016 Gangneung Digital Complex
            </div>
        </div><!--footer-btm-->
        <!--back to top-->
        <a href="#" class="scrollToTop"><i class="fa fa-angle-up"></i></a>
        <!--back to top end-->
        <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="${pageContext.request.contextPath}/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--easing plugin for smooth scroll-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.sticky.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/wow.min.js" type="text/javascript"></script> 
        <!--easy pie charts-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/waypoints.min.js" type="text/javascript"></script>
        <!--digit countdown plugin-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/easypiechart.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.stellar.min.js" type="text/javascript"></script>
        <!--owl carousel slider-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/owl.carousel.min.js" type="text/javascript"></script>
        <!--twitter feed-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/tweetie.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.backstretch.min.js" type="text/javascript"></script>
        <!--valid / working contact form js-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/contact_me.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jqBootstrapValidation.js" type="text/javascript"></script>
        <!--customizable plugin edit according to your needs-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/custom.js" type="text/javascript"></script>
        <script type="text/javascript">
        	function showForm(){
        		document.getElementById("UfoEventForm").style.display="block"
        		document.getElementById("BtnShow").style.display="none"
        	}
        	
        	function hideForm(){
        		document.getElementById("UfoEventForm").style.display="none"
        		document.getElementById("BtnShow").style.display="block"
        	}
        </script>
    </body>
</html>