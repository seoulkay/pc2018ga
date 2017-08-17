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
<script>
// $('#qrcode').qrcode({width: 130,height: 130, render	: "table",
// 	text:'https://www.facebook.com/${vo.sns_return }'});
var qrcode = new QRCode("qrcode", {
    text: "https://www.facebook.com/",
    width: 200,
    height: 200,
    colorDark : "#000000",
    colorLight : "#ffffff",
    correctLevel : QRCode.CorrectLevel.H
});
JsBarcode("#barcode", "go/1214903321890044/2222");
//or with jQuery
//$("#barcode").JsBarcode("https://www.facebook.com/${vo.sns_return }");
</script>	
	<div class="row">
	<h3>서베이</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="table table_striped">
				<td class="hk3">번호</td>
				<td class="hk3">질문</td>
				<td class="hk3">ques_time</td>
				<td class="hk3">질문 사진</td>
			</tr>
				<c:forEach items="${surveyList}" var="ele">
				<tr class="table table_striped" style="background: #ddd;">
					<td>${ele.orderq}</td>
					<td>${ele.question}</td>
					<td>${ele.ques_time}</td>
					<td><c:if test="${ele.ques_img ne null}"><img src="https://www.ufo79.com/image/${ele.ques_img}" class="img-responsive" alt="" style="width:100px"></c:if></td>
				</tr>
					<c:forEach items="${ele.questionOptions}" var="el">
						<tr>
							<td></td>
							<td style="color:#999">&nbsp;${el.q_option }</td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:forEach>
		</table>
	</div>
</div>
<jsp:include page="ufoFooter.jsp" flush="false">
	<jsp:param name="param" value="value1"/>
</jsp:include>
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
  			<label>go_content</label><input class="form-control" type="text" id="go_content" name="go_content" maxlength="45"/>
  			<label>go_desc</label><input class="form-control" type="text" id="go_desc" name="go_desc" maxlength="1000"/>
  			<label>ufo_gid</label><input class="form-control" type="text" id="ufo_gid" name="ufo_gid" maxlength="45"/>
  			<label>go_alt</label><input class="form-control" type="text" id="go_alt" name="go_alt" maxlength="45"/>
  			<label>go_lat</label><input class="form-control" type="text" id="go_lat" name="go_lat" maxlength="45"/>
  			<input class="form-control" type="hidden" id="ufo_go_type" name="ufo_go_type" maxlength="100" value="go"/>
  			<input class="form-control" type="hidden" id="go_para" name="go_para" maxlength="100" value="${ufo.para }"/>
  			<input class="form-control" type="hidden" id="id_ufo_go" name="id_ufo_go" value="1"/>
  			<input class="form-control" type="hidden" id="idx" name="idx" value="${param.idx}"/>
  			<label>go_image</label><input class="form-control" type="file" id="file" name="file"/>
  			<label>go_icon_img</label><input class="form-control" type="file" id="file2" name="file2"/>
  			</form>
  		</div>
  		<div class="modal-footer">
	    <button type="button" class="btn" data-dismiss="modal" id="stampSubmit" onclick="stampSubmit();">제출</button>
	  	</div>
	</div>
	</div>
</div>
<script>
var stampNew = false;

function stampUpdate(id){
	stampNew = false;
	$("#id_ufo_go").val(id);
	$("#go_content").val($("#"+id+" td:nth-child(2)").text());
	$("#go_desc").val($("#"+id+" td:nth-child(3)").text());
	$("#ufo_gid").val($("#"+id+" td:nth-child(6)").text());
	$("#go_alt").val($("#"+id+" td:nth-child(7)").text());
	$("#go_lat").val($("#"+id+" td:nth-child(8)").text());
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