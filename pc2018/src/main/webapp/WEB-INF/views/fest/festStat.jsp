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
	<h3>스탬프 투어 히스토리</h3>
		<table class="table table-bordered table-hover table-condensed">
			<tr class="table table_striped">
				<td class="hk3" style="width:20%;">날짜</td>
				<td class="hk3" style="width:35%;">스탬프 미션 사진</td>
				<td class="hk3" style="width:10%;">이름</td>
				<td class="hk3" style="width:10%;">성</td>
				<td class="hk3" style="width:15%;">위치(go) / 큐알(qr)</td>
				<td class="hk3" style="width:10%;">스탬프 번호</td>
			</tr>
				<c:forEach items="${resultList}" var="ele" begin="0" end="10">
				<tr>
				<td class="hk4">${ele.ufo_date}</td>
				<td class="go_img hk4"><c:if test="${ele.ufo_image ne null}"><img src="https://www.pc2018.ga/image/${ele.ufo_image}" class="img-responsive" alt="" style="height:100px"></c:if></td>
				<td class="hk4">${ele.first_name }</td>
				<td class="hk4">${ele.last_name}</td>
				<td class="hk4">${ele.ufo_go_type}</td>
				<td class="hk4">${ele.ufo_gid}</td></tr>
				</c:forEach>
		</table>
		<nav aria-label="Page navigation">
		  <ul class="pagination">
		    <li>
		      <a href="festStat?idx=${sessionScope.currentEvent }&startNum=${param.startNum - param.pageRowNum}&pageRowNum=10" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li>
		      <a href="festStat?idx=${sessionScope.currentEvent }&startNum=${param.startNum + param.pageRowNum}&pageRowNum=10" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
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