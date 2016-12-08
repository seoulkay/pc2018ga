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
                            <div id="exampleRec"></div>
                            <a href="#" class="btn-example" onclick="layer_open('layer2');return false;">새로 생성</a>
                            <div id="genCreate"></div>
                      	</div>
                                        
                    	<div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>정보</h2>
                                        <span>만든 날짜 </span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.info_info_pic }.png" class="img-responsive" alt=""></a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">TEXT</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <p>
                                        	 <textarea id="info_info_text">${ufo.info_info_text}</textarea>
                                        </p>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                        
                        <div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>역사</h2>
                                        <span>만든 날짜 </span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.info_hist_pic }.png" class="img-responsive" alt=""></a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">TEXT</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 </a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <div>
                                        	 ${ufo.info_hist_text}
                                        </div>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                        
                        <div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>프로그램</h2>
                                        <span>만든 날짜 </span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.info_program_pic }.png" class="img-responsive" alt=""></a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">TEXT</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <div>
                                        	 ${ufo.info_program_text}
                                        </div>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                        
                        <div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>location</h2>
                                        <span>만든 날짜 </span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.info_location_pic }.png" class="img-responsive" alt=""></a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">TEXT</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <div>
                                        	 ${ufo.info_location_text}
                                        </div>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                        
                        <div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>연락처</h2>
                                        <span>만든 날짜 </span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">만든사람</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">태그</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">3 Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                    	<div class="col-sm-6">
                                        <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.info_contact_pic }.png" class="img-responsive" alt=""></a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">TEXT</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 {var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <div>
                                        	 ${ufo.info_contact_text}
                                        </div>
                                        <p class="text-right">
                                            <a href="blog-post.html" class="btn btn-dark btn-sm">
                                                더보기
                                            </a>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                        
                        
                        
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
                        <script type="text/javascript">
                        
							function layer_open(el){
						
								var temp = $('#' + el);
								var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수
						
								if(bg){
									$('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다. 
								}else{
									temp.fadeIn();
								}
						
								// 화면의 중앙에 레이어를 띄운다.
								if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
								else temp.css('top', '0px');
								if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
								else temp.css('left', '0px');
						
								temp.find('a.cbtn').click(function(e){
									if(bg){
										$('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다. 
									}else{
										temp.fadeOut();
									}
									e.preventDefault();
								});
						
								$('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
									$('.layer').fadeOut();
									e.preventDefault();
								});
						
							}				
						</script>
    </body>    
</html>