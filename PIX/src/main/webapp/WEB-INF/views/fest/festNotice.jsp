<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>

    <body data-spy="scroll" data-offset="80">

        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
        
        
<!--         <div class="divided-50"></div> -->
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                    	<div>
                    					
                    					<p class="text-left" id="BtnShow" style="display: block">
                                            <button onClick="showForm(); return false;" class="btn btn-dark btn-sm" style="width: 100%">
                                                글쓰기
                                            </button>
                                        </p>
                                        <p class="text-left" style="display:none">
                                            <button onClick="hideForm(); return false;" class="btn btn-dark btn-sm">
                                                숨기기
                                            </button>
                                        </p>
                                        
                            <!-- 인픗 시 -->            
                            <div class="blog-post-wrap" id="UfoEventForm" style="display: none">
                          	          
                           			 	
                                        
                                        
<!--                             <form action="UfoEventInput" method="POST" enctype="multipart/form-data"> -->
                            
                            <div class="row">
                            <form id="newNoticeForm" name="newNoticeForm" action="createNotice" method="post">                                
	                           	<input type="text" name="title" id="titleContent" class="form-control" placeholder="제목 입력하세요." required>
	                            <textarea style="display:block;" name="content" id="notiNew" required></textarea>
	                            <input type="hidden" name="createdBy" value="${sessionScope.UserName }">
	                            <input type="hidden" name="para" value="${sessionScope.currentEvent }">
                            </form>
                            <button onClick="submitNotiNew();" class="btn btn-dark btn-sm" style="width: 100%">등록하기</button>
                            </div>
<!--                             </form> -->
                        	</div><!-- 인픗 끝-->
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
                                        <h3><a href="#">${var.title }</a> <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></h3>
                                        
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.createdBy}</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <form id="formContentFest${var.idfest_ufo_notice }" method="post" action="updateNotice">
                                        	 <!--제목 인풋 처리 안이쁘다 -->
                                        	 <input type="text" name="title${var.idfest_ufo_notice }" value=${var.title }></input>
                                        	 <div id="notiDisplay${var.idfest_ufo_notice }">${var.content }</div>
                                        	 <input type="hidden" name="idfest_ufo_notice" value="${var.idfest_ufo_notice }">
                                        	 <textarea style="display:none;" name="content" id="noti${var.idfest_ufo_notice }" >${var.content }</textarea>
                                       	</form>
                                            <a href="javascript:void(0)" id="editNoti${var.idfest_ufo_notice }" onClick="editNoti(${var.idfest_ufo_notice })" class="btn btn-dark btn-sm">
                                                수정하기
                                            </a>
                                            <a href="javascript:void(0)" id="submitNoti${var.idfest_ufo_notice }" onClick="submitNoti(${var.idfest_ufo_notice })" class="btn btn-dark btn-sm" style="display:none;">
                                              	수정등록
                                            </a>
                                       		<a href="javascript:void(0)" id="delNoti${var.idfest_ufo_notice }" onClick="delNoti(${var.idfest_ufo_notice })" class="btn btn-dark btn-sm">
                                                삭제하기
                                            </a>
                                        <form id="formContentFestDel${var.idfest_ufo_notice }" method="post" action="delNotice">
                                        	 <input type="hidden" name="idfest_ufo_notice" value="${var.idfest_ufo_notice }">
                                        </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                      	</c:forEach>
                        <ul class="pager">
                            <li><a href="#">Previous Page</a></li>
                            <li><a href="#">Next Page</a></li>
                        </ul>
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
            	$('form#formContentFestDel'+param).submit();
            	alert("삭제완료");
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
            
            CKEDITOR.replace('notiNew');
        </script>
        
    </body>
</html>