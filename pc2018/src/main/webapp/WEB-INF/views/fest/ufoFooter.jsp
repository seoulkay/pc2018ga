<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%--         <script src="${pageContext.request.contextPath}/resources/pix/js/tweetie.min.js" type="text/javascript"></script> --%>
        <!--popup js-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jquery.backstretch.min.js" type="text/javascript"></script>
        <!--valid / working contact form js
          <script src="${pageContext.request.contextPath}/resources/pix/js/contact_me.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/pix/js/jqBootstrapValidation.js" type="text/javascript"></script>
        <!--customizable plugin edit according to your needs-->
        <script src="${pageContext.request.contextPath}/resources/pix/js/custom.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/ufo/UfoCommon.js" type="text/javascript"></script>

		<script src="//cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
        
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
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>