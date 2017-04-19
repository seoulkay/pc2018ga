<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UFO79 reader</title>
</head>
<body>
UFO79 Reader ${para }
<input type="text" id="link">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ufo/assets/plugins/jquery-1.12.4.min.js"></script>
<script>

$(document).keypress(function(e) {
    if(e.which == 13) {
    	var link = "https://www.ufo79.com/PIX/ufo/${para}/result/";
    	link = link + $("#link").val();
    	location.href = link;
    }
});
</script>
</body>
</html>