<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="ufoHeaderHtml.jsp" flush="false">
<jsp:param name="param" value="value1"/>
</jsp:include>
    <body data-spy="scroll" data-offset="80">
        <jsp:include page="ufoHeader.jsp" flush="true">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
            <div class="container">
            <div style="height:2em"></div>
            <div class="row">
            <h3>축제정보</h3>
            <div style="height:2em"></div>
            <form id="ufoForm" action="updateUfo" enctype="multipart/form-data" method="post">
            <input type="submit" class="form-control btn btn-warning" style="background-color: #FD7A02; color: #ffffff; font-weight: bold;" value="업데이트!">
            <div style="height:2em"></div>
                    <table class="table table_striped">
                    	<h3>축제 공지사항</h3>
                    	<tr><td class="hk">한줄 공지1</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice1"  maxlength="150">${ufo.ufo_notice1} </textarea></td></tr>
                    	<tr><td class="hk">한줄 공지2</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice2"  maxlength="150">${ufo.ufo_notice2} </textarea></td></tr>
                    	<tr><td class="hk">한줄 공지3</td><td><textarea form="ufoForm" class="form-control" name="ufo_notice3"  maxlength="150">${ufo.ufo_notice3} </textarea></td></tr>
                    	<tr><td class="hk">페이스북 라이브 피드 주소</td><td><input class="form-control" type="text" name="fb_live" value="${ufo.fb_live }"></td></tr>                   		
                   		<tr><td class="hk">페이스북 문의댓글창</td><td><textarea form="ufoForm" class="form-control" name="event_long_description"  maxlength="2500">${ufo.event_long_description }</textarea></td></tr>
                   	</table><hr>
                    <table class="table table_striped">
                    	<h3>이벤트 기본값</h3>
                    	<tr><td class="hk">축제 번호</td><td><input class="form-control" type="text" name="idfest_ufo" value="${ufo.idfest_ufo }" readonly></td></tr>
                    	<tr><td class="hk">축제 코드</td><td><input type="text" class="form-control" name="para" value="${ufo.para }" maxlength="10" readonly></td></tr>
                   		<tr><td class="hk">축제 섹션 구성 (index, modal, info)</td><td><input type="text" class="form-control" name="menu" value="${ufo.menu }" maxlength="100"></td></tr>
                   		<tr><td class="hk">APK</td><td><input type="text" class="form-control" name="apk_name" value="${ufo.apk_name }" maxlength="200"></td></tr>
                   	</table>
                   	<table class="table table_striped">	
                   		<h3>이벤트 정보 블록</h3>
                    	<tr><td class="hk">축제 로고 <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="logo_file"></td></tr>
                    	<tr><td class="hk">축제 메인이미지 <c:if test="${ufo.main_image ne null}"><img src="https://www.ufo79.com/image/${ufo.main_image}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="main_image_file"></td></tr>
                   		<tr><td class="hk">축제 제목</td><td><input class="form-control" type="text" name="title" value="${ufo.title }" maxlength="50"></td></tr>
                   		<tr><td class="hk">축제 기간</td><td><input type="text" class="form-control" name="event_date" value="${ufo.event_date }" maxlength="125"></td></tr>
                   	</table><hr>
                    <table class="table table_striped">	
                   		<tr><td class="hk">축제정보 제목1</td><td><input type="text" class="form-control" name="info_title" value="${ufo.info_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">축제정보 사진1 <c:if test="${ufo.info_info_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_info_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_info_pic_file"></td></tr>
                   		<tr><td class="hk">축제정보 내용1</td><td><textarea form="ufoForm" class="form-control" name="info_info_text" maxlength="1000">${ufo.info_info_text }</textarea></td></tr>
                  	</table><hr>
                   	<table class="table table_striped">		
                   		<tr><td class="hk">축제정보 제목2</td><td><input type="text" class="form-control" name="history_title" value="${ufo.history_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">축제정보 사진2 <c:if test="${ufo.info_hist_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_hist_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_hist_pic_file"></td></tr>
                   		<tr><td class="hk">축제정보 내용2</td><td><textarea form="ufoForm" class="form-control" name="info_hist_text" maxlength="1000">${ufo.info_hist_text }</textarea></td></tr>
                   </table><hr>
                   <table class="table table_striped">			
                   		<tr><td class="hk">축제프로그램 제목</td><td><input type="text" class="form-control" name="program_title" value="${ufo.program_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">축제프로그램 사진 <c:if test="${ufo.info_program_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_program_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_program_pic_file"></td></tr>
                   		<tr><td class="hk">축제프로그램 내용</td><td><textarea form="ufoForm" class="form-control" name="info_program_text" maxlength="3000">${ufo.info_program_text }</textarea></td></tr>
                   </table><hr>
                   <table class="table table_striped">		
                   		<tr><td class="hk">축제위치 제목</td><td><input type="text" class="form-control" name="location_title" value="${ufo.location_title }" maxlength="45"></td></tr>
                   		<tr><td class="hk">축제위치 사진 <c:if test="${ufo.info_location_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_location_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_location_pic_file"></td></tr>
                   		<tr><td class="hk">축제위치 내용</td><td><textarea form="ufoForm" class="form-control" name="info_location_text" maxlength="1000">${ufo.info_location_text }</textarea></td></tr>
                   </table><hr>
                   <table class="table table_striped">		
                   		<tr><td class="hk">축제연락처 사진 <c:if test="${ufo.info_contact_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.info_contact_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="info_contact_pic_file"></td></tr>
                   		<tr><td class="hk">축제연락처 내용</td><td><textarea form="ufoForm" class="form-control" name="info_contact_text" maxlength="1000">${ufo.info_contact_text }</textarea></td></tr>
                   	</table>
                   	<table class="table table_striped">	
                   		<h3>스탬프랠리 블록</h3>
                   		<tr><td class="hk">스탬프 활성화 반경</td><td><input type="text" class="form-control" name="go_rad" value="${ufo.go_rad }" maxlength="20"></td></tr>
                   		<tr><td class="hk">ufo_tag</td><td><input type="text" class="form-control" name="ufo_tag" value="${ufo.ufo_tag }" maxlength="200"></td></tr>
                   		<tr><td class="hk">ufo_go_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_title" maxlength="1000">${ufo.ufo_go_title }</textarea></td></tr>
                   		<tr><td class="hk">ufo_go_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_go_desc" maxlength="1000">${ufo.ufo_go_desc }</textarea></td></tr>
                   		<tr><td class="hk">ufo_qr_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_title" maxlength="1000">${ufo.ufo_qr_title }</textarea></td></tr>
                   		<tr><td class="hk">ufo_qr_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_qr_desc" maxlength="1000">${ufo.ufo_qr_desc }</textarea></td></tr>
                   		<tr><td class="hk">qr_info_title</td><td><input type="text" form="ufoForm" class="form-control" name="qr_info_title" maxlength="45">${ufo.qr_info_title }</td></tr>
                   		<tr><td class="hk">qr_info</td><td><textarea form="ufoForm" class="form-control" name="qr_info" maxlength="1000">${ufo.qr_info }</textarea></td></tr>
                   		<tr><td class="hk">qr_pic <c:if test="${ufo.qr_pic ne null}"><img src="https://www.ufo79.com/image/${ufo.qr_pic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="qr_pic_file"></td></tr>
                    	<tr><td class="hk">ufo_survey_title</td><td><textarea form="ufoForm" class="form-control" name="ufo_survey_title" maxlength="500">${ufo.ufo_survey_title }</textarea></td></tr>
                   		<tr><td class="hk">ufo_survey_desc</td><td><textarea form="ufoForm" class="form-control" name="ufo_survey_desc" maxlength="500">${ufo.ufo_survey_desc }</textarea></td></tr>
                   	</table>
                   	<table class="table table_striped">	
                   		<h3>설문조사 블록</h3>
                   		<tr><td class="hk">q1_img <c:if test="${ufo.q1_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q1_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q1_img_file"></td></tr>
                   		<tr><td class="hk">q2_img <c:if test="${ufo.q2_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q2_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q2_img_file"></td></tr>
                   		<tr><td class="hk">q3_img <c:if test="${ufo.q3_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q3_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q3_img_file"></td></tr>
                   		<tr><td class="hk">q4_img <c:if test="${ufo.q4_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q4_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q4_img_file"></td></tr>
                   		<tr><td class="hk">q5_img <c:if test="${ufo.q5_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q5_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q5_img_file"></td></tr>
                   		<tr><td class="hk">q6_img <c:if test="${ufo.q6_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q6_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q6_img_file"></td></tr>
                   		<tr><td class="hk">q7_img <c:if test="${ufo.q7_img ne null}"><img src="https://www.ufo79.com/image/${ufo.q7_img}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q7_img_file"></td></tr>
                   		<tr><td class="hk">q_coupon_txt</td><td><input type="text" class="form-control" name="q_coupon_txt" value="${ufo.q_coupon_txt }" maxlength="200"></td></tr>
                   		<tr><td class="hk">q_coupon_txt2</td><td><input type="text" class="form-control" name="q_coupon_txt2" value="${ufo.q_coupon_txt2 }" maxlength="200"></td></tr>
                   		<tr><td class="hk">q_coupon_txt3</td><td><input type="text" class="form-control" name="q_coupon_txt3" value="${ufo.q_coupon_txt3 }" maxlength="50"></td></tr>
                   		<tr><td class="hk">q_graphic <c:if test="${ufo.q_graphic ne null}"><img src="https://www.ufo79.com/image/${ufo.q_graphic}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_graphic_file"></td></tr>
                   		<tr><td class="hk">q_coupon_img <c:if test="${ufo.logo ne null}"><img src="https://www.ufo79.com/image/${ufo.logo}" class="img-responsive" alt="" style="width:100px"></c:if></td><td><input class="form-control" type="file" name="q_coupon_img_file"></td></tr>
                    </table>
                </form>
            </div>
            <input type="submit" class="form-control btn btn-warning" style="background-color: #FD7A02; color: #ffffff; font-weight: bold;" value="업데이트!">
        <div style="height:2em"></div>        
        </div>
        <jsp:include page="ufoFooter.jsp" flush="false">
        	<jsp:param name="param" value="value1"/>
        </jsp:include>
    </body>    
</html>