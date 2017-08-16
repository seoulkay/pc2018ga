<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="now" value="<%=new java.util.Date()%>" />
<!-- ******FOOTER****** -->
<footer class="footer">
	<div class="container">
		<!-- 약관 -->
		<div class="row">
			<div class="footer-col col-xs-6 col-sm-3">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="${pageContext.request.contextPath}/ufo/squid/stamp">한국어</a>
					</div>
				</div>
			</div>
			<div class="footer-col col-xs-6 col-sm-3">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="${pageContext.request.contextPath}/ufo/tanger/stamp">ENGLISH</a>
					</div>
				</div>
			</div>
			<div class="footer-col col-xs-6 col-sm-3">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="https://www.pc2018.ga/PIX/ULC/terms">Terms and conditions</a>
					</div>
				</div>
			</div>
			<div class="footer-col col-xs-6 col-sm-3">
				<div class="footer-col-inner">
					<div class="col-title">
						<a href="reader">BARCODE READER</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="divider"></div>
		<!-- SNS -->
		<div class="footer-bottom text-center">
			<ul class="social-media list-inline">
				<li><a href="http://www.twitter.com/share?=url=www.pc2018.ga/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="https://www.facebook.com/sharer.php?u=www.pc2018.ga/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="http://plus.google.com/share?url=www.pc2018.ga/PIX/ufo/${sessionScope.eventPara }/index"><i
						class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			</ul>
			<!-- COPYRIGHT -->
			<small class="copyright">${ufo.footer_msg }</small><br>
			<small class="copyright"><a href="https://www.pyeongchang2018.com/" target="_blank">© 2018 평창동계올림픽 베뉴 스탬프 투어</a></small>
		</div>
	</div>
	<!--//container-->
</footer>
<!--//footer-->


<!-- Login Modal -->
<div class="modal modal-auth modal-login" id="login-modal" tabindex="-1"
	role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="loginModalLabel" class="modal-title text-center">SNS 계정으로 로그인하기</h4>
			</div>
			<div class="modal-body">
				<div class="social-login text-center">
					<ul class="social-buttons list-unstyled">
						<!-- <li><a href="#" class="btn btn-social btn-google btn-block"><i
								class="fa fa-google" aria-hidden="true"></i><span
								class="btn-text">구글로 로그인하기</span></a></li> -->
						<li onClick="fbLogin('logbtn'); return false;"><span class="btn btn-social btn-facebook btn-block"><i
								class="fa fa-facebook" aria-hidden="true"></i><span
								class="btn-text">
								페이스북으로 로그인하기</span></span></li>
					</ul>
				</div>
				<!--//option-container-->
			</div>
			<!--//modal-body-->

		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->



<form id="sns_form" method="post">
<input type="hidden" id="uid_sns" name="uid_a">
<input type="hidden" id="first_name_sns" name="first_name_a">
<input type="hidden" id="last_name_sns" name="last_name_a">
<input type="hidden" id="email_sns" name="email_a">
<input type="hidden" id="sns_type_sns" name="sns_type_a">
<input type="hidden" id="access_token_sns" name="access_token_a">
<input type="hidden" id="sns_msg_sns" name="sns_msg">
<input type="hidden" id="sns_return_sns" name="sns_return">
<input type="hidden" id="sns_gid_sns" name="sns_gid">
</form>
<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/js/main.js"></script>

<!--//Page Specific JS -->
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/ufo/assets/js/home.js"></script> --%>

<script src="${pageContext.request.contextPath}/resources/ufo/assets/qrcode.min.js"></script>	
<script src="${pageContext.request.contextPath}/resources/ufo/assets/js/printThis.js"></script>	


<script>
/**
 * 페이스북 관련
 */ 
function clearLogLi(){
	 	$("#snsLogin").remove();
	    $("#snsName").remove();
	    $("#snsPic").remove();
} 
function addLogined(){
    $("#navbar-collapse ul").append('<li id="snsName" class="nav-item"><a href="#" id="UserInfo" onclick="fbLogout();">'+window.sessionStorage.getItem('userName')+'</a></li>');
    $("#navbar-collapse ul").append('<li id="snsPic" class="nav-item" style="padding-top: 3em;"><img onclick="fbLogout();" id="userPic" class="img-responsive" style="height:30px" src="https://graph.facebook.com/v2.8/'+window.sessionStorage.getItem('uid')+'/picture?type=small"></img></li>');
}
function addLogin(){
	  $("#navbar-collapse ul").append('<li id="snsLogin" class="nav-item"><a href="#" class="login-trigger" id="LoginBtn" data-toggle="modal" data-target="#login-modal">Log in</a></li>');
}

