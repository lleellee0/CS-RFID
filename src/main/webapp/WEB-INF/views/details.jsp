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
<section id="msg-box5-8" style="background-color: #dddddd">
    <div class="elements-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row center-content">
                        <div class="col-md-4" style="padding-top:15px;padding-bottom:15px;">
                            	<img src='<c:out value="${details.img}"/>' style="width:100%;">
                        </div>
                        <div class="col-md-8">
                            <h2 class="text-uppercase space20"><c:out value="${details.title}"/></h2>
                            <c:if test="${type eq 'book'}">
                            	<h3 class="space20"><c:out value="${details.writer}/${details.publisher}"/></h3>
                            </c:if>
                            
                            
                            <c:choose>
								<c:when test="${details.borrowed_member_index eq 0}">
									<c:choose>
										<c:when test="${type eq 'book'}">
											<h4 class="space30 enabled">대출가능</h4>
										</c:when>
										<c:otherwise>
											<h4 class="space30 enabled">대여가능</h4>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${type eq 'book'}">
											<h4 class="space30 disabled">대출중(<c:out value="${memberVo.std_number}, ${memberVo.name}"/>)</h4>
										</c:when>
										<c:otherwise>
											<h4 class="space30 disabled">대여중(<c:out value="${memberVo.std_number}, ${memberVo.name}"/>)</h4>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
							<c:out value="${errorMessage}"/>
                            <p><c:out value="${details.content}"/></p>
                            <div class="space30"></div>
                            	<c:choose>
									<c:when test="${type eq 'book'}">
										<c:if test="${sessionScope.memberVo.member_level eq 10}">
				                   			<div><a href="${path}/admin/book/edit/${details.index}" class="btn btn-primary">Edit</a></div>
				                   		</c:if>
									</c:when>
									<c:otherwise>
										<c:if test="${sessionScope.memberVo.member_level eq 10}">
				                   			<div><a href="${path}/admin/equipment/edit/${details.index}" class="btn btn-primary">Edit</a></div>
				                   		</c:if>
									</c:otherwise>
								</c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<iframe src="${path}/pokemon" width="100%" height="1000px"></iframe>




<%@include file="include/footer.jsp" %>
<%@include file="include/script.jsp" %>

</body>
</html>