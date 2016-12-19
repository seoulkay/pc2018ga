<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
	<script type="text/jsx" src="${pageContext.request.contextPath}/resources/react/reactApp.jsx"></script>
	<script type="text/jsx" src="${pageContext.request.contextPath}/resources/react/pixGeneral.jsx"></script>
	
    <body data-spy="scroll" data-offset="80">
		
        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
                        	
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">              	
                      	<div class='col lg 12'>
                      		<H1>${ufo.title }</H1>
                      	    <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.logo }.png" class="img-responsive" alt="">      		
                      		<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.main_image }.png" class="img-responsive" alt="">
                            <H3>${ufo.event_date}</H3>
                            <H5>${ufo.event_long_description}</H5>                            
                            <textarea id="long_desc">${ufo.event_long_description }</textarea>
                      	</div>
                                        
                    	
                        
                        <c:forEach var="var" items="${noticeList}" varStatus="status">
                    	<div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>${var.idfest_ufo_notice }</h2>
                                        <span>만든 날짜 <br>${var.date }</span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람 <br>${var.createdBy}</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
<!--                                     	<div class="col-sm-6"> -->
<!--                                         <a href="#"> -->
<%--                                             <img src="${pageContext.request.contextPath}/resources/pix/img/blog-1.jpg" class="img-responsive" alt=""> --%>
<!--                                         </a>  -->
<!--                                         </div> -->
                                        <div class="col-sm-12">
                                        <h3><a href="#" onClick="layer_open('layer2${var.idfest_ufo_notice }',${var.idfest_ufo_notice });return false;">${var.title }
                                        <c:choose>
                                        	<c:when test="${var.voType == 'cont'}">연락처</c:when>
                                        	<c:when test="${var.voType == 'info'}">정보</c:when>
                                        	<c:when test="${var.voType == 'hist'}">역사</c:when>
                                        	<c:when test="${var.voType == 'prog'}">프로그램</c:when>
                                        	<c:when test="${var.voType == 'loca'}">위치</c:when>                                        	
                                        	<c:when test="${var.voType == 'desc'}">${var.title}</c:when>                                        	
                                        </c:choose>
                                        </a></h3>
                                        
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.createdBy}</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        
							            <div class="layer" id="layer${var.idfest_ufo_notice }">
							                <div class="bg" id="bg${var.idfest_ufo_notice }"></div>
							                    <div id="layer2${var.idfest_ufo_notice }" class="pop-layer">
							                        <div class="pop-container">
							                            <div class="pop-conts">
							                            	<form id="formContentFest${var.idfest_ufo_notice }" method="post" action="updateNotice" enctype="multipart/form-data">
							                                <p class="ctxt mb20"><input type="text" name="title" id="notiDisplay${var.idfest_ufo_notice }" value="${var.title }" style="width:100%"></input></p>
							                                <textarea id="noti${var.idfest_ufo_notice }" name="content">${var.content }</textarea>
							                                <input type="hidden" name="idfest_ufo_notice" value="${var.idfest_ufo_notice }">
							                                <input type="file" name="file" class="form-control"><br>
							                                </form>
							                                <div class="btn-r">
							                                	<a href="#" class="sbtn" onClick="submitNoti(${var.idfest_ufo_notice })">수정하기</a>
							                                	<a href="#" class="sbtn" onClick="delNoti(${var.idfest_ufo_notice })">삭제하기</a>
							                                    <a href="#" class="cbtn">닫기</a>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							               </div>
							            <form id="formContentFestDel${var.idfest_ufo_notice }" method="post" action="delNotice">
                                        <input type="hidden" name="idfest_ufo_notice" value="${var.idfest_ufo_notice }">
                                        </form>
                                        	<c:if test="${var.photo_file ne null}">
                                        		<img src="/PIX/resources/pix/img/${var.photo_file}.png" class="img-responsive" alt="" style="width:300px">
                                        	</c:if>
							               	<div><p>${var.content }</p></div>
							               	      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                      	</c:forEach>
                        
                    </div><!--blog-post col-->
                    <jsp:include page="sideBar.jsp" flush="false">
			        	<jsp:param name="param" value="value1"/>
			        </jsp:include>
                </div>
            </div>
        </section><!--blog wrapper-->
        <jsp:include page="ufoFooter.jsp" flush="false">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
                        <script>
