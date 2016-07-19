<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.11.1, https://mobirise.com -->
  <%@include file="include/meta.jsp" %>
  <%@include file="include/css.jsp" %>
  
  <style>
  .enabled {
  	color: #00ccff;
  }
  .disabled {
  	color: #ff9900;
  }
  </style>
  
  
</head>
<body>
  <%@include file="include/nav.jsp" %>

<section class="mbr-slider mbr-section mbr-section--no-padding carousel slide mbr-after-navbar" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-27" style="background-color: rgb(255, 255, 255);">
    <div class="mbr-section__container">
        <div>
            <ol class="carousel-indicators">
                <li data-app-prevent-settings="" data-target="#slider-27" class="active" data-slide-to="0"></li><li data-app-prevent-settings="" data-target="#slider-27" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider-27" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(${path}/assets/images/13-fhd.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--center-left mbr-box__magnet--sm-padding">
                    <div class="mbr-overlay"></div>                        
                        <div class=" container">
                            
                            <div class="row">
                                <div class="col-md-9">  

                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">${topThreeBooksList[0].title}</h1>
									<h2 class="mbr-hero__subtext">${topThreeBooksList[0].writer}/${topThreeBooksList[0].publisher}</h2>
                                    <p class="mbr-hero__subtext">${topThreeBooksList[0].content}</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--left">
                                	<a class="mbr-buttons__btn btn btn-lg btn-primary" href="${path}/list/book/details/${topThreeBooksList[0].index}">Details</a>
                                </div>
                                </div>
                                <div class="col-md-3">
                                	<img src="${topThreeBooksList[0].img}" style="width:100%;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(${path}/assets/images/4.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--center-center mbr-box__magnet--sm-padding">
                    <div class="mbr-overlay"></div>                        
                        <div class=" container">
                            
                            <div class="row">
                            	<div class="col-md-3">
                                	<img src="${topThreeBooksList[1].img}" style="width:100%;">
                                </div>
                            
                                <div class=" col-md-9">  

                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">${topThreeBooksList[1].title}</h1>
									<h2 class="mbr-hero__subtext">${topThreeBooksList[1].writer}/${topThreeBooksList[1].publisher}</h2>
                                    <p class="mbr-hero__subtext">${topThreeBooksList[1].content}</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center">
                                	<a class="mbr-buttons__btn btn btn-lg btn-primary" href="${path}/list/book/details/${topThreeBooksList[1].index}">Details</a>
                                </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(${path}/assets/images/15-revert-fhd.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--center-right mbr-box__magnet--sm-padding">
                    <div class="mbr-overlay"></div>                        
                        <div class=" container">
                            
                            <div class="row">
                                <div class=" col-md-9">  

                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">${topThreeBooksList[2].title}</h1>
									<h2 class="mbr-hero__subtext">${topThreeBooksList[2].writer}/${topThreeBooksList[2].publisher}</h2>
                                    <p class="mbr-hero__subtext">${topThreeBooksList[2].content}</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--left mbr-buttons--right"><a class="mbr-buttons__btn btn btn-lg btn-primary" href="${path}/list/book/details/${topThreeBooksList[2].index}">Details</a></div>
                                </div>
                                <div class="col-md-3">
                                	<img src="${topThreeBooksList[2].img}" style="width:100%;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-27">
                <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-27">
                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="content6-24" style="background-color: rgb(255, 255, 255);">
    <div class="elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="section-head text-center space30" id="list">
                        <h1>List</h1>
                    </div>
                    <div class="clearfix"></div>
                    <ul class="nav nav-tabs">
                    <li id="bookTabButton" class="tabButton active"><a data-toggle="tab" href="#bookTab" aria-expanded="true">Books</a></li>
                    <li id="equipmentTabButton" class="tabButton"><a data-toggle="tab" href="#equipmentTab" aria-expanded="false">Equipments</a></li></ul>

                    <div class="tab-content">
                        <div id="bookTab" class="tab-pane fade in active">
                            <h3 class="space20">Books</h3>
                            <div class="row">
                                <div class="col-md-12">
	                                <table class="table table-striped">
								      <thead>
								        <tr>
								          <th style="width:10%;">#</th>
								          <th style="width:40%;">제목</th>
								          <th style="width:15%;">저자</th>
								          <th style="width:15%;">출판사</th>
								          <th style="width:20%;">대출상태</th>
								        </tr>
								      </thead>
								      <tbody id="bookTable">
								      	<c:forEach items="${bookList}" var="list" varStatus="status">
								      		<tr>
	                                			<th>${list.index}</th>
	                                			<td><a href="${path}/list/book/details/${list.index}" class="screenshot" 
	                                			rel="${list.img}" title="${list.content}">${list.title}</a></td>
	                                			<td>${list.writer}</td>
	                                			<td>${list.publisher}</td>
	                                			<c:choose>
	                                				<c:when test="${list.borrowed_member_index eq 0}">
	                                					<td class="enabled">대출가능</td>
	                                				</c:when>
	                                				<c:otherwise>
	                                					<td class="disabled">대출중</td>
	                                				</c:otherwise>
	                                			</c:choose>
	                               			</tr>
	                                	</c:forEach>
								      </tbody>
								    </table>
								   <nav>
								      <ul class="pagination" id="bookPage">
<!-- 								        <li class="disabled"><a href="#content6-24" aria-label="Previous" style="margin: 0px;"><span aria-hidden="true">«</span></a></li>-->
								        <c:forEach var="i" begin="1" end="${bookLastPageNumber}">
								        	<li id="bookPage${i}" class="page"><a href="#content6-24" style="margin: 0px;">${i}</a></li>
								        </c:forEach>

<!-- 								        <li><a href="#" aria-label="Next" style="margin: 0px;"><span aria-hidden="true">»</span></a></li>-->
								     </ul>
								   </nav>
                                </div>
                            </div>
                        </div>

                        <div id="equipmentTab" class="tab-pane fade">
                            <h3 class="space20">Equipments</h3>
                            <div class="row">
                                <div class="col-md-12">
	                                <table class="table table-striped">
								      <thead>
								        <tr>
								          <th style="width:10%;">#</th>
								          <th style="width:60%;">제목</th>
								          <th style="width:30%;">대출상태</th>
								        </tr>
								      </thead>
								      <tbody id="equipmentTable">
								      	<c:forEach items="${equipmentList}" var="list" varStatus="status">
								      		<tr>
	                                			<th>${list.index}</th>
	                                			<td><a href="${path}/list/equipment/details/${list.index}" class="screenshot" 
	                                			rel="${list.img}" title="${list.content}">${list.title}</a></td>
	                                			<c:choose>
	                                				<c:when test="${list.borrowed_member_index eq 0}">
	                                					<td class="enabled">대여가능</td>
	                                				</c:when>
	                                				<c:otherwise>
	                                					<td class="disabled">대여중</td>
	                                				</c:otherwise>
	                                			</c:choose>
	                               			</tr>
	                                	</c:forEach>
								      </tbody>
								    </table>
								   <nav>
								      <ul class="pagination" id="equipmentPage">
<!-- 								        <li class="disabled"><a href="#content6-24" aria-label="Previous" style="margin: 0px;"><span aria-hidden="true">«</span></a></li>-->
								        <c:forEach var="i" begin="1" end="${equipmentLastPageNumber}">
								        	<li id="equipmentPage${i}" class="page"><a href="#content6-24" style="margin: 0px;">${i}</a></li>
								        </c:forEach>

<!-- 								        <li><a href="#" aria-label="Next" style="margin: 0px;"><span aria-hidden="true">»</span></a></li>-->
								     </ul>
								   </nav>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="include/footer.jsp" %>
<%@include file="include/script.jsp" %>

<script>
$(".pagination li a").on("mouseover", function(event) {
	$(event.target).css("margin", "0px 5px");
});
$(".pagination li a").on("mouseout", function(event) {
	$(event.target).css("margin", "0px");
});
$(".pagination li a span").on("mouseover", function(event) {
	$($(event.target).closest("a")).css("margin", "0px 5px");
});
$(".pagination li a span").on("mouseout", function(event) {
	$($(event.target).closest("a")).css("margin", "0px");
});

function requestBookPage(page) {
	$.ajax({
	    url : "${path}/list/book",
	    dataType : "json",
	    type : "post",
	    data : {"page":page, "type":"book"},
	    success: function(data) {
	        $('#bookTable').empty();
	        var code = "";
	        console.log(Object.keys(data).length);
	        for(var i = 0, len = Object.keys(data).length; i < len;i++) {
	        	code += "<tr>";
	        	code += "<th>" + data[i][0] + "</th>";
	        	code += "<td><a href='${path}/list/book/details/" + data[i][0] + "' class='screenshot' ";
	        	code += "rel='" + data[i][1] + "' title='" + data[i][2] + "'>" + data[i][3] + "</a></td>";
	        	code += "<td>" + data[i][4] + "</td>";
	        	code += "<td>" + data[i][5] + "</td>";
	        	if(data[i][6] === "enabled")
	        		code += "<td class='enabled'>대출가능 </td>";
	        	else
	        		code += "<td class='disabled'>대출중 </td>";
	        	code += "</tr>"
	        }
			$('#bookTable').html(code);
			console.log(data[5]);
			screenshotPreview();	// 미리보기 이벤트 등록
			window.history.replaceState(null, "", "${path}/list/book/" + page);	// URL 변경
			validateByUrl();
	    },
	    error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"error:"+error);
	    }
	}); 
}

