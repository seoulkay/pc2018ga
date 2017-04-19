/**
 * 
 */

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
            	if(validateForm(param)){	
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
            
            function validateForm(param)
            {
            //타이틀은 없자너	
            var a=document.forms["formContentFest"+param]["title"].value;
            //var c=document.forms["newNoticeForm"]["createdBy"].value;
            //var d=document.forms["newNoticeForm"]["para"].value;
            
            if (isNull(a)){
              alert("필요항목을 작성해 주세요.");
              return false;
              }
            return true;
            }
            
            function validateFormNew()
            {
            var a=document.forms["newNoticeForm"]["title"].value;
            //var c=document.forms["newNoticeForm"]["createdBy"].value;
            //var d=document.forms["newNoticeForm"]["para"].value;
            
            if (isNull(a)){
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
            	if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()+'px');
            	else temp.css('top', '0px');
            	if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
            	else temp.css('left', '0px');

            	
            	
            	//1000보다 작으면 위드가 100프로인 에디트 창
            	if(window.screen.availWidth < 1000) {
            		temp.css('width', '100%');
            		temp.css('margin')
            		//var body = document.body;
                	//body.css('overflow', 'hidden');
            	}
            	
            	
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