/**
 *페이스북 API
 */
window.fbAsyncInit = function() {
    FB.init({
     appId      : '1508199992578149',
     version    : 'v2.8',
 	 status: true, // check login status
     cookie: true, // enable cookies to allow the server to access thesession
     xfbml: true  // parseXFBML
});
    
//추가의 이닛 옵션들은 여기서 
FB.getLoginStatus(function(response) {
	if ($("#stampRally").length > 0){
	    makeGo();
	}
	var pick = '${gid}';
	if (response.status === 'connected' && checkLogin()) {
		var fn = window.sessionStorage.getItem('userName');
		var ln = window.sessionStorage.getItem('last_name');
		var uid = window.sessionStorage.getItem('uid');
		var email = window.sessionStorage.getItem('email');
	   $.post( "/PIX/ufo/${sessionScope.eventPara}/snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb", sns_return: "${sessionScope.eventPara}"})
	   .done(function( data ) {
	   });
	    clearLogLi();
	    addLogined(); 
	    if(!pick == ''){
	    	qrPopup(pick);
	    }
	  } else if (response.status === 'not_authorized') {
		  clearLogLi();
		  addLogin();
		  if(!pick == ''){
		    	fbLogin(pick);
		    }
	 } else {
		  clearLogLi();
		  addLogin();
		  if(!pick == ''){
			  fbLogin(pick);
		    }
	  }
}, true);   

};

 (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
 
/**
 * qr코드 바로 보여주기
 */
 function qrPopup(pick){
	var para = "#stamp_"+pick+"_modal";
	var done = false;
	while(!done){
		if($(para).length > 0){
			$(para).modal('show');
			done = true;
		}
		setTimeout(function(){
			  console.log('waiting...');
			}, 1000);
	}
}

/**
 * 
 */
function fbLogin(para){
  FB.login(function(response) {
	    if (response.authResponse) {
	     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
	   		var fn = response.first_name;
			var ln = response.last_name;
			var uid = response.id;
			var email = response.email;
			
		   window.sessionStorage.setItem('userName', fn);
		   window.sessionStorage.setItem('uid', uid);
		   window.sessionStorage.setItem('email', email);
		   window.sessionStorage.setItem('first_name', fn);
		   window.sessionStorage.setItem('last_name', ln);
		   $.post( "/PIX/ufo/${sessionScope.eventPara}/snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb", sns_return: "${sessionScope.eventPara}"})
		   .done(function( data ) {
		   });
    	 	clearLogLi();
 	   		addLogined();
	 	   	if ($("#stampRally").length > 0){
	 		    makeGo();
	 		}
       if(para == 'go'){
    	   stampRally();
       }else if(para == 'qr'){
    	   qrRally();
       }else if(para == 'go_re'){
    	   top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/result/go/"+window.sessionStorage.getItem('uid');
       }else if(para == 'qr_re'){
    	   top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/result/qr/"+window.sessionStorage.getItem('uid');
       }else if(para == 'qr_list'){
    	   top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/catch/qr/${gid}";
       }else if(para =="survey"){
    	   surveyInit();
       }else if(para =="logbtn"){
    	 //페북으로 로그인 하기로 온다.
      	 $("#login-modal").modal('hide');
      	location.reload();
       }else{
    	   qrPopup(para);
       }
     });
    } else {
     console.log('User cancelled login or did not fully authorize.');
     //location.reload();
    }
	}, {scope: 'email', return_scope: true});
}
  
  
/**
 * UFO 로그인 체크
*/
function checkLogin(){
	if(window.sessionStorage.getItem('userName') === null || window.sessionStorage.getItem('uid') === null || window.sessionStorage.getItem('userName') === 'undefined' || window.sessionStorage.getItem('uid') === 'undefined'){
		return false;
	}else{
		return true;
	}
}

/**
 *페북 로그아웃
 */
function fbLogout(){
	 FB.logout(function(response) {
	   // Person is now logged out
	  $("#snsName").remove();
	  $("#snsPic").remove();
	  window.sessionStorage.clear();
	  location.reload();
	});
}

/**
   * 뉴스레터 보내기
 */
function sendNewsLetterEmail(){
	  var email = $("#semail").val();
  var para = '${sessionScope.eventPara}';
  $.post( "newsletter", { news_letter_email: email, para:para})
   .done(function( data ) {
   });
  alert("구독해주셔서 감사합니다.");
}

