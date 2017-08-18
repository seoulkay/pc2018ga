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
    <link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon2.ico">  
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

<body class="contact-page">   
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
            <h2 class="headline">Get in Touch</h2>
            <div class="meta">Weâd love to hear from you. Lorem ipsum dolor sit amet, <br class="hidden-xs">consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. </div>
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="contact-methods">
        <div class="container">
            <div class="row">
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <h3 class="item-title"><i class="fa fa-life-ring" aria-hidden="true"></i> Get Support</h3>
                        <div class="item-content">If you have any questions or problems with our product please visit our <a href="support
">Support Center</a>.</div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <h3 class="item-title"><i class="fa fa-volume-control-phone" aria-hidden="true"></i> Enterprise Sales</h3>
                        <div class="item-content">Lorem ipsum dolor sit amet, consectetuer. Contact our sales team at <a href="tel:0800123456">0800 123 456</a>.</div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <h3 class="item-title"><i class="fa fa-file-archive-o" aria-hidden="true"></i> Press Inquiries</h3>
                        <div class="item-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor <a href="support
">Download our press kit</a>.</div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <h3 class="item-title"><i class="fa fa-users" aria-hidden="true"></i> Partnership Inquiries</h3>
                        <div class="item-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor <a href="support
">Use the contact form below</a>.</div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                
            </div><!--//row-->
        </div><!--//container-->
    </div><!--//contact-methods-->
    
    <div class="form-block">
        <form id="contact-form" class="contact-form" method="post" action="">   
            <h3 class="form-title text-center">Quick Contact Form</h3>                 
            <div class="row">                                                           
                <div class="form-group col-xs-12 col-sm-6">
                    <label class="sr-only" for="cname">Name</label>
                    <input type="text" class="form-control" id="cname" name="name" placeholder="Name" minlength="2" required="" aria-required="true">
                </div>                    
                <div class="form-group col-xs-12 col-sm-6">
                    <label class="sr-only" for="cemail">Email</label>
                    <input type="email" class="form-control" id="cemail" name="email" placeholder="Email" required="" aria-required="true">
                </div>
                <div class="form-group col-xs-12">
                    <label class="sr-only" for="cmessage">Your message</label>
                    <textarea class="form-control" id="cmessage" name="message" placeholder="Enter your message" rows="12" required="" aria-required="true"></textarea>
                </div>
                 <div class="form-group col-xs-12">
                    <button type="submit" class="btn btn-block btn-cta btn-primary">Send It</button>
                </div>                           
            </div><!--//row-->
            <div id="form-messages"></div>
        </form><!--//contact-form-->
    </div><!--//form-block-->
                
                           
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

