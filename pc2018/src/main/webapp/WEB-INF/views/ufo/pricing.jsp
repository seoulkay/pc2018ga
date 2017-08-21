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

<body class="pricing-page"  data-spy="scroll" data-target="#page-nav">   
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
                        <li class="active nav-item"><a href="pricing
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
            <h2 class="headline">Our Pricing is Simple and Flexible</h2>
            <div class="intro">You can change your plan at any time.</div>
            <div class="actions">
                 <a class="scrollto" href="#pricing-block">View Plans</a>
                 <a class="scrollto" href="#pricing-block"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="page-nav-space-holder hidden-xs">
        <div id="page-nav-wrapper" class="page-nav-wrapper text-center">
            <div class="container">
                <ul id="page-nav" class="page-nav nav list-inline">
                    <li><a class="scrollto" href="#pricing-block">Pricing</a></li>
                    <li><a class="scrollto"  href="#faqs-block">FAQs</a></li>
                </ul><!--//page-nav-->
            </div>
        </div><!--//page-nav-wrapper-->
    </div><!--//page-nav-space-holder-->
    
    <div class="pricing-block" id="pricing-block">
        <div class="container">
            <h2 class="block-heading text-center">30 day FREE trial with all plans! </h2>
            <div class="row">
                <div class="item item-1 col-xs-12 col-sm-6 col-md-3">
                    <div class="item-inner">
                        <div class="summary-box text-center">
                            <h3 class="item-heading">Starter</h3>
                            <div class="item-intro">For basic use lorem ipsum dolor sit amet, consectetuer adipiscing elit.</div>
                            <div class="price">
                                <span class="currency">$</span>
                                <span class="number">5</span>
                            </div><!--//price-->
                            <div class="unit">Per month</div>
                            <div class="action">
                                <div class="btn-container"><a href="#" class="btn btn-secondary btn-ghost">Sign Up Now</a></div>
                                <div class="note">(30 day free trial)</div>
                            </div>
                        </div><!--//summary-box-->
                        <div class="details-box">
                            <ul class="details-list list-unstyled">
                                <li><i class="fa fa-check" aria-hidden="true"></i> 1 User</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> 10 GB file storage</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Email support</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Free update</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Native apps</li>
                            </ul>
                        </div><!--//details-box-->
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-2 col-xs-12 col-sm-6 col-md-3">
                    <div class="item-inner">
                        <div class="summary-box text-center">
                            <h3 class="item-heading">Pro</h3>
                            <div class="item-intro">For pro use lorem ipsum dolor sit amet, consectetuer adipiscing elit.</div>
                            <div class="price">
                                <span class="currency">$</span>
                                <span class="number">10</span>
                            </div><!--//price-->
                            <div class="unit">Per month</div>
                            <div class="action">
                                <div class="btn-container"><a href="#" class="btn btn-secondary btn-ghost">Sign Up Now</a></div>
                                <div class="note">(30 day free trial)</div>
                            </div>
                        </div><!--//summary-box-->
                        <div class="details-box">
                            <ul class="details-list list-unstyled">
                                <li><i class="fa fa-check" aria-hidden="true"></i> 10 User</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> 30 GB file storage</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Email priority support</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Free update</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Native apps</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option one</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option two</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option three</li>
                            </ul>
                        </div><!--//details-box-->
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-3 item-popular col-xs-12 col-sm-6 col-md-3">
                    <div class="item-inner">
                        <div class="popular-tag text-center">
                            Most Popular
                        </div>
                        <div class="summary-box text-center">
                            <h3 class="item-heading">Team</h3>
                            <div class="item-intro">For team use lorem ipsum dolor sit amet, consectetuer adipiscing elit.</div>
                            <div class="price">
                                <span class="currency">$</span>
                                <span class="number">25</span>
                            </div><!--//price-->
                            <div class="unit">Per month</div>
                            <div class="action">
                                <div class="btn-container"><a href="#" class="btn btn-secondary btn-ghost">Sign Up Now</a></div>
                                <div class="note">(30 day free trial)</div>
                            </div>
                        </div><!--//summary-box-->
                        <div class="details-box">
                            <ul class="details-list list-unstyled">
                                <li><i class="fa fa-check" aria-hidden="true"></i> 100 User</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> 100 GB file storage</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Email priority support</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Free update</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Native apps</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option one</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option two</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option three</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option four</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option five</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option six</li>
                            </ul>
                        </div><!--//details-box-->
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item item-4 col-xs-12 col-sm-6 col-md-3">
                    <div class="item-inner">
                        <div class="summary-box text-center">
                            <h3 class="item-heading">Enterprise</h3>
                            <div class="item-intro">For team use lorem ipsum dolor sit amet, consectetuer adipiscing elit.</div>
                            <div class="price">
                                <span class="currency">$</span>
                                <span class="number">299</span>
                            </div><!--//price-->
                            <div class="unit">Per month</div>
                            <div class="action">
                                <div class="btn-container"><a href="#" class="btn btn-secondary btn-ghost">Sign Up Now</a></div>
                                <div class="note">(30 day free trial)</div>
                            </div>
                        </div><!--//summary-box-->
                        <div class="details-box">
                            <ul class="details-list list-unstyled">
                                <li><i class="fa fa-check" aria-hidden="true"></i> Unlimited User</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Unlimited file storage</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> 24/7 support</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Free update</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Native apps</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option one</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option two</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option three</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option four</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option five</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option six</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option seven</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option eight</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option nine</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Advanced option ten</li>
                            </ul>
                        </div><!--//details-box-->
                        
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//row-->
        </div><!--//container-->
    </div><!--//pricing-block-->
        
    <div class="faqs-block" id="faqs-block">
        <div class="container">
            <h2 class="block-heading text-center">Frequently Asked Questions</h2>
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle collapsed" href="#faq1" aria-expanded="false"><i class="fa fa-plus-square"></i>Can I viverra sit amet quam eget lacinia?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq1" aria-expanded="false" style="height: 0px;">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq2"><i class="fa fa-plus-square"></i>What is the ipsum dolor sit amet quam tortor?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq2">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq3"><i class="fa fa-plus-square"></i>How does the morbi quam tortor work?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq3">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
                    
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq4"><i class="fa fa-plus-square"></i>Can I ipsum dolor sit amet nascetur ridiculus?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq4">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel--> 
                </div>
                <div class="col-xs-12 col-sm-6">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq5"><i class="fa fa-plus-square"></i>Is it possible to tellus eget auctor condimentum?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq5">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq6"><i class="fa fa-plus-square"></i>Would it elementum turpis semper imperdiet?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq6">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq7"><i class="fa fa-plus-square"></i>How can I imperdiet lorem sem non nisl?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq7">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel-->
                    
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="panel-toggle" href="#faq8"><i class="fa fa-plus-square"></i>Can I imperdiet massa ut?</a></h4>
                        </div>
            
                        <div class="panel-collapse collapse" id="faq8">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life
                                accusamus terry richardson ad squid. 3 wolf moon officia
                                aute, non cupidatat skateboard dolor brunch. Food truck
                                quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
                                sunt aliqua put a bird on it squid single-origin coffee
                                nulla assumenda shoreditch et. Nihil anim keffiyeh
                                helvetica, craft beer labore wes anderson cred nesciunt
                                sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                Leggings occaecat craft beer farm-to-table, raw denim
                                aesthetic synth nesciunt you probably haven't heard of them
                                accusamus labore sustainable VHS.
                            </div>
                        </div>
                    </div><!--//panel--> 
                </div>
            </div><!--//row-->

        </div>
    </div><!--//faqs-block-->
        
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

