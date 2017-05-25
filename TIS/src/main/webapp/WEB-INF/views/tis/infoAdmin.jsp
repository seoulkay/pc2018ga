<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
<nav class="navbar navbar-default" style="height: 6em ; background-size: 2000px 7em; background-image: url('${pageContext.request.contextPath}/resources/tis/image/headerGeneric.png')">
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
	<h3>Trip Codes</h3>
	<h4>Events <span class="label label-success" onclick="openForm('TripCodes')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>event_name</th>
	        <th>event_desc</th>
	        <th>active</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${te }" var="ele">
	    	<tr onclick="openUpdateForm('TripCodesUpdate', '${ele.id }')" id="TripCodesUpdate_${ele.id }">
	        <td>${ele.id }</td>
	        <td>${ele.event_name }</td>
	        <td>${ele.event_desc }</td>
	        <td>${ele.active }</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="TripCodes" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		TripCodes
		</div>
		<div class="modal-body">
		<form id="TripCodesForm" action="TripCodesForm" method="POST">
			<label>event_name</label>
			<input type="text" name="event_name" placeholder="event_name" class="form-control">
			<label>event_desc</label>
			<input type="text" name="event_desc" placeholder="event_desc" class="form-control">
			<label>Active</label>
			<div class="input-group">
			<label class="radio-inline">
			<input type="radio" name="active" value="Y" class="form-control">Yes
			</label>
			<label class="radio-inline">
		  	<input type="radio" name="active" value="N" class="form-control" checked>No
		  	</label>
		  	</div>
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TripCodesForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="TripCodesUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		TripCodes
		</div>
		<div class="modal-body">
		<form id="TripCodesUpdateForm" action="TripCodesUpdateForm" method="POST">
			<label>event_name</label>
			<input type="text" id="TripCodesUpdate_event_name" name="event_name" placeholder="event_name" class="form-control">
			<label>event_desc</label>
			<input type="text" id="TripCodesUpdate_event_desc" name="event_desc" placeholder="event_desc" class="form-control">
			<label>Active</label>
			<div class="input-group">
			<label class="radio-inline">
			<input type="radio" id="TripCodesUpdate_active_Y" name="active" value="Y" class="form-control">Yes
			</label>
			<label class="radio-inline">
		  	<input type="radio" id="TripCodesUpdate_active_N" name="active" value="N" class="form-control">No
		  	</label>
		  	</div>
		  	<input type="hidden" name="id" id="TripCodesUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TripCodesUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_event_name").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_event_desc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	if($("#"+para+"_"+id+" td:nth-child(4)").text() == "Y"){
		$("#"+para+"_active_Y").prop("checked", true);
	}else{
		$("#"+para+"_active_N").prop("checked", true);
	}
	
	
	$('#'+para).modal('show');
}
</script>

	<div class="row">	
	<h4>Locations <span class="label label-success" onclick="openForm('Locations')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>venue_pic</th>
	        <th>venue_name</th>
	        <th>venue_name_loc</th>
	        <th>venue_address</th>
	        <th>venue_address_loc</th>
	        <th>lat</th>
	        <th>lng</th>
	        <th>venue_type</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tv }" var="ele">
	    	<tr onclick="openUpdateLocationsForm('LocationsUpdate', '${ele.id }')" id="LocationsUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.venue_pic}</td>
	        <td>${ele.venue_name}</td>
	        <td>${ele.venue_name_loc}</td>
	        <td>${ele.venue_address}</td>
	        <td>${ele.venue_address_loc}</td>
	        <td>${ele.lat}</td>
	        <td>${ele.lng}</td>
	        <td>${ele.venue_type}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Locations" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Locations
		</div>
		<div class="modal-body">
		<form id="LocationsForm" action="LocationsForm" method="POST">
			<label>venue_pic</label>
			<input type="text" name="venue_pic" placeholder="venue_pic" class="form-control">
			<label>venue_name</label>
			<input type="text" name="venue_name" placeholder="venue_name" class="form-control">
			<label>venue_name_loc</label>
			<input type="text" name="venue_name_loc" placeholder="venue_name_loc" class="form-control">
			<label>venue_address</label>
			<input type="text" name="venue_address" placeholder="venue_address" class="form-control">
			<label>venue_address_loc</label>
			<input type="text" name="venue_address_loc" placeholder="venue_address_loc" class="form-control">
			<label>lat</label>
			<input type="text" name="lat" placeholder="lat" class="form-control">
			<label>lng</label>
			<input type="text" name="lng" placeholder="lng" class="form-control">
			<label>venue_type</label>
			<input type="text" name="venue_type" placeholder="venue_type" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('LocationsForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="LocationsUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Locations
		</div>
		<div class="modal-body">
		<form id="LocationsUpdateForm" action="LocationsUpdateForm" method="POST">
			<label>venue_pic</label>
			<input type="text" id="LocationsUpdate_venue_pic" name="venue_pic" placeholder="venue_pic" class="form-control">
			<label>venue_name</label>
			<input type="text" id="LocationsUpdate_venue_name" name="venue_name" placeholder="venue_name" class="form-control">
			<label>venue_name_loc</label>
			<input type="text" id="LocationsUpdate_venue_name_loc" name="venue_name_loc" placeholder="venue_name_loc" class="form-control">
			<label>venue_address</label>
			<input type="text" id="LocationsUpdate_venue_address" name="venue_address" placeholder="venue_address" class="form-control">
			<label>venue_address_loc</label>
			<input type="text" id="LocationsUpdate_venue_address_loc" name="venue_address_loc" placeholder="venue_address_loc" class="form-control">
			<label>lat</label>
			<input type="text" id="LocationsUpdate_lat" name="lat" placeholder="lat" class="form-control">
			<label>lng</label>
			<input type="text" id="LocationsUpdate_lng" name="lng" placeholder="lng" class="form-control">
			<label>venue_type</label>
			<input type="text" id="LocationsUpdate_venue_type" name="venue_type" placeholder="venue_type" class="form-control">
		  	<input type="hidden" name="id" id="LocationsUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('LocationsUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateLocationsForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_venue_pic").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_venue_name").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_venue_name_loc").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$("#"+para+"_venue_address").val($("#"+para+"_"+id+" td:nth-child(5)").text());
	$("#"+para+"_venue_address_loc").val($("#"+para+"_"+id+" td:nth-child(6)").text());
	$("#"+para+"_lat").val($("#"+para+"_"+id+" td:nth-child(7)").text());
	$("#"+para+"_lng").val($("#"+para+"_"+id+" td:nth-child(8)").text());
	$("#"+para+"_venue_type").val($("#"+para+"_"+id+" td:nth-child(9)").text());
	$('#'+para).modal('show');
}
</script>

