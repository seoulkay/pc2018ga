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

<body class="career-page" data-spy="scroll" data-target="#page-nav">   
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
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">Come Work With Us</h2>
            <div class="intro">We are a fast growing startup adipiscing elit aenean commodo <br class="hidden-xs">ligula eget dolor sociis natoque penatibus et magnis dis parturient montes.</div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#jobs-block">View available jobs</a>
                 <a class="scrollto-no-offset" href="#jobs-block"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="page-nav-space-holder hidden-xs">
        <div id="page-nav-wrapper" class="page-nav-wrapper text-center">
            <div class="container">
                <ul id="page-nav" class="page-nav nav list-inline">
                    <li><a class="scrollto" href="#culture-block">Company Culture</a></li>
                    <li><a class="scrollto"  href="#benefits-block">Benefits and Perks</a></li>
                    <li><a class="scrollto"  href="#jobs-block">Current Jobs</a></li>
                </ul><!--//page-nav-->
            </div>
        </div><!--//page-nav-wrapper-->
    </div><!--//page-nav-space-holder-->
    
    <div id="culture-block" class="culture-block">
        <div class="container">
            <h2 class="block-heading text-center">What it's like working at Startup Kit?</h2>
            <div class="block-intro text-center">
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                
            </div><!--//block-intro--->
            <div class="video-holder">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/4exZjLFTVd4" frameborder="0" allowfullscreen></iframe>
                </div>
            </div><!--//video-holder-->
            
        </div><!--//container-->
    </div><!--//jobs-block-->
    
    <div id="benefits-block" class="benefits-block">
        <div class="container">
            <h2 class="block-heading text-center">Benefits and Perks</h2>
            <div class="block-intro text-center">
                <p>We offer lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>

                <ul class="list-unstyled text-center benefits-list">
                    <li><i class="fa fa-check" aria-hidden="true"></i> Free lunch and snacks</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Modern Office</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Unlimited holidays</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Flexible working hours</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Medical insurance</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Great offsite activities</li>
                    <li><i class="fa fa-check" aria-hidden="true"></i> Competitive Salary</li>
                </ul>
                
                <img class="img-responsive center-block" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/career/office-space.jpg" alt="">
            </div><!--//block-intro-->
            <div class="text-center">
                
            </div>
        </div><!--//container-->
    </div><!--//jobs-block-->
    
    <div id="jobs-block" class="jobs-block">
        <div class="container">
            <h2 class="block-heading text-center">Current Job Vacancies</h2>
            <div class="block-intro text-center">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit dolor, tempor convallis turpis. Sed in ornare urna. Interdum et malesuada fames. Please email your CV to <a href="#">jobs@yourappsite.com</a>
            </div>
            
            <div class="job-list text-center">
                <div class="item">
                    <h3 class="title"><a href="job-single
">iOS App Developer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Full-time</li>
                            <li class="last">San Francisco</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Android Developer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Full-time</li>
                            <li class="last">San Francisco</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Senior Front-end Developer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Full-time</li>
                            <li class="last">San Francisco</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Senior Back-end Developer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Full-time</li>
                            <li class="last">San Francisco</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Product/UX/UI Designer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Contract</li>
                            <li class="last">London</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Visual Designer</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Contract</li>
                            <li class="last">London</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Product Manager</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Full-time</li>
                            <li class="last">London</li>
                        </ul>
                    </div>
                </div><!--//item-->
                <div class="item">
                    <h3 class="title"><a href="job-single
">Social Media Marketing/Community Manager</a></h3>
                    <div class="meta">
                        <ul class="list-inline">
                            <li>Part-time</li>
                            <li class="last">Remote</li>
                        </ul>
                    </div>
                </div><!--//item-->
                
            </div><!--//job-list-->
            
        </div><!--//container-->
    </div><!--//jobs-block-->
    
    
           
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

