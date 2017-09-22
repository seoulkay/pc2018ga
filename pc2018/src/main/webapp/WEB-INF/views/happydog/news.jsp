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
            <div class="hero-holder" style="background: #35373C url('${pageContext.request.contextPath}/resources/ufo/assets/images/hero/04-min.jpg') no-repeat 50% 50%;"></div>
            <div class="hero-mask-gradient"></div>
        </div><!--//hero-wrapper--> 
        <div class="container heading-content">                
            <h2 class="headline">행복하개 소식</h2>
            <div class="intro">행복하개 소식 소제목입니다</div>
            <div class="actions">
                 <a class="scrollto-no-offset" href="#posts-block">행복하개 소식 보기</a>
                 <a class="scrollto-no-offset" href="#posts-block"><img src="${pageContext.request.contextPath}/resources/ufo/assets/images/arrow-icon.svg" alt=""></a>
            </div><!--//actions-->
        </div><!--//container-->
    </section><!--//heading-section-->
    
    <!-- 게시판 -->
    <div class="posts-block text-center" id="posts-block" style="background-color:#f5f5f5;">
        <div class="container">
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane tab-pane-1 active" id="tab-1">
                    <div class="post post-1">
                        <h3 class="post-title"><a href="blog-single.html">행복하개 오픈 기념 이벤트</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-1.png" alt="">
                                    <div class="author-name">행복하개</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 day ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-1.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">행복하개 홈페이지 개설 기념 이벤트를 실시합니다...<a href="blog-single.html" class="readmore">Read More</a></div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-1-->
                    <div class="post post-2">
                        <h3 class="post-title"><a href="blog-single.html">우리 강아지 위한 공간 만들어볼까</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-2.png" alt=""> 
                                    <div class="author-name">한국일보</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    3 days ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-2.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">우리 강아지 낮잠 잘 시간 어린 아이를 키워본 경험이 있다면 낮잠이 얼마나 중요한지 잘 안다. 하루 일과... 계단 바로 밑 부분에 애완견 숙면을 위해 은은한 조명을 설치할 수도 있고 벽면에 강아지가 좋아할 말한..<a href="blog-single.html" class="readmore">Read More</a></div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-2-->
                    <div class="post post-3">
                        <h3 class="post-title"><a href="blog-single.html">강아지 '패션왕' 선발합니다</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-3.png" alt="">
                                    <div class="author-name">행복하개</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    1 week ago
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-3.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">축제 참가자들을 대상으로 '강아지 대통령'으로 알려진 이웅종 반려견 행동교정사 등 전문가가 반려견 행동과 건강 상담을 해준다. 무료 애견미용, 사료상담 코너도 있다. 반려견 문화축제는 서초구가 이달 16∼24일..<a href="blog-single.html" class="readmore">Read More</a></div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-3-->
                    <div class="post post-4">
                        <h3 class="post-title"><a href="blog-single.html">강아지 '패션왕' 선발합니다</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-4.png" alt="">
                                    <div class="author-name">행복하개</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    24 Sep
                                </div><!--//time-stamp-->
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-4.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">축제 참가자들을 대상으로 '강아지 대통령'으로 알려진 이웅종 반려견 행동교정사 등 전문가가 반려견 행동과 건강 상담을 해준다. 무료 애견미용, 사료상담 코너도 있다. 반려견 문화축제는 서초구가 이달 16∼24일..<a href="blog-single.html" class="readmore">Read More</a></div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-4-->
                    
                    <div class="pagination-container text-center">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">«</a></li>
                            <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">»</a></li>
                        </ul><!--//pagination-->
                    </div>
                    
                </div><!--//tab-pane-1-->
                
                <div role="tabpanel" class="tab-pane tab-pane-4" id="tab-4">
                    
                    <div class="post post-8">
                        <h3 class="post-title"><a href="blog-single.html">UI Kit for Designers</a></h3>
                        <div class="post-content">
                            <div class="meta">
                                <div class="author">
                                    <img class="author-profile" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/authors/author-8.png" alt="">
                                    <div class="author-name">By Betty Diaz</div>
                                </div><!--//author-->
                                <div class="time-stamp">
                                    23 July
                                </div><!--//time-stamp-->
                                
                            </div><!--//meta-->
                            <div class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/ufo/assets/images/blog/blog-post-thumb-8.jpg" alt=""></a>
                            </div>
                            <div class="post-intro">
                                Curabitur vitae elit sit amet risus imperdiet ornare vitae sed lacus. Etiam tellus felis, tempus a nisi ac, commodo consectetur nisl. In tempus commodo facilisis. Aenean at pretium purus. Pellentesque congue leo et lacus maximus, consequat sollicitudin... <a href="blog-single.html" class="readmore">Read More</a>
                            </div><!--//post-intro-->
                        </div><!--//post-content-->
                    </div><!--//post-8-->
                    
                </div><!--//tab-pane-4-->
                
            </div><!--//tab-content-->
        </div><!--//container-->
    </div><!--//posts-block-->    
       
    <jsp:include page="footer.jsp" flush="true">
		<jsp:param name="param" value="value1" />
	</jsp:include>
</body>
</html> 

