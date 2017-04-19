<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
					<div class="col-sm-3">
                        <div class="post-sidebar-box">
                            <form role="form">
                                <input type="text" class="form-control" placeholder="검색어를 입력하세요.">

                            </form>
                        </div><!--sidebar box-->
                        <div class="sidebar-box margin40">
                            <h4>카테고리</h4>
                            <ul class="list-unstyled cat-list">
                                <li> <a href="#">포스터</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">행사안내</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">어린이</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">교통안내</a> <i class="fa fa-angle-right"></i></li>
                            </ul>
                                   	<img src="${pageContext.request.contextPath}/resources/pix/img/${ufo.q_graphic}.png" class="img-responsive" alt="">
                     
                        </div>
                    </div><!--blog sidebar col-->