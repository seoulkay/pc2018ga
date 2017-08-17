<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
<body>
<jsp:include page="ufoHeader.jsp" flush="true">
	<jsp:param name="param" value="value1"/>
</jsp:include>
<div class="container">
	<div style="height:2em"></div>
	<h3>통계</h3>
	<div class="row">
	<table class="table table-bordered table-hover table-condensed">
			<tr class="table table_striped">
				<td class="hk3">fbLogNum<br>로그인 유저수</td>
				<td class="hk3">fbCheckNum<br>로그인 회수</td>
				<td class="hk3">goCompNum<br>완성한 유저수</td>
				<td class="hk3">goPartPercent<br>완성퍼센트</td>
				<td class="hk3">compList<br>완성 개수</td>
				<td class="hk3">printNum<br>프린트수</td>
				<td class="hk3">printPercent<br>프린트퍼센트</td>
				<td class="hk3">sharePartNum<br>공유자수</td>
				<td class="hk3">shareNum<br>공유수</td>
				<td class="hk3">qrPartNum<br>큐알참여자</td>
				<td class="hk3">qrNum<br>큐알참여수</td>
			</tr>
			<tr>
				<td>${stat.fbLogNum}</td>
				<td>${stat.fbCheckNum}</td>
				<td>${stat.goCompNum}</td>
				<td>${stat.goPartPercent}</td>
				<td>${fn:length(stat.compList)}</td>
				<td>${stat.printNum}</td>
				<td>${stat.printPercent}</td>
				<td>${stat.sharePartNum}</td>
				<td>${stat.shareNum}</td>
				<td>${stat.qrPartNum}</td>
				<td>${stat.qrNum}</td>
			</tr>
	</table>
	</div>
</div>
<div class="modal" id="imgModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<img class="img-responsive" alt="" src="" style="width: 100%">
		</div>
	</div>
</div>
<jsp:include page="ufoFooter.jsp" flush="false">
	<jsp:param name="param" value="value1"/>
</jsp:include>
<script>
$(".go_img").click(function(){
	$("#imgModal").find("img").attr("src", $(this).find("img").attr("src"));
	$("#imgModal").modal("show");
});

$(".post_img").click(function(){
	$("#imgModal").find("img").attr("src", $(this).find("img").attr("src"));
	$("#imgModal").modal("show");
});
</script>
</body>
</html>