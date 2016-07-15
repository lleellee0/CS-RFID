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
    <div class="intro intro12" style="background-image: url(../assets/images/3.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row center-content">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <h3>Admin Page</h3>
                    <p></p>
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
						        <form action="" method="post">
						            <fieldset>
						                <legend>Register Form</legend>
						                <div>
						                    <input type="text" name="first_name" placeholder="First Name"/>
						                </div>
						                <div>
						                    <input type="text" name="last_name" placeholder="Last Name"/>
						                </div>
						                <div>
						                    <input type="password" name="first_name" placeholder="Password"/>
						                </div>
						                <div>
						                    <input type="text" name="email" placeholder="Email"/>
						                </div>
						                <div>
						                    <div class="small">this textarea is just for test so you can see the placeholder working on textarea as well</div>
						                    <textarea name="message" placeholder="Message"></textarea>
						                </div>    
						                <input type="submit" name="submit" value="Send"/>
						            </fieldset>    
						        </form>
						    </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="counters2-8" style="background-color: #550044;">
    <div id="stats2" class="bg-dark" style="padding-top: 120px; padding-bottom: 120px;">
        
        <div class="container">
            <div class="row">
                    <div class="stats2-info">
                    <!-- <span class="count">899</span> 카운트하고 싶으면.. -->
                        <p>
                        	Equipment Registration
                        </p>
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