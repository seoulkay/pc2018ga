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
<div style="margin:10px">
<div id="qrcode"></div>
<div><img id="barcode" style="width:350px"/></div>
</div>
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
	<div style="height:2em"></div>
	<div class="row">
	<h3>민원처리</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>id</td><td>minwonImg</td><td>minwonDesc</td><td>minwonLat</td><td>minwonLng</td><td>minwonFn</td><td>minwonLn</td><td>minwon_tsmp</td>
			</tr>
				<c:forEach items="${minwon}" var="ele">
				<tr><td>${ele.id}</td><td class="go_img"><c:if test="${ele.minwonImg ne null}"><img src="https://www.ufo79.com/image/${ele.minwonImg}" class="img-responsive" alt="" style="width:100px"></c:if></td><td>${ele.minwonDesc}</td><td>${ele.minwonLat}</td>
				<td>${ele.minwonLng}</td><td>${ele.minwonFn}</td><td>${ele.minwonLn}</td><td>${ele.minwon_tsmp}</td></tr>
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

<script>


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