<div class="row">	
	<h4>Facilities <span class="label label-success" onclick="openForm('Facilities')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>fac_title</th>
	        <th>fac_title_loc</th>
	        <th>fac_icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tfac }" var="ele">
	    	<tr onclick="openUpdateFacForm('FacUpdate', '${ele.id }')" id="FacUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.fac_title}</td>
	        <td>${ele.fac_title_loc}</td>
	        <td>${ele.fac_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Facilities" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Facilities
		</div>
		<div class="modal-body">
		<form id="FacForm" action="FacForm" method="POST">
			<label>fac_title</label>
			<input type="text" name="fac_title" placeholder="fac_title" class="form-control">
			<label>fac_title_loc</label>
			<input type="text" name="fac_title_loc" placeholder="fac_title_loc" class="form-control">
			<label>fac_icon</label>
			<input type="text" name="fac_icon" placeholder="fac_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('FacForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="FacUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Facilities
		</div>
		<div class="modal-body">
		<form id="FacUpdateForm" action="FacUpdateForm" method="POST">
			<label>fac_title</label>
			<input type="text" id="FacUpdate_fac_title" name="fac_title" placeholder="venue_pic" class="form-control">
			<label>fac_title_loc</label>
			<input type="text" id="FacUpdate_fac_title_loc" name="fac_title_loc" placeholder="venue_name" class="form-control">
			<label>venue_name_loc</label>
			<input type="text" id="FacUpdate_fac_icon" name="fac_icon" placeholder="venue_name_loc" class="form-control">
		  	<input type="hidden" name="id" id="FacUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('FacUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateFacForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_fac_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_fac_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_fac_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>
<div class="row">	
	<h4>Policies <span class="label label-success" onclick="openForm('Policies')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>pol_title</th>
	        <th>pol_title_loc</th>
	        <th>pol_icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tpol }" var="ele">
	    	<tr onclick="openUpdatePolForm('PolUpdate', '${ele.id }')" id="PolUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.pol_title}</td>
	        <td>${ele.pol_title_loc}</td>
	        <td>${ele.pol_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Policies" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Policies
		</div>
		<div class="modal-body">
		<form id="PolForm" action="PolForm" method="POST">
			<label>pol_title</label>
			<input type="text" name="pol_title" placeholder="pol_title" class="form-control">
			<label>pol_title_loc</label>
			<input type="text" name="pol_title_loc" placeholder="pol_title_loc" class="form-control">
			<label>pol_icon</label>
			<input type="text" name="pol_icon" placeholder="pol_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('PolForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="PolUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Policies
		</div>
		<div class="modal-body">
		<form id="PolUpdateForm" action="PolUpdateForm" method="POST">
			<label>pol_title</label>
			<input type="text" id="PolUpdate_pol_title" name="pol_title" placeholder="pol_title" class="form-control">
			<label>pol_title_loc</label>
			<input type="text" id="PolUpdate_pol_title_loc" name="pol_title_loc" placeholder="pol_title_loc" class="form-control">
			<label>pol_icon</label>
			<input type="text" id="PolUpdate_pol_icon" name="pol_icon" placeholder="pol_icon" class="form-control">
		  	<input type="hidden" name="id" id="PolUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('PolUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdatePolForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_pol_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_pol_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_pol_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>
<div class="row">	
	<h4>Transportations <span class="label label-success" onclick="openForm('Transportations')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>trs_title</th>
	        <th>trs_title_loc</th>
	        <th>trs_icon</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${ttrs }" var="ele">
	    	<tr onclick="openUpdateTrsForm('TrsUpdate', '${ele.id }')" id="TrsUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.trs_title}</td>
	        <td>${ele.trs_title_loc}</td>
	        <td>${ele.trs_icon}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Transportations" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Transportations
		</div>
		<div class="modal-body">
		<form id="TrsForm" action="TrsForm" method="POST">
			<label>trs_title</label>
			<input type="text" name="trs_title" placeholder="trs_title" class="form-control">
			<label>trs_title_loc</label>
			<input type="text" name="trs_title_loc" placeholder="trs_title_loc" class="form-control">
			<label>trs_icon</label>
			<input type="text" name="trs_icon" placeholder="trs_icon" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TrsForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="TrsUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Transportations
		</div>
		<div class="modal-body">
		<form id="TrsUpdateForm" action="TrsUpdateForm" method="POST">
			<label>trs_title</label>
			<input type="text" id="TrsUpdate_trs_title" name="trs_title" placeholder="trs_title" class="form-control">
			<label>trs_title_loc</label>
			<input type="text" id="TrsUpdate_trs_title_loc" name="trs_title_loc" placeholder="trs_title_loc" class="form-control">
			<label>trs_icon</label>
			<input type="text" id="TrsUpdate_trs_icon" name="trs_icon" placeholder="trs_icon" class="form-control">
		  	<input type="hidden" name="id" id="TrsUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('TrsUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateTrsForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_trs_title").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_trs_title_loc").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_trs_icon").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>
