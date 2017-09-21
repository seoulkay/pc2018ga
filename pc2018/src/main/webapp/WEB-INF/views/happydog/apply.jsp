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
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles_hd.css">
</head> 

<body class="about-page">   
    <jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
    
    <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder"></div>
            <div class="hero-mask-solid"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">About Our Company</h2>
            <div class="intro">Startup Kit is founded in 2016 with a distributed team lorem ipsum dolor sit amet <br>Aenean commodo ligula eget dolor. </div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#team-block">Meet the team</a>
                 <a class="scrollto-no-offset" href="#team-block"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div id="team-block" class="team-block">
        <div class="container">
            <h2 class="block-heading text-center">Our Team</h2>
            <div class="block-intro text-center">Intro goes here ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</div>
            <div class="block-cta text-center">
                <a class="btn btn-secondary" href="career.html">Want to Join Us?</a>
            </div>
            <div class="row">
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-1.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">James Doe</div>
                            <div class="title">Co-Founder, CEO</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                         </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-2.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Mike Doe</div>
                            <div class="title">Co-Founder, CTO</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                                
                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-3.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Kate Doe</div>
                            <div class="title">Product Manager</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                               
                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-4.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">David Doe</div>
                            <div class="title">Full-Stack Developer</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                               
                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-5.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Mark Doe</div>
                            <div class="title">App Developer</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>

                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-6.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Jennifer Doe</div>
                            <div class="title">Product Designer</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-7.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Tim Doe</div>
                            <div class="title">Product Designer</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-8.jpg" alt="">
                        <div class="mask">
                        </div><!--//mask-->
                        <div class="info text-center">
                            <div class="name">Betty Doe</div>
                            <div class="title">Customer Support</div>
                            <ul class="social list-inline">
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

                            </ul><!--//social-->    
                        </div><!--//info-->
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//row-->
        </div><!--//container-->
    </div><!--//team-block-->
            
    <jsp:include page="footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</body>
</html> 