$("#bookTab").on("click", ".pagination .page a", function(event) {
	console.log("책 페이지 이벤트 발생");
	requestBookPage($(event.target).text());
	$("#bookTab .pagination li").removeClass("active");
	$(event.target).closest("li").addClass("active");
});



function requestEquipmentPage(page) {
	$.ajax({
	    url : "${path}/list/equipment",
	    dataType : "json",
	    type : "post",
	    data : {"page":page, "type":"equipment"},
	    success: function(data) {
	        $('#equipmentTable').empty();
	        var code = "";
	        console.log(Object.keys(data).length);
	        for(var i = 0, len = Object.keys(data).length; i < len;i++) {
	        	code += "<tr>";
	        	code += "<th>" + data[i][0] + "</th>";
	        	code += "<td><a href='${path}/list/equipment/details/" + data[i][0] + "' class='screenshot' ";
	        	code += "rel='" + data[i][1] + "' title='" + data[i][2] + "'>" + data[i][3] + "</a></td>";
	        	if(data[i][4] === "enabled")
	        		code += "<td class='enabled'>대여가능 </td>";
	        	else
	        		code += "<td class='disabled'>대여중 </td>";
	        	code += "</tr>"
	        }
			$('#equipmentTable').html(code);
			console.log(data[5]);
			screenshotPreview();	// 미리보기 이벤트 등록
			window.history.replaceState(null, "", "${path}/list/equipment/" + page);	// URL 변경
			validateByUrl();
	    },
	    error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"error:"+error);
	    }
	}); 
}

