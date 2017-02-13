<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.11.1, https://mobirise.com -->
  <%@include file="../include/meta.jsp" %>
  <%@include file="../include/css.jsp" %>
  <link rel= "stylesheet" href="${path}assets/form/form.css" type="text/css">
  
  
</head>
<body>
<%@include file="../include/nav.jsp" %>

<section id="header6-0">
    <div class="intro intro12" style="background-image: url(${path}assets/images/3.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row center-content">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <h3>Admin Page</h3>
                    <p><a href="${path}admin/action-list" class="btn btn-lg btn-danger">Go To Action List<i class="icon-location2"></i></a></p>
                    <div class="space40"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="../include/clockSection.jsp" %>

<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-8" style="background-color: rgb(34, 34, 34);">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Book Registration
                        	<div id="wrapper">
						        <form action="${path}admin/book/regist" method="post">
						            <fieldset>
						                <legend>Register Form</legend>
						                <div>
						                    <input type="text" name="title" placeholder="책 제목" required/>
						                </div>
						                <div>
						                    <input type="text" name="writer" placeholder="저자" required/>
						                </div>
						                <div>
						                    <input type="text" name="publisher" placeholder="출판사" required/>
						                </div>
						                <div>
						                    <textarea name="content" placeholder="책 내용" required></textarea>
						                </div>    
						                <div>
						                    <input type="text" name="img" placeholder="책 이미지 URL" required/>
						                </div>
						                <div>
						                    <input type="text" name="rfid" placeholder="내용을 다 채우고 RFID를 찍어주세요." required/>
						                </div>
						                <input type="submit" name="submit" value="Send"/>
						            </fieldset>    
						        </form>
						    </div>
                        
                    </div>
                </div>
            </div>
        </div>
    
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-9" style="background-color: #550044;">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Equipment Registration
                        	<div id="wrapper">
						        <form action="${path}admin/equipment/regist" method="post">
						            <fieldset>
						                <legend>Register Form</legend>
						                <div>
						                    <input type="text" name="title" placeholder="장비 이름" required/>
						                </div>
						                <div>
						                    <textarea name="content" placeholder="장비 설명" required></textarea>
						                </div>    
						                <div>
						                    <input type="text" name="img" placeholder="장비 이미지 URL" required/>
						                </div>
						                <div>
						                    <input type="text" name="rfid" placeholder="내용을 다 채우고 RFID를 찍어주세요." required/>
						                </div>
						                <input type="submit" name="submit" value="Send"/>
						            </fieldset>    
						        </form>
						    </div>
                        
                    </div>
                </div>
            </div>
        </div>    
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-8" style="background-color: rgb(34, 34, 34);">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Book Return
                        	<div id="wrapper">
						        <form action="#" onSubmit="return returnBook();">
						            <fieldset>
						                <legend>Return Form</legend>
						                <div>
						                    <input id="returnBookRfid" type="text" name="rfid" placeholder="RFID를 찍어주세요." required/>
						                </div>
						                <input type="submit" name="submit" value="Send"/>
						            </fieldset>    
						        </form>
						    </div>
                    </div>
                </div>
            </div>
        </div>
</section>


<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-9" style="background-color: #550044;">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Equipment Return
                        	<div id="wrapper">
						        <form action="#" onSubmit="return returnEquipment(event);">
						            <fieldset>
						                <legend>Return Form</legend>
						                <div>
						                    <input type="text" name="rfid" placeholder="RFID를 찍어주세요." required/>
						                </div>
						                <input type="submit" name="submit" value="Send"/>
						            </fieldset>    
						        </form>
						    </div>
                        
                    </div>
                </div>
            </div>
        </div>    
</section>

<section class="mbr-section--bg-adapted mbr-section--relative mbr-after-navbar" id="msg-box11-35" style="background-color: rgb(51, 106, 134);">
    <div class="article elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-uppercase space20" style="color:#ffffff;">관리자에게 드리는 당부의 말씀</h2>
                        </div>
                    </div>
                    <div class="row space20">
                    	<p>1. <span style="color:#ff5555">개인정보</span>는 반드시 보호되어야 합니다. 관리자로서 사명감을 가지고 이를 지켜주세요.</p>
                    	<p>2. 보안 취약점이 있다면 반드시 제작자(이준형)에게 연락바랍니다.</p>
                    	<p>3. 도서 및 기자재의 내용은 수정이 가능합니다. 하지만 삭제는 기능을 구현하지 않았습니다. 삭제를 위해선 콘솔창에서 데이터베이스에 직접 쿼리를 작성해야합니다.
                    	그 정도는 할 수 있을 거라고 믿습니다. 반드시 지켜야 할 것은 <span style="color:#ff5555">DELETE 쿼리를 날리기 전에는 반드시
                    	 SELECT 쿼리를 먼저 작성하여 지금 삭제하려는 그 레코드가 조건에 맞게 선택이 되었는지 먼저 확인해야합니다.</span>
                    	  꼭 지켜주세요! 소중한 데이터가 날아갈 수 있습니다.</p>
                    	<p>4. 회원탈퇴는 지원하지 않으려고 합니다. 그 이유는 <span style="color:#ff5555">대출자에 대한 추적이 어려워지며 데이터베이스에서 
                    	값을 찾아오지 못하는 문제가 발생하기 때문입니다.</span>비슷한 이유로 도서 및 기자재에 대한 DELETE 역시 신중하게 하시고 DELETE한 장비는 action_log 
                    	테이블에서 없애버리세요. action_log 테이블에서 해당 레코드를 삭제하는 작업은 3번 사항을 반드시 준수해주시기 바랍니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="../include/footer.jsp" %>
<%@include file="../include/script.jsp" %>

<script>
var returnBook = function(event) {
	$.ajax({
		url: "${path}admin/return/book/" + $('#returnBookRfid').val(),
		type: "put",
		success: function(data) {
			alert(data.message);
		}
	});
	
	return false;
}

var returnEquipment = function() {
	$.ajax({
		url: "${path}admin/return/equipment/" + $('#returnEquipmentRfid').val(),
		type: "put",
		success: function(data) {
			alert(data.message);
		}
	});
	
	return false;
}
</script>

</body>
</html>