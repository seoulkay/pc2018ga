<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
    <body data-spy="scroll" data-offset="80">

       <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
        <div class="divided-50"></div>
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                    					
                    					
                      	<div class="blog-post-wrap">
                            <div class="row">
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            통계 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            통계 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            통계 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            통계 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            통계 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                            	box 1<br>
                
                            </div>
                            
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center; line-height: 200px; font-size: 100px; ">
                            	+      	
                            </div>
                            </div>
                        </div>
                                        
                    	<c:forEach var="var" items="${info}" varStatus="status">
                    	<div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2>${var.idx }</h2>
                                        <span>만든 날짜 ${var.fest_event_info_created_on }</span>
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
                                            <img src="${pageContext.request.contextPath}/resources/pix/img/blog-1.jpg" class="img-responsive" alt="">
                                        </a>
                                        </div>
                                        <div class="col-sm-6">
                                        <h3><a href="#">${var.fest_event_info_title }</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">만든사람 ${var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">태그 ${var.fest_event_info_type }</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">3 Comments</a></li>
                                        </ul>
                                        <p>
                                        	 ${var.fest_event_info_content }
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
    </body>
</html>