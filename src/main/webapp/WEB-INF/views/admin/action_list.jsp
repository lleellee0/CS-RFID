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

<section class="mbr-section--bg-adapted mbr-section--relative" id="content6-24" style="background-color: rgb(255, 255, 255);">
    <div class="elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="section-head text-center space30" id="list">
                        <h1>Action List</h1>
                    </div>
                    <div class="clearfix"></div>
                    <div class="tab-content">
                        <div id="actionTab" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-md-12">
	                                <table class="table table-striped">
								      <thead>
								        <tr>
								          <th style="width:10%;">#</th>
								          <th style="width:10%;">Type</th>
								          <th style="width:30%;">Title</th>
								          <th style="width:10%;">Action</th>
								          <th style="width:15%;">Who</th>
								          <th style="width:30%;">Time</th>
								        </tr>
								      </thead>
								      <tbody id="actionTable">
								      	<c:forEach items="${actionList}" var="list" varStatus="status">
								      		<tr>
	                                			<th><c:out value="${list.index}"/></th>
	                                			<td><c:out value="${list.type}"/></td>
	                                			<td><c:out value="${list.title}"/></td>
	                                			<td><c:out value="${list.action}"/></td>
	                                			<td><c:out value="${list.name}(${list.std_number})"/></td>
	                                			<td><c:out value="${list.action_date}"/></td>
	                               			</tr>
	                                	</c:forEach>
								      </tbody>
								    </table>
								   <nav>
								      <ul class="pagination" id="actionPage">
<!-- 								        <li class="disabled"><a href="#content6-24" aria-label="Previous" style="margin: 0px;"><span aria-hidden="true">«</span></a></li>-->
								        <c:forEach var="i" begin="1" end="${actionLastPageNumber}">
								        	<li id="actionPage${i}" class="page"><a href="#content6-24" style="margin: 0px;"><c:out value="${i}"/></a></li>
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

<%@include file="../include/footer.jsp" %>
<%@include file="../include/script.jsp" %>

</body>
</html>