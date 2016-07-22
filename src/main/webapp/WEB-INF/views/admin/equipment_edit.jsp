<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.11.1, https://mobirise.com -->
  <%@include file="../include/meta.jsp" %>
  <%@include file="../include/css.jsp" %>
  <link rel= "stylesheet" href="${path}/assets/form/form.css" type="text/css">
  
  
</head>
<body>
<%@include file="../include/nav.jsp" %>

<section id="header6-0">
    <div class="intro intro12" style="background-image: url(${path}/assets/images/3.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row center-content">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <h3>Admin Page</h3>
                    <p><a href="${path}/admin/action-list" class="btn btn-lg btn-danger">Go To Action List<i class="icon-location2"></i></a></p>
                    <div class="space40"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="../include/clockSection.jsp" %>

<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-9" style="background-color: #550044;">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Equipment Edit
                        	<div id="wrapper">
						        <form action="${path}/admin/equipment/edit/${details.index}" method="post">
						            <fieldset>
						                <legend>Edit Form</legend>
						                <div>
						                    <input type="text" name="title" value="${details.title}" placeholder="장비 이름" required/>
						                </div>
						                <div>
						                    <textarea name="content" placeholder="장비 설명" required>${details.content}</textarea>
						                </div>    
						                <div>
						                    <input type="text" name="img" value="${details.img}" placeholder="장비 이미지 URL" required/>
						                </div>
						                <div>
						                    <input type="text" name="rfid" value="${details.rfid}" placeholder="내용을 다 채우고 RFID를 찍어주세요." required/>
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

<%@include file="../include/footer.jsp" %>
<%@include file="../include/script.jsp" %>

</body>
</html>