<div class="row">	
	<h4>Supports <span class="label label-success" onclick="openForm('Supports')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>event_id</th>
	        <th>support_title</th>
	        <th>support_tel</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${tsup }" var="ele">
	    	<tr onclick="openUpdateSupForm('SupUpdate', '${ele.id }')" id="SupUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.event_id}</td>
	        <td>${ele.support_title}</td>
	        <td>${ele.support_tel}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Supports" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Supports
		</div>
		<div class="modal-body">
		<form id="SupForm" action="SupForm" method="POST">
			<label>event_id</label>
			<select name="event_id" class="form-control">
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}">${ele.event_name }</option>
			</c:forEach>
			</select>
			<label>support_title</label>
			<input type="text" name="support_title" placeholder="support_title" class="form-control">
			<label>support_tel</label>
			<input type="text" name="support_tel" placeholder="support_tel" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('SupForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="SupUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Supports
		</div>
		<div class="modal-body">
		<form id="SupUpdateForm" action="SupUpdateForm" method="POST">
			<label>event_id</label>
			<select id="SupUpdate_event_id" name="event_id" class="form-control">
			<c:forEach items="${te }" var="ele">
				<option value="${ele.id}">${ele.event_name }</option>
			</c:forEach>
			</select>
			<label>support_title</label>
			<input type="text" id="SupUpdate_support_title" name="support_title" placeholder="support_title" class="form-control">
			<label>support_tel</label>
			<input type="text" id="SupUpdate_support_tel" name="support_tel" placeholder="support_tel" class="form-control">
		  	<input type="hidden" name="id" id="SupUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('SupUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateSupForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_event_id").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_support_title").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_support_tel").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$('#'+para).modal('show');
}
</script>

