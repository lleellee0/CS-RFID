<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="menu-13">

        <nav class="navbar-inverse navbar-lg navbar-fixed-top">
            <div class="container" style="height: 80px;">

                <div class="navbar-header mbr-brand mbr-brand--inline">
                    
                    <div class="brandName"><a href="${path}/" class="navbar-brand brand">csems</a></div>
                </div>


                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    
                    <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown1">
                    <c:choose>
                    	<c:when test="${sessionScope.memberVo eq null}">
                    		<a href="${path}/login" style="color:#ffcc00">Login</a>
                    	</c:when>
                    	<c:otherwise>
                    		<c:if test="${sessionScope.memberVo.member_level eq 10}">
                    			<a href="${path}/admin/admin" style="color:#ff0000">admin</a>
                    		</c:if>
                    		<a class="text-white" href="${path}/profile">Profile</a>
                    		<a class="text-white" href="${path}/logout">Logout</a>
                    	</c:otherwise>
                    </c:choose>
                    <a></a><!-- 네비게이션 바 간격주기 -->
                    <a class="text-white" href="${path}/">Home</a>
                    <a class="text-white" href="${path}/list/book/1">list</a>
                    <a class="text-white" href="${path}/howtouse/">how to use</a>
                    <a class="text-white" href="${path}/about/">about</a></li></ul>
                </div>
            </div>
        </nav>

</section>