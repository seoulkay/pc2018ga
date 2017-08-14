<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
	<body>
		<jsp:include page="ufoHeader.jsp" flush="true">
			<jsp:param name="param" value="value1"/>
		</jsp:include>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/jsbarcode/3.5.8/barcodes/JsBarcode.code128.min.js"></script>
		<div class="container">
		<div style="height:2em"></div>
		<div class="row">
		<h2>Modules</h2>
		<div style="height:2em"></div>
		<!-- <div style="margin:10px">
		<div id="qrcode"></div>
		<div><img id="barcode" style="width:350px"/></div>
		</div> -->	
			<table class="table table-bordered table-hover table-condensed">
			<h3>Stamp Rally  <button class="btn" style="background-color: #FD7A02; color: white" onclick="stampInsert()">Add new</button></h3>
				<tr class="table table_striped">					
					<td class="hk">Stamp Id.</td>
					<td class="hk">Stamp board Image</td>	
					<td class="hk">Stamp Title</td>
					<td class="hk">Stamp Description</td>
					<td class="hk">Stamp Image</td>				
					<td class="hk">Latitude</td>
					<td class="hk">Longitude</td>
					<td class="hk">Edit</td>
				</tr>
					<c:forEach items="${goList}" var="ele">
					<tr id="${ele.id_ufo_go }">						
						<td class="hk2">${ele.ufo_gid}</td>
						<td class="icon_img hk2"><c:if test="${ele.go_icon_img ne null}"><img src="https://www.ufo79.com/image/${ele.go_icon_img}" class="img-responsive" alt="" style="width:100px"></c:if></td>
						<td class="hk2">${ele.go_content}</td>
						<td class="hk2">${ele.go_desc}</td>
						<td class="go_img hk2"><c:if test="${ele.go_image ne null}"><img src="https://www.ufo79.com/image/${ele.go_image}" class="img-responsive" alt="" style="width:100px"></c:if></td>												
						<td class="hk2">${ele.go_lat}</td>
						<td class="hk2">${ele.go_alt}</td>
						<td class="hk2"><button class="btn" style="background-color: #FD7A02; color: white" onclick="stampUpdate('${ele.id_ufo_go }', '${ele.go_para }')">Edit</button></td>						
					</tr>
					</c:forEach>
			</table>
		</div>
		<div style="height:2em"></div>
		
		<div class="modal" id="imgModal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<img class="img-responsive" alt="" src="" style="width: 100%">
				</div>
			</div>
		</div>
		
		<div class="modal" id="stampFormModal" role="dialog">
			<div class="modal-dialog">
			  <div class="modal-content">
				   <div class="modal-header">
				  		<button type="button" class="close" data-dismiss="modal">&times;</button>
				  		<h4 id="modal1Title">스탬프 폼</h4>
				   </div>	
				   <div class="modal-body">
				 		<form id="stampForm" method="post" enctype="multipart/form-data"> 
			  			<label>Stamp Id.</label><input class="form-control" type="text" id="ufo_gid" name="ufo_gid" maxlength="45"/>
			  			<label>Stamp board Image</label><input class="form-control" type="file" id="file2" name="file2"/>
			  			<label>Stamp Title</label><input class="form-control" type="text" id="go_content" name="go_content" maxlength="45"/>
			  			<label>Stamp Description</label><input class="form-control" type="text" id="go_desc" name="go_desc" maxlength="1000"/>
			  			<label>Stamp Image</label><input class="form-control" type="file" id="file" name="file"/>
			  			<label>Latitude</label><input class="form-control" type="text" id="go_lat" name="go_lat" maxlength="45"/>
			  			<label>Longitude</label><input class="form-control" type="text" id="go_alt" name="go_alt" maxlength="45"/>			  		
			  			<input class="form-control" type="hidden" id="ufo_go_type" name="ufo_go_type" maxlength="100" value="go"/>
			  			<input class="form-control" type="hidden" id="go_para" name="go_para" maxlength="100" value="${ufo.para }"/>
			  			<input class="form-control" type="hidden" id="id_ufo_go" name="id_ufo_go" value="1"/>
			  			<input class="form-control" type="hidden" id="idx" name="idx" value="${param.idx}"/>
			  			</form>
			  		</div>
			  		<div class="modal-footer">
				    <button type="button" class="btn" data-dismiss="modal" id="stampSubmit" onclick="stampSubmit();">제출</button>
				  	</div>
				</div>
			</div>
		</div>  			
		</div>
		<jsp:include page="ufoFooter.jsp" flush="false">
			<jsp:param name="param" value="value1"/>
		</jsp:include>
		
		<script>
		var stampNew = false;
		
		function stampUpdate(id){
			stampNew = false;
			$("#id_ufo_go").val(id);
			$("#ufo_gid").val($("#"+id+" td:nth-child(1)").text());
			$("#go_content").val($("#"+id+" td:nth-child(3)").text());
			$("#go_desc").val($("#"+id+" td:nth-child(4)").text());
			$("#go_lat").val($("#"+id+" td:nth-child(6)").text());
			$("#go_alt").val($("#"+id+" td:nth-child(7)").text());			
			$("#stampFormModal").modal("show");
		}
		function stampInsert(){
			stampNew = true;
			$("#stampFormModal").modal("show");
		}
		
		function stampSubmit(){
			if(stampNew){
				console.log("new");
				$("#stampForm").attr("action", "stampNew/");
				$("#stampForm").submit();
			}else{
				console.log("update");	
				$("#stampForm").attr("action", "stampUpdate/");
				$("#stampForm").submit();
			}
		}		
		
		$(".go_img").click(function(){
			$("#imgModal").find("img").attr("src", $(this).find("img").attr("src"));
			$("#imgModal").modal("show");
		});
		
		$(".icon_img").click(function(){
			$("#imgModal").find("img").attr("src", $(this).find("img").attr("src"));
			$("#imgModal").modal("show");
		});
		</script>
	</body>
</html>