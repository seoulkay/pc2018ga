<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIX insert</title>
<link href="/PIX/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/PIX/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
                
</head>
<body style="background-color:#16a085">
<form action="uploadArticle" method="POST" enctype="multipart/form-data">
	<div class="col-sm-12" style="text-align: center">
		<h1>PIX</h1>
	</div>
	<div class="col-sm-4">
	</div>
	<div class="col-sm-4 well">
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*사진</span>
		<input type="file" name="file" class="form-control"><br>
		</div>
		<br>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*사용자</span>
		<input type="text" name="created_by" class="form-control"><br>
		</div>
		<br>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*제목</span>
		<input type="text" name="pix_title" class="form-control"><br>
		</div>
		<br>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*내용</span>
		<input type="text" name="pix_content" class="form-control"><br>
		</div>
		<br>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">태그</span>
		<input type="text" name="pix_tag" class="form-control"><br>
		</div>
		<br>
		<input type="submit" value="PIX it! upload!" class="form-control">
	</div>
	<div class="col-sm-4">
	</div>
</form>
<script src="/PIX/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>