// 	                        CKEDITOR.replace('long_desc');
// 	                        CKEDITOR.replace('info_info_text');
// 	                        function divClicked(){
// 	                        	var divHtml = $(this).html();
// 	                        	var editableText = $("<textarea />");
// 	                        	editableText.val(divHtml);
// 	                        	$(this).replaceWith(editableText);
// 	                        	editableText.focus();
// 	                        	editableText.blur(editableTextBlurred);
// 	                        }
	                        
// 	                        function editableTextBlurred(){
// 	                        	var html = $(this).val();
// 	                        	var viewableText = $("<div>");
// 	                        	viewableText.html(html);
// 	                        	$(this).replaceWith(viewableText);
// 	                        	viewableText.click(divClicked);
// 	                        }
	                        
// 	                        $(document).ready(function(){
// 	                        	$("div").click(divClicked);
// 	                        });
                        </script>  	
                        
        <script src="//cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
        <script>         
            function editNoti(param){
            	var dsp = document.getElementById("notiDisplay"+param);
            	var textarea = document.getElementById("noti"+param);
            	var editNoti = document.getElementById("editNoti"+param);
            	var submitNoti = document.getElementById("submitNoti"+param);
            	
            	editNoti.style.display = 'none';
            	dsp.style.display = 'none';
            	submitNoti.style.display = 'block';    	
            	textarea.style.display = "block";
            	
            	CKEDITOR.replace( 'noti'+param );
            }
            
            function submitNoti(param){
            	if(validateForm()){	
            	$('form#formContentFest'+param).submit();
            	alert("수정완료");
            	}
            	return false;
            }
            
            
            function delNoti(param){
            	var r = confirm("삭제하시겠습니까?");
            	if(r == true){
            	$('form#formContentFestDel'+param).submit();
            	alert("삭제완료");
            	} else {
            		alert("취소되었습니다.")
            	} 
            }
            
            
            function submitNotiNew(){
            	if(validateFormNew()){
            	 	$('form#newNoticeForm').submit();
                	alert("새글이 작성되었습니다.");
            	}
            }
            
            function validateForm()
            {
            //타이틀은 없자너	
            //var a=document.forms["newNoticeForm"]["title"].value;
            var c=document.forms["newNoticeForm"]["createdBy"].value;
            var d=document.forms["newNoticeForm"]["para"].value;
            
            if (isNull(c) || isNull(d)){
              alert("필요항목을 작성해 주세요.");
              return false;
              }
            return true;
            }
            
            function validateFormNew()
            {
            var a=document.forms["newNoticeForm"]["title"].value;
            var c=document.forms["newNoticeForm"]["createdBy"].value;
            var d=document.forms["newNoticeForm"]["para"].value;
            
            if (isNull(a) || isNull(c) || isNull(d)){
              alert("필요항목을 작성해 주세요.");
              return false;
              }
            return true;
            }
            
            function isNull(elm)
            { 
                    //Null 체크 함수
                    var elm;
                    return (elm == null || elm == "" || elm == "undefined" || elm == " ") ? true : false
            }
            
            
            
            
            function layer_open(el, para){
                
            	var temp = $('#' + el);
            	var bg = temp.prev().hasClass('bg');    //dimmed 레이어를 감지하기 위한 boolean 변수
            	//document.getElementById('bg'+para).className="bg";
            	
            	if(bg){
            	    $('#layer'+para).fadeIn();   //'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
            	    CKEDITOR.replace( 'noti'+para);
            	}else{
            		alert("레이어드 인풋 에러")
            	    temp.fadeIn();
            	}

            	// 화면의 중앙에 레이어를 띄운다.
            	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
            	else temp.css('top', '0px');
            	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
            	else temp.css('left', '0px');

            	temp.find('a.cbtn').click(function(e){
            	    if(bg){
            	        $('#layer'+para).fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
            	    }else{
            	        temp.fadeOut();
            	    }
            	    e.preventDefault();
            	});

            	$('.layer .bg').click(function(e){  //배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
            	    $('#layer'+para).fadeOut();
            	        e.preventDefault();
            	    });

            	}      
            
        </script>
    </body>    
</html>