$("#equipmentTab").on("click", ".pagination .page a", function(event) {
	console.log("장비 페이지 이벤트 발생");
	requestEquipmentPage($(event.target).text());
	$("#equipmentTab .pagination li").removeClass("active");
	$(event.target).closest("li").addClass("active");
});

function validateByUrl() {
	var url = (window.location.pathname);
	var urlSplit = url.split('/');
	var type = urlSplit[urlSplit.length-2];
	var page = urlSplit[urlSplit.length-1];
	
	$(".page").removeClass("active");
	$("#" + type + "Page" + page).addClass("active");
	
	// 탭 버튼 변경
	$(".tabButton").removeClass("active");
	$("#" + type + "TabButton").addClass("active");
	
	// 탭 화면 변경
	$(".tab-pane").removeClass("in");
	$(".tab-pane").removeClass("active");
	$("#" + type + "Tab").addClass("in");
	$("#" + type + "Tab").addClass("active");
}


$(document).ready(function() {
	validateByUrl();
});

$("#bookTabButton a").on("click", function(event) {
	requestBookPage(1);
//	validateByUrl();
//	$("#bookTab .pagination li").removeClass("active");
//	$(event.target).closest("li").addClass("active");
});

$("#equipmentTabButton a").on("click", function(event) {
	requestEquipmentPage(1);
//	validateByUrl();
//	$("#bookTab .pagination li").removeClass("active");
//	$(event.target).closest("li").addClass("active");
});
</script>
<script src="${path}/assets/js/main.js"></script>

</body>
</html>