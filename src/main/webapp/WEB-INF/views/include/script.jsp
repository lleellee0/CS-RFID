  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/unicore/js/script.js"></script>
  
 <script>
	$(".navbar-toggle").on("click", function(event) {
		var navToggle = false;
		if(navToggle === false) {
			$("nav").attr("class", $("nav").attr("class") + " scrolled");
			navToggle = true;
		} else {
			$("nav").attr("class", $("nav").attr("class").split(" scrolled")[0]);
			navToggle = false;
		}
 	});

 </script>