<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--><html lang="en"><!--<![endif]-->

<head>
    
    <!-- Your Basic Site Informations -->
	<title>TIS</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="ATOS Trip information system">
	<meta name="author" content="Pyeognchang team">
    
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,700" rel="stylesheet" type="text/css">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>   
    
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/tis/css/style.css">
    
 
    <!--<link rel="stylesheet" href="css/colors/pink/color.css">-->
    <!--<link rel="stylesheet" href="css/colors/yellow/color.css">-->
    
    <!--[if lt IE 9]>
    	<script src="js/html5.js"></script>
        <script src="js/respond.min.js"></script>
	<![endif]-->
    
    <!--[if lt IE 8]>
    	<link rel="stylesheet" href="css/ie-older.css">
    <![endif]-->
    
<%--     <noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ulc/css/no-js.css"></noscript> --%>
    
    <!-- Favicons -->
	<link rel="shortcut icon" href="https://www.ufo79.com/image/favicon.ico">
</head>
<body>    
<nav class="navbar navbar-default" style="height: 6em ; background-size: 2000px 7em; background-image: url('${pageContext.request.contextPath}/resources/tis/image/headerGeneric.png');border-radius:0; border:0">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
<!--     <div class="navbar-header" >  -->
<!--       <a class="navbar-brand" href="#" style="padding-top: 2em;color: WHITE"> -->
      	<h4 class="navbar-brand" style="color: WHITE; font-size: 1.5em; padding-top: 1.5em;">Trip Info System <Strong>ADMIN</Strong> ${sessionScope.user_name}</h4>
<!--       </a> -->

     <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/resources/tis/image/Atos.svg" style="max-height: 2em; max-width:15%;margin-top: 2em;margin-right: 1em; float:right;"  >
    </div>
   
    <!-- Collect the nav links, forms, and other content for toggling -->
<!--     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
<!--     </div>/.navbar-collapse -->
<!--   </div> -->

</nav>	

<div class="container">
<div class="row">
		<ul class="nav nav-tabs nav-justified">
		  <li role="presentation"><a href="infoAdmin">Profiles</a></li>
		  <li role="presentation" class="active"><a href="infoTrip">Trips</a></li>
		  <li role="presentation"><a href="infoShift">Shifts</a></li>
		  <li role="presentation"><a href="infoTripcodes">Trip-codes</a></li>
		</ul>
</div>
<div style="height: 2em"></div>
	<div class="row">	
	<h3>Trips form</h3>
	<h4>Profile</h4>
	</div>
	<div class="row">
	<table class="table table-bordered" id="profile_tbl">
		<tr>
			<td class="info">
			Name
			</td>
			<td>
			
			<select id="employee_id_sel" name="employee_id" class="form-control" disabled>
			<c:forEach items="${temp }" var="ele">
				<option value="${ele.id}"
				<c:if test="${tripinfo.emp_id eq ele.id}">selected</c:if>
				>${ele.first_name } ${ele.last_name }</option>
			</c:forEach>
			</select>
			</td>
		</tr>
	</table>
	</div>
	<div class="row">	
	<h4>Event</h4>
	</div>
	<div class="row">
	<table class="table table-bordered" id="event_tbl">
		<tr>
			<td class="info">
			Event
			</td>
			<td>
			<select id="event_id_sel" name="event_id" class="form-control" disabled>
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}"
				<c:if test="${tripinfo.event_id eq ele.id}">selected</c:if>
				>${ele.event_name}</option>
			</c:forEach>
			</select>
			</td>
		</tr>
	</table>
	</div>
	<div class="row">	
	<h4>Accommodation <button class="btn" disabled="disabled">+</button></h4>
	</div>
	<div class="row">
	<form:form method="post" action="TripAccForm" modelAttribute="TisAccom" id="TripAccForm">
	<input type="hidden" name="employee_id" value="${tripinfo.emp_id }"> 
	<input type="hidden" name="event_id" value="${tripinfo.event_id }"> 
	<input type="hidden" name="emp_id" value="${tripinfo.emp_id }">
	<table class="table table-bordered" id="acc_tbl">
		<tr>
			<td class="info">
			Acc. Name
			</td>
			<td>
			<select id="acc_id_sel" name="venue_id" class="form-control">
			<option value="0">Select one</option>
			<c:forEach items="${thv }" var="ele">
				<option value="${ele.id}"
				<c:if test="${tacc.venue_id eq ele.id}">selected</c:if>
				>${ele.venue_name}</option>
			</c:forEach>
			</select>
			</td>
		</tr>
