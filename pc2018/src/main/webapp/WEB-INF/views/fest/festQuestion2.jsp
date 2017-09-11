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
	<div style="height:2em"></div>
	<div class="row">	
		<table class="table table-bordered table-hover table-condensed">
			<h3>설문조사</h3>
				<tr class="table table_striped">
					<td class="hk3" style="width:10%;">번호</td>
					<td class="hk3" style="width:80%;">질문</td>
					<td class="hk3" style="width:10%;">세부질문</td>
				</tr>
				<c:forEach items="${surveyList}" var="ele">
				<tr style="background-color: #fff;" id="question_${ele.idfest_ufo_questions}" class="table table_striped" style="background: #ddd;">
					<td class="hk4" style="text-align: center;" onclick="showUpdateQuestion('${ele.idfest_ufo_questions}')">${ele.orderq}</td>
					<td class="hk4" onclick="showUpdateQuestion('${ele.idfest_ufo_questions}')">${ele.question}</td>					
					<td class="hk4"><button class="btn" style="background-color:#fd7a02; color:#fff;" onclick="showUpdateDet(${ele.orderq})">세부질문</button></td>
				</tr>
<%-- 					<c:forEach items="${ele.questionOptions}" var="el"> --%>
<!-- 						<tr> -->
<!-- 							<td></td> -->
<%-- 							<td style="color:#999">&nbsp;${el.q_option }</td> --%>
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
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
<div class="modal" id="stampFormModal" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
	   <div class="modal-header" style="background-color: #4fcdb9; color: #ffffff;">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4 id="modal1Title" style="font-weight: 600;">설문조사</h4>
	   </div>	
	   <div class="modal-body">
	 		<form id="updateQuestion" method="post"> 
  			<label style="display:none;">연번</label><input style="display:none;" class="form-control" type="text" id="idfest_ufo_questions" name="idfest_ufo_questions" readonly/>
  			<label style="display:none;">번호</label><input style="display:none;" class="form-control" type="text" id="orderq" name="orderq" readonly/>
  			<label style="display:none;">이벤트코드</label><input style="display:none;" class="form-control" value="${ufo.para}" type="text" name="para" readonly/>
  			<label>질문</label><input class="form-control" type="text" id="question" name="question" maxlength="100"/>
  			</form>
  		</div>
  		<div class="modal-footer">
	    <button type="button" class="btn" data-dismiss="modal" id="stampSubmit" onclick="questionSubmit();">제출</button>
	  	</div>
	</div>
	</div>
</div>
<div class="modal" id="questionDetFormModal" role="dialog">
<div class="modal-dialog">
  <div class="modal-content">
	   <div class="modal-header" style="background-color: #4fcdb9; color: #ffffff;">
	  		<button type="button" class="close" data-dismiss="modal">&times;</button>
	  		<h4 id="modal1Title" style="font-weight: 600;">설문조사 문항</h4>
	   </div>	
	   <form id="updateQuestion" method="post"> 
	   <div class="modal-body" id="updateQuestionWrap">
	 		
  		</div>
  		</form>
  		
  		<div class="modal-footer">
<!-- 	    <button type="button" class="btn" data-dismiss="modal" id="stampSubmit" onclick="questionSubmit();">제출</button> -->
	  	<div class="alert alert-success" role="alert" id="success_msg" style="text-align: left;display: none;">
		  저장되었습니다.
		</div>
		<div class="alert alert-danger" role="alert" id="error_msg" style="text-align: left;display: none;">
		  에러가 발생했습니다.
		</div>
	  	</div>
	</div>
	</div>
</div>
<script>
//질문은 7개가 고정 입니다. 1-5번 객관식 6번 주관식 7번 사진올리기
//새로운 이벤트 창조시. 이니셜라이제이션이 필요합니다.
function showUpdateQuestion(id){
	$("#idfest_ufo_questions").val(id);
	$("#orderq").val($("#question_"+id+" td:nth-child(1)").text());
	$("#question").val($("#question_"+id+" td:nth-child(2)").text());
	
	$("#stampFormModal").modal().show();
}
function questionSubmit(){
	$("#updateQuestion").attr("action", "updateQuestion/");
	$("#updateQuestion").submit();
}
function showUpdateDet(orderq){
	$.post( "getQuestionOptions", {orderq : orderq, para : "${ufo.para}"})
	 .done(function( data ) {
	  var vo = JSON.parse(JSON.stringify(data));
	  //	console.log(vo);
	  	$("#updateQuestionWrap").empty();
	  	for(var i = 0; i < vo.length; i++){
			 $("#updateQuestionWrap").append('<input class="form-control" type="text" value="'+vo[i].q_option+'" id=option_'+vo[i].idfest_ufo_q+'  onblur="updateOption('+vo[i].idfest_ufo_q+' )"/>');
		 }
	 });
	$("#questionDetFormModal").modal().show();
}
function updateOption(id){
	//console.log(id);
	//console.log($("#option_"+id).val())
	
	$.post( "updateQuestionOptions", {idfest_ufo_q : id, q_option : $("#option_"+id).val()})
	 .done(function( data ) {
	  var vo = JSON.parse(JSON.stringify(data));
	  	if(vo == 1){
	  		$("#success_msg").fadeIn("slow");
	  		$("#success_msg").delay(3000).fadeOut("slow");
	  	}else{
	  		$("#error_msg").fadeIn("slow");
	  		$("#error_msg").delay(3000).fadeOut("slow");
	  	}
	 });
}
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