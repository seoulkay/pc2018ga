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
         <a class="navbar-brand" href="#" style="padding-top: 0"><img src="https://www.pc2018.ga/image/tisImage/dual_logo.png" class="img-responsive" width="100em"></a>
                            </div>
             <div class="navbar-collapse collapse">	
                 <ul class="nav navbar-nav navbar-right scrollto">
                 	 <li><a href="festInfo?idx=${sessionScope.currentEvent }">Looks & Feels</a></li>                          
                     <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Modules<span class="caret"></span></a>
				          <ul class="dropdown-menu">
						    <li><a href="festQuestion?idx=${sessionScope.currentEvent }">스탬프 투어</a></li>
						    <li><a href="festQuestion2?idx=${sessionScope.currentEvent }">설문조사</a></li>
						    <%-- <li><a href="festQuestion3?idx=${sessionScope.currentEvent }">Report</a></li> --%>
					     </ul>
				     </li>
                     <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">History<span class="caret"></span></a>
				          <ul class="dropdown-menu">
						    <li><a href="festStat?idx=${sessionScope.currentEvent }&startNum=0&pageRowNum=10">스탬프 투어 참여내역</a></li>
						    <li><a href="festStat2?idx=${sessionScope.currentEvent }">포토콘테스트 당첨내역</a></li>
						    <li><a href="festStat3?idx=${sessionScope.currentEvent }">설문조사 참여내역</a></li>
						    <li><a href="festStat4?idx=${sessionScope.currentEvent }">통계</a></li>
					     </ul>
				     </li>
<!-- 				     공지사항 모듈 일단 코멘트 -->
<%--                  	 <li><a href="festNotice?idx=${sessionScope.currentEvent }">공지사항</a></li>                           --%>
					  <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Events<span class="caret"></span></a>
				          <ul class="dropdown-menu">
				          	<c:forEach var="var" items="${sessionScope.eventNames}" varStatus="status">
						    <li><a href="festChange?idx=${var.key}"> ${var.value}</a></li>
					    	</c:forEach> 
				          </ul>
				        </li>
                    	<p class="navbar-text navbar-right"><a href="signOut">Logout</a></p>   
                    	<p class="navbar-text navbar-right"><span class="glyphicon glyphicon-user" ></span> ${sessionScope.UserName }</p>
			      </ul>
				      
<!--                     <div class="dropdown pull-right"> -->
<!-- 					</div> -->
<!--                      	</div> -->
                      
                 </ul>
                 		
             </div><!--/.nav-collapse -->
         </div><!--/.container -->  
     </div><!--navbar-default-->
 </section><!--navigation section end here-->
