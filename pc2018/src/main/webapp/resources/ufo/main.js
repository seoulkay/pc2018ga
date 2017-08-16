
  /**
   * 
   */
  function fbLogin(para){
  FB.login(function(response) {
	    if (response.authResponse) {
	     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
    	// Save data to sessionStorage
    	
    	var fn = response.first_name;
    	var ln = response.last_name;
    	var uid = response.id;
    	var email = response.email;
    	
       window.sessionStorage.setItem('userName', fn);
       window.sessionStorage.setItem('uid', uid);
       window.sessionStorage.setItem('email', email);
       window.sessionStorage.setItem('first_name', fn);
       window.sessionStorage.setItem('last_name', ln);
       
    		
       $.post( "snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb"})
       .done(function( data ) {
         	//alert( "Data Loaded: " + data );
       });
       		//location.reload();
       if(para == 'go'){
    	   stampRally();
       }else if(para == 'qr'){
    	   qrRally();
       }else{
    	   top.location.href="index";
       }       
     });
    } else {
     console.log('User cancelled login or did not fully authorize.');
     location.reload();
    }
}, {scope: 'email,user_likes,publish_actions', return_scope: true});
  }
  
  /**
   * 
   */
  function surveyPostByFb(){
	  var fn = window.sessionStorage.getItem('last_name')
	FB.login(function(response) {
    if (response.authResponse) {
     FB.api('/me', {fields: 'id, first_name, last_name, email'}, function(response) {
    	// Save data to sessionStorage
    	var fn = response.first_name;
    	var ln = response.last_name;
    	var uid = response.id;
    	var email = response.email;
    	
       window.sessionStorage.setItem('userName', fn);
       window.sessionStorage.setItem('uid', uid);
       window.sessionStorage.setItem('email', email);
       window.sessionStorage.setItem('first_name', fn);
       window.sessionStorage.setItem('last_name', ln);
       
    		
       $.post( "snsLog/fb", { first_name: fn, last_name: ln ,uid: uid, email: email, sns_type:"fb"})
       .done(function( data ) {
        //alert( "Data Loaded: " + data );
       });
		//location.reload();
     });
    } else {
     console.log('User cancelled login or did not fully authorize.');
     location.reload();
    }
}, {scope: 'email,user_likes,publish_actions', return_scope: true});
  
  FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {
	  $('#modalTrigger').click();
		 
	  } else if (response.status === 'not_authorized') {
		  fbLogin('index');
		  surveyPostByFb();
	  } else {
		  fbLogin('index');
			  surveyPostByFb();

		  }
	  }, true);
  }
  
  /**
   * 
   */
  function surveyPostSubmit(){
	  
	  var q1 = $('input[name=q1_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
  var q2 = $('input[name=q2_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
  var q3 = $('input[name=q3_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
  var q4 = $('input[name=q4_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
  var q5 = $('input[name=q5_a]:checked', '#surveyForm').attr("answer").replace(/\s/g,'');
  var q6 = $('input[name=q6_a]', '#surveyForm').val();
  
  var fl = window.sessionStorage.getItem('first_name');
  var ln = window.sessionStorage.getItem('last_name');
  
  var msg = q6+" https://www.pc2018.ga/PIX/ufo/post/"+fl+"_"+ln+" #"+q1+" #"+q2+" #"+q3+" #"+q4+" #"+q5;
  
  fbPost(msg, "fb_survey", "survey");
  }
  
  /**
   * 
   */
  function fbLogout(){
	  FB.logout(function(response) {
		   // Person is now logged out
	   console.log(response);
	   $("#snsName").remove();
	   $("#snsPic").remove();
		window.sessionStorage.clear();
		location.reload();
		});
  }
  
  /**
   * 
   */
  function fbPost(msg, type, gid){
    	FB.getLoginStatus(function(response) {
	    	 
	    	if (response.status === 'connected') {
    		var body = msg;
			  FB.api('/me/feed', 'post', { message: body }, function(response) {
			    if (!response || response.error) {
			     console.log('Did not connected to facebook server : ufo')
			    } else {
			      //alert('Post ID: ' + response.id);
			      $( "#sns_return" ).val(response.id);
			      $( "#first_name_a" ).val(window.sessionStorage.getItem('first_name'));
				  $( "#last_name_a" ).val(window.sessionStorage.getItem('last_name'));
				  $( "#uid_a" ).val(window.sessionStorage.getItem('uid'));
				  $( "#access_token_a" ).val(window.sessionStorage.getItem('accessToken'));
				  $( "#sns_type_a" ).val(type);
				  $( "#sns_msg" ).val(msg);
				  $( "#sns_gid" ).val(gid);
				  
			      $("#surveyForm").submit();
			      console.log("감사합니다.");
			      //location.reload();
			    }
			  });    		
    	} else if (response.status === 'not_authorized') {
    		console.log('페이스북 로그인 되어 있지 않습니다.');
    	} else {
    		console.log('연결에 문제가 있습니다.');
	    		}
	    	}, true); 
    }
 /**
   * 
 */
function sendNewsLetterEmail(){
	  var email = $("#semail").val();
  var para = '${sessionScope.eventPara}';
  $.post( "newsletter", { news_letter_email: email, para:para})
   .done(function( data ) {
	  //아래코드 잘 작동이 된다 성공하면 1 옴
 //alert( "Data Loaded: " + data );
   });
  alert("구독해주셔서 감사합니다.");
  }
	
var iconBase = 'https://www.pc2018.ga/PIX/resources/ufo/assets/images/icons/';
var icons = {
  me:{
	  icon: iconBase + 'me_icon01.png'
  },
  ufoOn:{
	  icon: iconBase + 'UFO_ON.png'
  },
  ufoOff:{
	  icon: iconBase +'UFO_OFF.png'
  }
};
        
	var neighborhoods = [];
    var markers = [];
	var map;

 /**
   * 
 */
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 18,
	    center: {lat: 37.75, lng: 128.87}
	  });
	makeGo();
}

	
/**
 * 
*/	
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
}
	
	
/**
 * 
*/	
function drop() {
  clearMarkers();
  for (var i = 0; i < neighborhoods.length; i++) {
    addMarkerWithTimeout(neighborhoods[i], i * 200);
  }
}
/**
 * 
*/
	