<!-- 		<tr><td class="info">Address</td><td></td></tr> -->
		<tr><td class="info">Check-in</td><td><input type="date" class="form-control" value="<fmt:formatDate value='${tacc.acc_begin }' pattern = 'yyyy-MM-dd' />" name="acc_begin"></td></tr>
		<tr><td class="info">Check-out</td><td><input type="date" class="form-control" value="<fmt:formatDate value='${tacc.acc_end }' pattern = 'yyyy-MM-dd' />" name="acc_end"></td></tr>
		<tr><td class="info">Night(s)</td><td></td></tr>
		<tr><td class="info">Room No.</td><td><input type="text" class="form-control" value="${tacc.acc_room }" name="acc_room"></td></tr>
		<tr><td class="info">Acc. Note</td><td><input type="text" class="form-control" value="${tacc.acc_pin }" name="acc_pin"></td></tr>
		<tr><td class="info">Facilities</td><td>
		<c:forEach items="${tfac }" var="ele">
		<input type="checkbox" aria-label="" value="${ele.id }" name="acc_fac_list"
		<c:set var="fac_var" value=" ${ele.id },"/>
		<c:if test = "${fn:contains(tacc.acc_fac, fac_var)}">
		checked
		</c:if>
		>
		${fac_var }
		 ${ele.fac_title }
		</c:forEach>
		</td></tr>
		<tr><td class="info">Policy</td><td>
		<c:forEach items="${tpol }" var="ele">
		<input type="checkbox" aria-label="" value="${ele.id }" name="acc_pol_list"
		<c:set var="pol_var" value=" ${ele.id },"/>
		<c:if test = "${fn:contains(tacc.acc_pol, pol_var)}">
		checked
		</c:if>
		> ${ele.pol_title }
		</c:forEach>
		</td></tr>
		<tr><td class="info">information</td><td>
		<input class="form-control" name="acc_desc" value = 
		<c:choose>
			<c:when test="${empty tacc.acc_desc}">
			"In case of doubts, please contact Janet Kim, Administrator at Atos (+82-33-350-3679) or Janice Shin, HR & Admin Advisor at Atos (+82-33-350-3536)."
			</c:when>
			<c:otherwise>
			"${tacc.acc_desc }"
			</c:otherwise>
		</c:choose>
		>
		</td></tr>
	</table>
		<input type="submit" class="btn" value="Submit">
	</form:form>
	<br>
	</div>
	<div class="row">	
	<h4>Itinerary <button class="btn" onclick="openForm('itiForm')">+</button></h4>
	</div>
	<div class="row">
	<table class="table table-bordered" id="event_tbl">
