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
	<h3>서베이, SNS 포스트</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="success">
				<td>time_log</td><td>q7_a</td><td>q1-q6</td><td>q6_a</td><td>uid_a</td><td>first_name_a</td><td>last_name_a</td><td>sns_type_a</td><td>sns_return</td>
			</tr>
				<c:forEach items="${answerVOs}" var="ele" begin="0" end="10">
				<tr><td>${ele.time_log}</td><td class="post_img"><c:if test="${ele.q7_a ne null}"><img src="https://www.pc2018.ga/image/${ele.q7_a}" class="img-responsive" alt="" style="width:100px"></c:if></td><td>${ele.q1_a } ${ele.q2_a } ${ele.q3_a } ${ele.q4_a } ${ele.q5_a }</td><td>${ele.q6_a}</td><td>${ele.uid_a}</td><td>${ele.first_name_a}</td><td>${ele.last_name_a}</td><td>${ele.sns_type_a}</td><td>${ele.sns_return}</td></tr>
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