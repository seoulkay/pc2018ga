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
    <link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon.ico">  
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

<body class="story-single-page" data-spy="scroll" data-target="#page-nav">   
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
                        <li class="active nav-item"><a href="stories
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
            <div class="meta">
                <div class="logo">
                    <img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/stories/client-logo-1.svg" alt="">
                </div>
            </div><!--//meta-->        
            <h2 class="headline">A new way to app development</h2>
            
            <div class="actions">
                 <a class="scrollto-no-offset" href="#story-article-block">Read customer story</a>
                 <a class="scrollto-no-offset" href="#story-article-block"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div id="story-article-block" class="story-article-block">
        <div class="client-meta text-center">
            <div class="row">
                <div class="item col-xs-12 col-sm-4">
                    <div class="meta-icon"><i class="material-icons">&#xE0AF;</i></div>
                    <div class="meta-title">Type</div>
                    <div class="meta-info">SaaS Startup</div>
                </div><!--//item-->
                <div class="item col-xs-12 col-sm-4">
                    <div class="meta-icon"><i class="material-icons">&#xE80B;</i></div>
                    <div class="meta-title">website</div>
                    <div class="meta-info">companywebsite.com</div>
                </div><!--//item-->
                <div class="item col-xs-12 col-sm-4">
                    <div class="meta-icon"><i class="material-icons">&#xE7EF;</i></div>
                    <div class="meta-title">Size</div>
                    <div class="meta-info">50+ Employees</div>
                </div><!--//item-->
            </div><!--//row-->
        </div><!--//client-meta-->
        <p>Infinity is a design/development agency ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. </p>
        
        <div class="quote-container">
            <div class="inner">
                <i class="fa fa-quote-right" aria-hidden="true"></i>
                <blockquote class="quote">
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                </blockquote><!--//blockquote-->
                <div class="source">
                    <div class="profile">
                        <img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/stories/profiles/profile-1.png" alt="">
                    </div><!--//profile-->
                    <div class="name">Kevin Harrison</div>
                    <div class="title">Lead Developer at Infinity</div>
                </div><!--//source-->

            </div><!--//inner-->
        </div><!--//quote-container-->
        
        <p>Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. </p>
        
        <div class="quote-container">
            <div class="inner">
                <i class="fa fa-quote-right" aria-hidden="true"></i>
                <blockquote class="quote">
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                </blockquote><!--//blockquote-->
                <div class="source">
                    <div class="profile">
                        <img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/stories/profiles/profile-4.png" alt="">
                    </div><!--//profile-->
                    <div class="name">Rob Sanders</div>
                    <div class="title">UX Designer at Infinity</div>
                </div><!--//source-->

            </div><!--//inner-->
        </div><!--//quote-container-->
        
        <p>Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. </p>
        
        <div class="video-holder">
            <div class="embed-responsive embed-responsive-16by9">
                <iframe src="https://player.vimeo.com/video/167434033?title=0&byline=0&portrait=0" width="720" height="405" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            </div>
        </div><!--//video-holder-->
        
        <p>Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. </p>
        
    </div><!--//story-article-block-->
    
    <div class="other-stories-block">
        <div class="container">
            <h2 class="block-heading text-center">More Customer Stories</h2>
            <div class="row">
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <div class="logo"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/stories/client-logo-2.svg" alt=""></div>
                        <h3 class="heading">Shipping product at an amazing speed</h3>
                        <div class="desc">
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.
                        </div>
                        <a class="btn btn-ghost" href="#">Read Story</a>
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-xs-12 col-sm-6">
                    <div class="item-inner">
                        <div class="logo"><img src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/stories/client-logo-3.svg" alt=""></div>
                        <h3 class="heading">Lorem Ipsum Dolor Sit</h3>
                        <div class="desc">
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.
                        </div>
                        <a class="btn btn-ghost" href="#">Read Story</a>
                    </div><!--//item-inner-->
                </div><!--//item-->
            </div><!--//row-->
        </div>
    </div><!--//other-stories-->
    
        
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
    
    <!-- Video Modal -->
    <div class="modal modal-video" id="modal-video" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="videoModalLabel" class="modal-title sr-only">Video Tour</h4>
                </div>
                <div class="modal-body">
                    <div class="video-container">
                        <iframe id="vimeo-video" src="//player.vimeo.com/video/28872840?color=ffffff&amp;wmode=transparent" width="720" height="405" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div><!--//video-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->        
</body>
</html> 

