<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Responsive website template for products</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="https://www.ufo79.com/image/https://www.ufo79.com/image/favicon.ico">  
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

<body class="about-page">   
    <!-- ******HEADER****** --> 
    <header id="header" class="header">  
        <div class="container">      
            <h1 class="logo">
                <a href="index
"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/logo.svg" alt=""><span class="text">Startup Kit</span></a>
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
                        <li class="nav-item"><a href="index
">Home</a></li>
                        <li class="nav-item"><a href="features
">Features</a></li>
                        <li class="nav-item"><a href="stories
">Stories</a></li>
                        <li class="nav-item"><a href="pricing
">Pricing</a></li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">More <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="about
">About Us</a></li>
                                <li><a href="story-single
">Customer Story Single</a></li>
                                <li><a href="blog
">Blog</a></li>
                                <li><a href="blog-single
">Blog Single</a></li>
                                <li><a href="support
">Support Center</a></li>   
                                <li><a href="career
">Career</a></li> 
                                <li><a href="job-single
">Job Single</a></li> 
                                <li><a href="contact
">Contact</a></li>                    
                            </ul>                            
                        </li><!--//dropdown-->                         
                        <li class="nav-item"><a href="#" class="login-trigger" data-toggle="modal" data-target="#login-modal">Log in</a></li>
                        <li class="nav-item nav-item-cta last"><a class="btn-signup" href="#" data-toggle="modal" data-target="#signup-modal">Sign Up</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->      
    
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
                 <a class="scrollto-no-offset" href="#team-block"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div id="team-block" class="team-block">
        <div class="container">
            <h2 class="block-heading text-center">Our Team</h2>
            <div class="block-intro text-center">Intro goes here ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</div>
            <div class="block-cta text-center">
                <a class="btn btn-secondary" href="career
">Want to Join Us?</a>
            </div>
            <div class="row">
                <div class="item col-xs-6 col-md-3">
                    <div class="item-inner">
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-1.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-2.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-3.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-4.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-5.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-6.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-7.jpg" alt="">
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
                        <img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/team/member-8.jpg" alt="">
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
    
    
           
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">About</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Jobs</a> <label class="label label-new">We're hiring</label></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div><!--//footer-col-inner-->
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Product</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Tutorials</a></li>
                            <li><a href="#">Support Center</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Customers</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Useful Links</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Sign up</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Become our partner</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
                <div class="footer-col col-xs-6 col-md-3">
                    <div class="footer-col-inner">
                        <h3 class="col-title">Legal</h3>
                        <ul class="footer-menu list-unstyled">
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Terms of Services</a></li>
                            <li><a href="#">Policies</a></li>
                        </ul>
                    </div>
                </div><!--//footer-col-->
            </div><!--//row-->
            <div class="divider"></div>
            <div class="footer-bottom text-center">
                <ul class="social-media list-inline">
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                    
                </ul>
    
                <small class="copyright">Template Copyright @ <a href="http://themes.3rdwavemedia.com/" target="_blank">3rd Wave Media</a></small> 
            </div>
        </div><!--//container-->
    </footer><!--//footer-->
</body>
</html> 

