<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Global CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ufo/assets/plugins/bootstrap/css/bootstrap.min.css">	

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet"	href="${pageContext.request.contextPath}/resources/ufo/assets/css/styles.css">

<title>UFO79 reader</title>
</head>
<body>
	<div style="text-align: center; padding: 3em;">
	    <span style="color:#0081C8; font-size: 1.5em; font-weight: bold;">바코드를 읽어주세요.</span><br><br>					
		<img src="https://www.pc2018.ga/image/sb-min.JPG" style="max-height: 10em;"><br><br>
		<input type="text" id="link">
	</div>
	
	<!-- ******FOOTER****** -->
	<jsp:include page="footer.jsp" flush="false">
		<jsp:param name="param" value="value1" />
	</jsp:include>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
	<script>

var str = "//dd";
var match = test.match(\(\/\/.*){2}\);
console.log(match);

$(document).keypress(function(e) {
    if(e.which == 13) {
    	var link = "https://www.pc2018.ga/PIX/ufo/${para}/result/";
    	link = link + $("#link").val();
    	location.href = link;
    }
});
</script>
</body>
</html>