<div class="row">	
	<h4>Profiles <span class="label label-success" onclick="openForm('Profiles')">Add new</span></h4>
	</div>
	<div class="row">	
	<table class="table table-bordered">
	    <thead>
	      <tr class="info">
	        <th>id</th>
	        <th>first_name</th>
	        <th>last_name</th>
	        <th>picture</th>
	        <th>job_title</th>
	        <th>tel</th>
	        <th>email</th>
	        <th>pin</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${temp }" var="ele">
	    	<tr onclick="openUpdateProForm('ProUpdate', '${ele.id }')" id="ProUpdate_${ele.id }">
	        <td>${ele.id}</td>
	        <td>${ele.first_name}</td>
	        <td>${ele.last_name}</td>
	        <td>${ele.picture}</td>
	        <td>${ele.job_title}</td>
	        <td>${ele.tel}</td>
	        <td>${ele.email}</td>
	        <td>${ele.pin}</td>
	      	</tr>
	    </c:forEach>
	    </tbody>
	  </table>
	</div>
	<div class="modal" id="Profiles" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Profiles
		</div>
		<div class="modal-body">
		<form id="ProForm" action="ProForm" method="POST">
			<label>first_name</label>
			<input type="text" name="first_name" placeholder="first_name" class="form-control">
			<label>last_name</label>
			<input type="text" name="last_name" placeholder="last_name" class="form-control">
			<label>picture</label>
			<input type="text" name="picture" placeholder="picture" class="form-control">
			<label>job_title</label>
			<input type="text" name="job_title" placeholder="job_title" class="form-control">
			<label>tel</label>
			<input type="text" name="tel" placeholder="tel" class="form-control">
			<label>email</label>
			<input type="text" name="email" placeholder="email" class="form-control">
			<label>pin</label>
			<input type="text" name="pin" placeholder="pin" class="form-control">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('ProForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>
	<div class="modal" id="ProUpdate" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
		Profiles
		</div>
		<div class="modal-body">
		<form id="ProUpdateForm" action="ProUpdateForm" method="POST">
		<label>first_name</label>
			<input type="text" id="ProUpdate_first_name" name="first_name" placeholder="first_name" class="form-control">
			<label>last_name</label>
			<input type="text" id="ProUpdate_last_name" name="last_name" placeholder="last_name" class="form-control">
			<label>picture</label>
			<input type="text" id="ProUpdate_picture" name="picture" placeholder="picture" class="form-control">
			<label>job_title</label>
			<input type="text" id="ProUpdate_job_title" name="job_title" placeholder="job_title" class="form-control">
			<label>tel</label>
			<input type="text" id="ProUpdate_tel" name="tel" placeholder="tel" class="form-control">
			<label>email</label>
			<input type="text" id="ProUpdate_email" name="email" placeholder="email" class="form-control">
			<label>pin</label>
			<input type="text" id="ProUpdate_pin" name="pin" placeholder="pin" class="form-control">
		  	<input type="hidden" name="id" id="ProUpdate_id">
		</form>
		</div>
		<div class="modal-footer">
	    <button type="button" class="btn" data-backdrop="static" data-keyboard="false" data-dismiss="modal" onclick="submitForm('ProUpdateForm')">Submit</button>
	  	</div>
		</div>
		</div>
	</div>

<script>
function openUpdateProForm(para, id){
	$("#"+para+"_id").val($("#"+para+"_"+id+" td:nth-child(1)").text());
	$("#"+para+"_first_name").val($("#"+para+"_"+id+" td:nth-child(2)").text());
	$("#"+para+"_last_name").val($("#"+para+"_"+id+" td:nth-child(3)").text());
	$("#"+para+"_picture").val($("#"+para+"_"+id+" td:nth-child(4)").text());
	$("#"+para+"_job_title").val($("#"+para+"_"+id+" td:nth-child(5)").text());
	$("#"+para+"_tel").val($("#"+para+"_"+id+" td:nth-child(6)").text());
	$("#"+para+"_email").val($("#"+para+"_"+id+" td:nth-child(7)").text());
	$("#"+para+"_pin").val($("#"+para+"_"+id+" td:nth-child(8)").text());
	$('#'+para).modal('show');
}
</script>
</div>
<script>
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

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1074619385980281";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96309968-1', 'auto');
  ga('send', 'pageview');

</script>
</html>