function addMarkerWithTimeout(position, timeout) {
  window.setTimeout(function() {
  var infowindow = new google.maps.InfoWindow({
	    content: position.content
	  });
  
  var pos = {
          lat: position.lat,
          lng: position.lng
        };
  
 var marker = new google.maps.Marker({
      position: pos,
      map: map,
      animation: google.maps.Animation.DROP,
      icon: icons[position.type].icon
 });
 marker.addListener('click', function() {
	    infowindow.open(map, marker);
  });
    markers.push(marker);
	}, timeout);
}


/**
 * 
*/	
function clearMarkers() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(null);
  }
  markers = [];
}
	
/**
 * 
*/	
function makeGo(){
	// Try HTML5 geolocation. 
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
          type: "me",
          content:'<h1 id="firstHeading" class="firstHeading">나</h1>'
        };
        
        $.post( "/PIX/get/ufogo/${sessionScope.eventPara}/")
	       .done(function( data ) {
	         var go = JSON.parse(JSON.stringify(data));		         
	         
	         for(var i = 0; i < go.length; i++){
	        	 var target = {};
	        	 target.lat = parseFloat((Number(go[i].go_lat)).toFixed(4));
	        	 target.lng = parseFloat((Number(go[i].go_alt)).toFixed(4));
	        	 target.content = '<h1 id="firstHeading" class="firstHeading">'+go[i].go_content+'</h1>';
	        	 if((Math.pow(target.lat - pos.lat, 2) + Math.pow(target.lng - pos.lng, 2)) < Math.pow(0.0022, 2) ){
	        		 target.type = "ufoOn";
	        		 $("#stamp_back_"+go[i].ufo_gid).hide();
	        		 $("#stamp_"+go[i].ufo_gid).show();
	        	 }else{
	        		 target.type = "ufoOff";
	        	 }
		         neighborhoods.push(target);
	         }
	         
	         neighborhoods.push(pos);
	         map.setCenter(pos);
	         drop();
	    });
      }, function() {
    	var infoWindow = new google.maps.InfoWindow({map: map});
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
    	var infoWindow = new google.maps.InfoWindow({map: map});
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
	}
}
	
	
/**
 * 
*/	
function refreshGo(){
	neighborhoods = [];
	makeGo();
	drop();
}
			
/**
 * 
*/			
function stampRally(){
	if(checkLogin()){
		getUfo('go');
	}else{
		fbLogin('go');
	}
}

/**
 * 
*/
function qrRally(){
	if(checkLogin()){
		showPleaseWait();
  $( "#first_name_go" ).val(window.sessionStorage.getItem('first_name'));
  $( "#last_name_go" ).val(window.sessionStorage.getItem('last_name'));
  $( "#uid_go" ).val(window.sessionStorage.getItem('uid'));
  $( "#email_go" ).val(window.sessionStorage.getItem('email'));		  
  
//$("#stampForm").submit();

 	if($("#type_go").val() == '' || $("#gid_go").val() == '' || $("#para").val() == ''){
 		if($("#qrNumber").val() != ''){
 			$("#gid_go").val($("#qrNumber").val());
 			$("#type_go").val("qr");
 			$("#para").val('${sessionScope.eventPara}');
 			var form = new FormData($("#stampForm")[0]);
   	    	  $.ajax({
   	              url: '/PIX/ufogo/insert',
   	              method: "POST",
   	              dataType: 'json',
   	              data: form,
   	              processData: false,
   	              contentType: false,
   	              success: function(result){
   	            	  console.log("처리되었습니다. : "+result);
   	            	  var msg = '${ufo.title} 의 큐알코드랠리에 참여했네요!';
   	            	  fbPost(msg, "fb_qr", $("#qrNumber").val());
   	            	  //location.reload();
   	              },
   	              error: function(er){}
      				});
   	    	  
 		}else{
 			alert("큐알코드를 넣어주세요.");
 		}
 	}else{
 		showPleaseWait();
 		var form = new FormData($("#stampForm")[0]);
    	  $.ajax({
              url: '/PIX/ufogo/insert',
              method: "POST",
              dataType: 'json',
              data: form,
              processData: false,
              contentType: false,
              success: function(result){
            	console.log("처리되었습니다. : "+result);
           		var msg = '${ufo.title} 의 큐알코드랠리에 참여했네요!';
        	  	fbPost(msg, "fb_qr", $("#qrNumber").val());
            	//location.reload();
              },
              error: function(er){}
  				});
 	}
	 
 	
	}else{
		fbLogin('qr');
	}
}


