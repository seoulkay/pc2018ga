<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIX insert</title>
<link href="/PIX/resources/pix/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/PIX/resources/pix/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/pix/js/jquery.min.js"></script>        
                      
</head>
<body style="background-color:#3498db">
<form action="festLoginAction" method="POST" enctype="multipart/form-data">
	<div class="col-sm-12" style="text-align: center; color: #bdc3c7">
		<h1> 강원 페스티발 어드민 로그인 </h1>
	</div>
	<div class="col-sm-4">
	</div>
	<div class="col-sm-4 well">
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*아이디</span>
		<input type="text" name="id" class="form-control"><br>
		</div>
		<br>
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="basic-addon1">*비밀번호</span>
		<input type="password" name="password" class="form-control"><br>
		</div>
		<br>
		<input type="checkbox" id="idSaveCheck"> 아이디 기억하기
		<span style="float: right;"><a href="#">비밀번호 찾기</a></span>
		<br>
		<br>
		<input type="submit" value="로그인" class="form-control">
	</div>
	<div class="col-sm-4">
	</div>
</form>
<script src="/PIX/resources/pix/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var userInputId = getCookie("userInputId");
    $("input[name='id']").val(userInputId); 
     
    if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
</script>
</body>
</html>