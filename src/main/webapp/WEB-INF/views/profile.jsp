<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!-- Site made with Mobirise Website Builder v2.11.1, https://mobirise.com -->
<%@include file="include/meta.jsp"%>
<%@include file="include/css.jsp"%>
<link rel="stylesheet" href="${path}assets/form/form.css"
	type="text/css">


</head>
<body>
	<%@include file="include/nav.jsp"%>

	<section id="header6-0">
		<div class="intro intro12"
			style="background-image: url(${path}assets/images/3.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row center-content">
					<div class="col-md-10 col-md-offset-1 text-center">
						<h3>Profile Page</h3>
						<p><a href="#counters2-9" class="btn btn-lg btn-danger">Change Password<i class="icon-location2"></i></a></p>
						<div class="space40"></div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="mbr-section--bg-adapted mbr-section--relative"
		id="counters2-8" style="background-color: rgb(34, 34, 34);">
		<div id="stats2" class="bg-dark"
			style="padding-top: 120px; padding-bottom: 120px;">

			<div class="container">
				<div class="row space30">
					<div class="stats2-info">
						<!-- <span class="count">899</span> 카운트하고 싶으면.. -->
						<p>Your Information</p>
						<p>ID : ${sessionScope.memberVo.id}</p>
						<p>Student No. : ${sessionScope.memberVo.std_number}</p>
						<p>Name : ${sessionScope.memberVo.name}</p>
					</div>
				</div>
				<div class="row space30">
					<div class="stats2-info">
						<p>대출중인 도서</p>
						<c:forEach items="${bookList}" var="list" varStatus="status">
							<p>
								<a href="${path}list/book/details/${list.index}">${list.title}</a>
							</p>
						</c:forEach>
					</div>
				</div>
				<div class="row space30">
					<div class="stats2-info">
						<p>대여중인 기자재</p>
						<c:forEach items="${equipmentList}" var="list" varStatus="status">
							<p>
								<a href="${path}list/equipment/details/${list.index}">${list.title}</a>
							</p>
						</c:forEach>
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
                        	Change Password
                        	<div id="wrapper">
						        <form action="${path}change-password" method="post">
						            <fieldset>
						                <legend>Input Form</legend>
						                <div>
						                    <input type="password" name="current" placeholder="현재 비밀번호" required/>
						                </div>
						                <div>
						                    <input type="password" id="new" name="new" placeholder="새 비밀번호" required/>
						                </div>
						                <div>
						                    <input type="password" name="new_confirm" placeholder="새 비밀번호 확인" required 
						                    data-equal-id="new"/>
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
	<%@include file="include/footer.jsp"%>
	<%@include file="include/script.jsp"%>

<script>
$('[data-equal-id]').on('input', function() {
    var to_confirm = $(this);
    var to_equal = $('#' + to_confirm.data('equalId'));

    if(to_confirm.val() != to_equal.val())
        this.setCustomValidity('새 비밀번호화 새 비밀번호 확인은 같아야 합니다.');
    else
        this.setCustomValidity('');
});
</script>

</body>
</html>