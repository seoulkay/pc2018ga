<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<form action="uploadArticle" method="POST" enctype="multipart/form-data">
	<input type="file" name="file">
	<input type="submit" value="upload">
</form>
</body>
</html>