/**
 * 결과물 모달 띄우기
*/
function getUfo(param){
	if(checkLogin()){
	var uid = window.sessionStorage.getItem('uid');
	var para = '${sessionScope.eventPara}';
	if(param == "ve"){
		$.post( "/PIX/ufogo/get/survey/"+para+"/"+uid).done(function( data ) {
			var result = JSON.parse(JSON.stringify(data));
			$('#surveyResult').modal({backdrop: 'static',keyboard: false}); 
			$('#surveyResult').modal('show');
		});
	}else{
// 		$.post( "/PIX/ufogo/get/"+para+"/"+uid)
// 	       .done(function( data ) {
// 	        var go = JSON.parse(JSON.stringify(data));
// 	        for(var i = 0; i < go.length; i++){
// 	        	if(go[i].ufo_go_type == 'qr'){
	        	  	//중복을 막는 코드가 필요함 
// 	        	  	$('#qr_yes_'+go[i].ufo_gid).modal({backdrop: 'static',keyboard: false}); 
// 	        		$('#qr_yes_'+go[i].ufo_gid).show();
// 	        	}else if(go[i].ufo_go_type == 'go'){
// 	        		$('#stamp_yes_'+go[i].ufo_gid).modal({backdrop: 'static',keyboard: false}); 
// 	        		$('#stamp_yes_'+go[i].ufo_gid).show();
// 	        	}
// 	        }
	        //안되면 여기다 넣으면 된다.
// 	       });

	        if(param == 'qr' && $("#qrNumber").val() != ''){
					//보여줘 모달을 큐알 넘버로
					var para = $("#qrNumber").val();
					para = $.trim(para);
					para = "#stamp_"+para+"_modal";
					if($(para).length > 0){
						$(para).modal({backdrop: 'static',keyboard: false}); 
						$(para).modal('show');
					}else{
						alert("잘못된 큐알 코드 입니다.");
					}
		    }else if(param == 'go'){
		    	$('#stampRally').modal({backdrop: 'static',keyboard: false}); 
		    	$('#stampRally').modal('show');
		    }else if(param == 'qr'){
		    	$('#qrRallyList').modal({backdrop: 'static',keyboard: false}); 
		    	$('#qrRallyList').modal('show');
		    }else{
				
		    }
	 	}
	
	}else{
		fbLogin(param);
	}
}



/**
 * 플리즈 웨이트 하이드
 */
function showPleaseWait() {
    var modalLoading = '<div class="modal" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false role="dialog">\
    <div class="modal-dialog">\
        <div class="modal-content">\
            <div class="modal-header">\
                <h3 class="modal-title" style="font-family:football;" align="center">잠시만 기다려 주세요.</h3>\
            </div>\
            <div class="modal-body">\
                <div class="progress">\
                  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"\
                  aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; height: 40px">\
                  </div>\
                </div>\
            </div>\
        </div>\
    </div>\
</div>';
$(document.body).append(modalLoading);
$("#pleaseWaitDialog").modal("show");
}

/**
 * 플리즈 웨이트 쇼 
 */
function hidePleaseWait() {
    $("#pleaseWaitDialog").modal("hide");
}

/**
 * 완료 모달
 */
function showDone(para, type) {
	hidePleaseWait();
    var tt = type;
	var modalLoading = '<div class="modal" id="showDone" data-backdrop="static" data-keyboard="false role="dialog">\
    <div class="modal-dialog">\
        <div class="modal-content">\
            <div class="modal-header">\
                <h3 class="modal-title" style="font-family:football;" align="center"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> ' + para.toString()+'</h3>\
            </div>\
            <div class="modal-body">\
                <div class="progress">\
                  <div class="progress-bar progress-bar-success active" role="progressbar"\
                  aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; height: 40px">\
                  </div>\
                </div>\
            </div>\
            <div class="modal-footer">\
    		<button type="button" class="btn btn-default" data-dismiss="modal" onClick="redirectGallery(\''+tt+'\')">갤러리</button>\
    		<button type="button" class="btn btn-default" data-dismiss="modal" onClick="redirectIndex(\''+tt+'\')">확인</button>\
    	  	</div>\
        </div>\
    </div>\
</div>';
$(document.body).append(modalLoading);
$("#showDone").modal("show");
}

/**
 * 갤러리로 리다렉
 */
function redirectGallery(tt){
	if(window.sessionStorage.getItem('uid') == 'undefined' || window.sessionStorage.getItem('uid') == null){
			fbLogin('go_re');
	}else{
		   top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/result/"+tt+"/"+window.sessionStorage.getItem('uid');
		
	}
}

/**
 * 홈피로 리다렉
 */
function redirectIndex(tt){
	if(tt === 'go'){
		top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/stamp";
	}else if(tt === 've'){
		top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/stories";
	}else{
		   top.location.href="https://www.pc2018.ga/PIX/ufo/${sessionScope.eventPara}/index";
	}
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