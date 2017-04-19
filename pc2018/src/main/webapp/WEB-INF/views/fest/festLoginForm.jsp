<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>UFO</title>

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

        <section id="navigation">
            <div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        
                        <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/pix/img/symbol.png" class="img-responsive" width="60em"></a>
                    </div>
                    <div class="navbar-collapse collapse">

                        

                    </div><!--/.nav-collapse -->
                </div><!--/.container -->
            </div><!--navbar-default-->
        </section><!--navigation section end here-->
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                    <div class="col-sm-4">
                    </div>
                    
                    <div class="col-sm-4">
	                    <form action="festLoginAction" method="POST" enctype="multipart/form-data">
		                    <div class="text-center">
		                    <span style="color:orange; font-size: 60px; " >Login</span><br><br>
		                    <span style="color:orange; font-size: 60px; " class="glyphicon glyphicon-user" aria-hidden="true"></span><br><br>
							</div>
							<input type="text" name="id" class="form-control" placeholder="E-mail"><br>
							<input type="password" name="password" class="form-control"  placeholder="Password"><br>
							<input type="checkbox" id="idSaveCheck"> 아이디 기억하기
							<span style="float: right;"><a href="festPassFinder">비밀번호 찾기</a></span>
							<br>
							<input type="submit" value="로그인" class="form-control">
							<br><br><br><br><br><br><br><br><br><br><br><br><br>
						</form>
					</div>		
					
                    </div>  
                </div>
                
                
               
           </div><!--blog-post col-->          
        </section><!--blog wrapper-->
        
   <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 margin-btm-30">
                        <div class="footer-col">
                            <h3 class="widget-title">
                               UFO79?
                            </h3>
                            <p>
                            UFO는 스탬프랠리와 설문조사를 솔루션을 통해 축제 방문객의 참여를 유도하고 피드백을 받을 수 있는 통합형 축제관리 서비스를 제공합니다.
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
                                웹과 모바일 지원
                            </h3>
                            <p>UFO는 웹사이트와 모바일사이트를 통합형으로 구축하여 사이트 관리에 최적화되어 있습니다. UFO는 모바일 앱을 다운로드 하는 번거로움이 없습니다.</p>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="footer-col">
                            <h3 class="widget-title">
                                바이럴 마케팅 솔루션
                            </h3>
                            <p>
                            	이벤트 내용을 자동으로 SNS에 업데이트 해주는 바이럴마케팅 지원
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
                <li><a href="#">Sign In</a></li>
            </ul>
            <div class="copyright text-center">
                Copyright &copy; 2017 UFO
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
        <!-- >script src="${pageContext.request.contextPath}/resources/pix/js/contact_me.js" type="text/javascript"></script-->
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
        <script>
$(document).ready(function(){
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var userInputId = getCookie("userInputId");
    $("input[name='id']").val(userInputId); 
     
    if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>
    </body>
</html>