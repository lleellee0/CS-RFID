<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="summernote">내용을 입력해주세요.</div>

<!-- For summernote -->
<!-- include libries(jQuery, bootstrap, fontawesome) -->
<script src="//code.jquery.com/jquery-1.9.1.min.js"></script> 
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet"> 
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script> 
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}assets/summernote/summernote.css" rel="stylesheet">
<script src="${path}assets/summernote/summernote.min.js"></script>
<script src="${path}assets/summernote/lang/summernote-ko-KR.js"></script>
<script>
	$(document).ready(function() {
	  $('#summernote').summernote({
	    lang: 'ko-KR' // default: 'en-US'
	  });
	});
</script>