<!-- 		<tr> -->
<!-- 			<td class="info"> -->
<!-- 			Itinerary title -->
<!-- 			</td> -->
<!-- 			<td> -->
<!-- 			<input type="text" class="form-control"> -->
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 		<tr><td class="info">Date</td><td><input type="text" class="form-control"></td></tr> -->
<!-- 		<tr><td class="info">Schedule <button class="btn btn-success">+</button></td><td><input type="text" class="form-control"></td></tr> -->
		<tr class="info">
			<td>Detail</td>
			<td>ID</td>
			<td>Desc</td>
			<td>Desc Local</td>
			<td>Time</td>
		</tr>
		<c:forEach items="${ti }" var="ele">
		<tr>
			<td><button class="btn" onclick="location.href='itiForm?id=${ele.id}'">D</button></td>
			<td class="updateIti iti_id">${ele.id }</td>
			<td class="updateIti">${ele.desc }</td>
			<td class="updateIti">${ele.desc_local }</td>
			<td class="updateIti"><fmt:formatDate value='${ele.stmp }' pattern = 'yyyy-MM-dd HH:mm' /></td>
		</tr>
		</c:forEach>
	
	</table>
	<div class="modal" id="itiForm" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Itinerary
		</div>
		<div class="modal-body">
		<form id="itiInsertForm" action="ItiForm" method="POST">
			<label>desc</label>
			<input type="text" name="desc" placeholder="desc" class="form-control">
			<label>desc_local</label>
			<input type="text" name="desc_local" placeholder="desc_local" class="form-control">
			<label>stmp</label>
			<input type="datetime-local" class="form-control" name="stmp" pattern = 'yyyy-MM-ddTHH:mm'>
			<input type="hidden" name="trip_id" value="${tripinfo.id }">
			<input type="hidden" name="event_id" value="${tripinfo.event_id }">
			<input type="hidden" name="emp_id" value="${tripinfo.emp_id }">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('itiInsertForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

	<div class="modal" id="ItiUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		TripCodes
		</div>
		<div class="modal-body">
		<form id="ItiUpdateForm" action="ItiUpdateForm" method="POST">
			<label>desc</label>
			<input type="text" name="desc" id="iti_desc" placeholder="desc" class="form-control">
			<label>desc_local</label>
			<input type="text" name="desc_local" id="iti_desc_local" placeholder="desc_local" class="form-control">
			<label>stmp</label>
			<input type="datetime-local" class="form-control" name="stmp" id ="iti_stmp" pattern = 'yyyy-MM-dd HH:mm'>
			<input type="hidden" name="trip_id" id="iti_trip_id" value="${tripinfo.id }">
			<input type="hidden" name="id" id="iti_id">
			<input type="hidden" name="event_id" value="${tripinfo.event_id }">
			<input type="hidden" name="emp_id" value="${tripinfo.emp_id }">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('ItiUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

	</div>
	<div class="row">	
	<h4>Others</h4>
	</div>
	<form method="POST" action="OtherForm">
	<div class="row">
	<table class="table table-bordered" id="event_tbl">
		<tr><td class="info">Note</td></tr>
		<tr><td><textarea id="otherNote" name="note" >${to.note }</textarea></td></tr>
	</table>
	<input type="hidden" name="event_id" value="${tripinfo.event_id }">
	<input type="hidden" name="emp_id" value="${tripinfo.emp_id }">
	<input type="hidden" name="id" value="${tripinfo.emp_id }">	
	<input type="submit" class="btn" value="Submit">
	</div>
	</form>
	<div class="row" style="height: 2em">	
	</div>
</div>

<script src="https://cdn.ckeditor.com/4.7.0/standard/ckeditor.js"></script>
<script>
            CKEDITOR.replace( 'otherNote' );
</script>
<script>
$(".updateIti").click(function() {
    var id = $(this).closest("tr").find(".iti_id");
	var desc = id.next();
    var desc_local = desc.next();
    var stmp = desc_local.next();     

    $('#iti_desc').val(desc.text());
    $('#iti_desc_local').val(desc_local.text());
    $('#iti_stmp').val(stmp.text().replace(" ", "T"));
    $('#iti_id').val(id.text());
    
    $('#ItiUpdate').modal('show');
});

$( "#employee_id_sel" ).change(function() {
	  var val = $("#employee_id_sel").val();
	  var url = '/TIS/getEmp/'+val;
	  $.ajax({
	      url: url,
	      method: "POST",
	      dataType: 'json',
	      processData: false,
	      contentType: false,
	      success: function(result){
	    	  $("#profile_tbl  tr:nth-child(2) td:nth-child(2)").text(result.id);
	    	  $("#profile_tbl  tr:nth-child(3) td:nth-child(2)").text(result.job_title);
	    	  $("#profile_tbl  tr:nth-child(4) td:nth-child(2)").text(result.tel);
	    	  $("#profile_tbl  tr:nth-child(5) td:nth-child(2)").text(result.email);
	      },
	      error: function(er){
	    	  console.log("err. : "+er);
	      }
	  });
	});
	
$( "#event_id_sel" ).change(function() {
	  var val = $("#event_id_sel").val();
	  var url = '/TIS/getEvent/'+val;
	  $.ajax({
	      url: url,
	      method: "POST",
	      dataType: 'json',
	      processData: false,
	      contentType: false,
	      success: function(result){
	    	  $("#event_tbl  tr:nth-child(2) td:nth-child(2)").text(result.event_desc);
	      },
	      error: function(er){
	    	  console.log("err. : "+er);
	      }
	  });
	});

function openForm(para){
	$('#'+para).modal('show');
}
function submitForm(para){
	$('#'+para).submit();
}
</script>
    
    <!-- #footer -->
    <footer id="footer">
        
        <!-- .container -->
        <div class="container">
            
            <div class="footer-links">
<!--             	<a href="https://www.facebook.com/UFO79-727262880784383/" class="link-icon" title="Facebook"><i class="ion ion-social-facebook"></i></a> -->
<!--                 <a href="http://www.twitter.com/share?=url=www.ufo79.com/PIX/que/" class="link-icon" title="Twitter"><i class="ion ion-social-twitter"></i></a> -->
<!--                 <a href="http://plus.google.com/share?url=www.ufo79.com/PIX/que/" class="link-icon" title="Google Plus"><i class="ion ion-social-googleplus"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Dribbble"><i class="ion ion-social-dribbble"></i></a> -->
<!--                 <a href="#" class="link-icon" title="Instagram"><i class="ion ion-social-instagram"></i></a> -->
                <a href="#" class="scrollup"><i class="ion ion-ios-arrow-up"></i></a>
            </div>
            
            <div class="footer-copyright">
            	<p>&copy; <a href="http://affapress.com" target="_blank">Atos Pyeongchang team</a> All Rights Reserved.</p>
            </div>
            
		</div>
        <!-- .container end -->
        
    </footer>
    <!-- #footer end -->
    
    <!--[if lt IE 8]>
    	<div class="browser-notice">
            <div class="container">
            	<div class="text">
                    <h1>Internet Explorer Out To Date</h1>
                    <p>Please update your Internet Explorer browser with a newer version (Internet Explorer 8 above) now!</p>
                    <span>You can download it <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie" target="_blank">here....</a></span>
                </div>
            </div>
        </div>
	<![endif]-->
    

</body>

<script>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>
</html>