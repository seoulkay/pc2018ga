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
	<div class="row">
	<h3>승리자들</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>winner_time</td><td>ufo_image</td><td>first_name</td><td>last_name</td><td>ufo_go_type</td><td>ufo_gid</td>
			</tr>
				<c:forEach items="${winner}" var="ele" begin="0" end="10">
				<tr><td><fmt:formatDate type="both" value="${ele.winner_time}" /></td><td class="go_img"><c:if test="${ele.ufo_image ne null}"><img src="https://www.ufo79.com/image/${ele.ufo_image}" class="img-responsive" alt="" style="height:100px"></c:if></td><td>${ele.first_name }</td><td>${ele.last_name}</td><td>${ele.ufo_go_type}</td><td>${ele.ufo_gid}</td></tr>
				</c:forEach>
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