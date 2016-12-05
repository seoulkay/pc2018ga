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
                      		<div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q1_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q2_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q3_img}.png" class="img-responsive" alt="">
                     
                            </div>
                      	</div>
                            <div class="row">
                               <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                                    
                            	${q1.fest_q1_question }<br><br>
                            	<c:forEach items="${q1.optionlist }" var="var" varStatus="status">
                            		<p style="text-align: left; margin:0px; padding:0px">${status.count}. ${var.fest_option_content }</p>
                            	</c:forEach>
                            	
                            </div>
                             <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	     
                            	${q2.fest_q2_question }<br><br>
                            	<c:forEach items="${q2.optionlist }" var="var" varStatus="status">
                            		<p style="text-align: left; margin:0px; padding:0px">${status.count}. ${var.fest_option_content }</p>
                            	</c:forEach>
                
                            </div>
                            
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center; ">
                            	  
                            	${q3.fest_q3_question }<br><br>
                            	<c:forEach items="${q3.optionlist }" var="var" varStatus="status">
                            		<p style="text-align: left; margin:0px; padding:0px">${status.count}. ${var.fest_option_content }</p>
                            	</c:forEach>   	
                            </div>
                            </div>
                            <div class="row">
                      		<div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q4_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q5_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q6_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            </div>
                          <div class="row">
                               <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                                    
                            	${q4.fest_q4_question }<br>
                            	<c:forEach items="${q4.optionlist }" var="var" varStatus="status">
                            		<p style="text-align: left; margin:0px; padding:0px">${status.count}. ${var.fest_option_content }</p>
                            	</c:forEach>
                            	
                
                            </div>
                             <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	${q5.fest_q5_question }<br>
                            	<c:forEach items="${q5.optionlist }" var="var" varStatus="status">
                            		<p style="text-align: left; margin:0px; padding:0px">${status.count}. ${var.fest_option_content }</p>
                            	</c:forEach>
                
                            </div>
                            
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center; ">
                            	${q6.fest_q6_question }<br> 	
                            </div>
                            
                      	</div>
                      	<div class="row">
                      		<div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                            	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q7_img}.png" class="img-responsive" alt="">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                     
                            </div>
                            <div class="col-sm-3" style="margin: 10px; height:200px; vertical-align: middle; text-align: center;">
                     
                            </div>
                      	</div>
                      	<div class="row">
                      		<div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;  ">
                            	${q7.fest_q7_question }<br> 	
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;  ">
                            	
                            </div>
                            <div class="col-sm-3" style="background-color: orange; margin: 10px; height:200px; vertical-align: middle; text-align: center;  ">
                            		
                            </div>
                        </div>
                        </div>
                                        
                    	
                      	
                      	
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