/**
 * 
*/
function stampPostSubmit(para){
	if(checkLogin()){
		showPleaseWait();
		  $( "#first_name_go"+para ).val(window.sessionStorage.getItem('first_name'));
		  $( "#last_name_go"+para ).val(window.sessionStorage.getItem('last_name'));
		  $( "#uid_go"+para ).val(window.sessionStorage.getItem('uid'));
		  $( "#email_go"+para ).val(window.sessionStorage.getItem('email'));		  
		  var form = new FormData($("#stampForm"+para)[0]);
	      $.ajax({
	              url: '/PIX/ufogo/insert',
	              method: "POST",
	              dataType: 'json',
	              data: form,
	              processData: false,
	              contentType: false,
	              success: function(result){
	            	  console.log("처리되었습니다. : "+result);
	            	  var msg = "${ufo.title} 스탬프렐리에 참여하셨습니다! https://www.pc2018.ga/PIX/get/"+window.sessionStorage.getItem('uid')+"/"+para;
   	            	  fbPost(msg, "fb_go", para);
	            	  //location.reload();
	              },
	              error: function(er){}
	      });
	}else{
		fbLogin('qr');
	}
	
}
	

/**
 * 
*/
function checkLogin(){
	if(window.sessionStorage.getItem('first_name') == null || window.sessionStorage.getItem('last_name') == null){
		return false;
	}else{
		return true;	
	}
}

// 		<c:if test="${fn:contains(sessionScope.eventMenu, 'qr')}">
// 		// $('#qrcode').qrcode({width: 130,height: 130, render	: "table",
// 		// 	text:'https://www.facebook.com/${vo.sns_return }'});
// 		var qrcode = new QRCode("qrcode", {
// 		    text: "https://www.pc2018.ga/",
// 		    width: 300,
// 		    height: 300,
// 		    colorDark : "#000000",
// 		    colorLight : "#ffffff",
// 		    correctLevel : QRCode.CorrectLevel.H
// 		});
// 		</c:if>

/**
 * 
*/
function getUfo(param){
	if(checkLogin()){
	var uid = window.sessionStorage.getItem('uid');
	var para = '${sessionScope.eventPara}';
	$.post( "/PIX/ufogo/get/"+para+"/"+uid)
       .done(function( data ) {
        //alert( "Data Loaded: " + JSON.parse(JSON.stringify(data))[0].last_name );
        
        var go = JSON.parse(JSON.stringify(data));
        
        $("#qrList").empty();
        
        for(var i = 0; i < go.length; i++){
        	if(go[i].ufo_go_type == 'qr'){
        	  	//중복을 막는 코드가 필요함 
        		$("#qrList").append('<div class="col-xs-3" style="position:relative;"><p style="position:absolute; top:40%; left:40%;">'+go[i].go_content+'</p><img class="img-responsive" style=" opacity: 0.2;" src="https://www.pc2018.ga/image/stamp-01.png"></div>');
        	}else if(go[i].ufo_go_type == 'go'){
        		$('#stamp_yes_'+go[i].ufo_gid).show();
        	}
        }
        
        if(param == 'qr'){
        	$('#qrRallyList').modal('show');
        }else if(param == 'go'){
        	$('#stampRally').modal('show');
        }
        
       });
	
	}else{
		fbLogin(param);
		//alert("로그인을 해주세요.");
	}
}

/**
 * Displays overlay with "Please wait" text. Based on bootstrap modal. Contains animated progress bar.
 */
function showPleaseWait() {
    var modalLoading = '<div class="modal" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false role="dialog">\
    <div class="modal-dialog">\
        <div class="modal-content">\
            <div class="modal-header">\
                <h4 class="modal-title">잠시만 기대려 주세요.</h4>\
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
 * Hides "Please wait" overlay. See function showPleaseWait().
 */
function hidePleaseWait() {
    $("#pleaseWaitDialog").modal("hide");
}