<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="navigation">
          <div class="navbar navbar-default navbar-static-top" role="navigation">
              <div class="container">
                  <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/pix/img/symbol.png" class="img-responsive" width="50em"></a>
             </div>
             <div class="navbar-collapse collapse">	
                 <ul class="nav navbar-nav navbar-right scrollto">
                 	 <li><a href="festInfo?idx=${sessionScope.currentEvent }">축제정보</a></li>                          
                     <li><a href="festQuestion?idx=${sessionScope.currentEvent }">축제모듈</a></li>
                     <li><a href="festStat?idx=${sessionScope.currentEvent }">통계</a></li>
                 	 <li><a href="festNotice?idx=${sessionScope.currentEvent }">공지사항</a></li>                          
                     <li><a href="#"><span class="glyphicon glyphicon-user" ></span> ${sessionScope.UserName }</a></li>
                     <li><a href="signOut"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li>   
                     <li><div style="padding-top: 10px; padding-left: 10px">
			        <div class="dropdown pull-right">
					  <button class="btn btn-default dropdown-toggle dropdown-menu-right" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">
					    행사 선택
					    <span class="caret"></span>
					  </button>
					  
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
					  	<c:forEach var="var" items="${sessionScope.eventNames}" varStatus="status">
						    <li><a href="festChange?idx=${var.key}"> ${var.value}</a></li>
					    </c:forEach> 
					  </ul>
					</div>
                     	</div>
                     </li> 
                 </ul>
             </div><!--/.nav-collapse -->
         </div><!--/.container -->  
     </div><!--navbar-default-->
 </section><!--navigation section end here-->
