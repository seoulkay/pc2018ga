<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>2017 강릉단오제</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="https://www.pc2018.ga/image/favicon2.ico">  
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,300italic,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet" type='text/css'>
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

<body class="blog-single-page">   
    <!-- ******HEADER****** -->
	<jsp:include page="header.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//header-->
	<!--//header-->        
    
    <section class="heading-section section section-on-bg">
        <div class="hero-wrapper">
            <div class="hero-holder"></div>
            <div class="hero-mask-solid"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">         
            <div class="back-to-main">
                <a href="blog"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> 목록으로 돌아가기</a>
            </div><!--//back-to-main-->       
            <h2 class="headline">${notice.title  }</h2>
            <div class="meta">
                <div class="author">
<img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/dano_admin01.png" alt="">
                    <div class="author-name">${notice.createdBy}</div>
                </div>
                <!--//author-->
                <div class="time-stamp">${notice.date}</div>
                <!--//time-stamp-->
            </div><!--//meta-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <div class="post-single-block" id="post-single-block">
        
        <div class="post-container">
        							<div>
									<c:if test="${notice.photo_file ne null}">
                                     	<img src="https://www.pc2018.ga/image/${notice.photo_file}" class="img-responsive" alt="" style="width:750px; height: 340px">
                                     </c:if>
                                     </div> 
            ${notice.content }
        </div><!--//post-container-->
        <%-- <div class="author-container">
            <div class="author">
                <img class="author-profile" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-3.png" alt="">
            </div><!--//author-->
            <div class="intro">
                <h4 class="author-name">Author: David Chung, Full-stack Developer at Startup Kit</h4>
                <p>Hello, lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                <ul class="social list-inline">
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-medium" aria-hidden="true"></i></a></li>
                </ul>
            </div><!--//intro-->
            
        </div><!--//author-container--> --%>
        
    </div><!--//post-single-block-->
    
    <div class="related-posts text-center">
        <div class="container">
             <h3 class="title">You May Also Like:</h3>
             <div class="row">
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-3.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-5.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
                 <div class="item col-xs-12 col-sm-4 ">
                     <div class="inner">
                         <div class="figure-holder">
                             <a href="#"><img class="img-responsive" src=
"${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-6.jpg" alt=""></a>
                         </div>
                         <div class="content">
                             <h3 class="title"><a href="#">Lorem Ipsum Dolor Sit</a></h3>
                             <div class="intro">
                                 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget...
                             </div><!--//intro-->
                         </div><!--//content-->
                     </div><!--//inner-->
                 </div><!--//item-->
             </div><!--//row-->
        </div><!--//container-->
    </div><!--//related-posts-->
    
    <div class="blog-signup-block">
        <div class="container text-center">
            <h3 class="block-heading">강릉단오제 뉴스레터 구독하기</h3>
            <div class="block-intro">강릉단오제의 소식을 보내드립니다.</div>
            <div class="subscribe-form form-inline" novalidate="novalidate">
                <div class="form-group">
                    <label class="sr-only" for="semail">Your Email</label>
                    <input type="text" id="semail"  type="email" class="form-control email-field" placeholder="이메일 주소를 입력하세요." name="email" required="" aria-required="true">
                    <button class="btn btn-primary" onClick="sendNewsLetterEmail();">구독하기</button>  
                </div>                              
            </div>
        </div><!--//container-->
    </div><!--//blog-signup-block-->

           
    <!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include><!--//footer-->
</body>
</html> 

