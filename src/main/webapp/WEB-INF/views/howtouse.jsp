<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.11.1, https://mobirise.com -->
  <%@include file="include/meta.jsp" %>
  <%@include file="include/css.jsp" %>
  
  
  
</head>
<body>
<%@include file="include/nav.jsp" %>

<section class="mbr-section--bg-adapted mbr-section--relative mbr-after-navbar" id="msg-box11-35" style="background-color: rgb(51, 106, 134);">
    <div class="article elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-uppercase space20" style="color:#ffffff;">대출 및 대여(QR CODE & NFC TAG)</h2>
                        </div>
                    </div>
                    <div class="row space20">
                    	<p>대출 및 대여를 위해 2가지 방법이 존재합니다. 하나는 QR CODE를 이용한 방법이고 다른 하나는 NFC TAG를 이용한 방법입니다. 
                    	아이폰은 정책상 NFC를 지원하지 않기 때문에 아이폰 사용자라면 QR CODE를 이용한 대출을 해주시면 되겠습니다. 안드로이드 사용자라면 
                    	두 방법 중 어떤 방법을 사용하셔도 상관없습니다. 기능은 동일합니다. 
                    	<span style="color:#ff5555">QR CODE를 이용한 방법과 NFC 태그를 이용한 방법 중 하나만 선택하신 후 공통으로 넘어가시면 됩니다.</span></p>
                    </div>
                    <div class="row space20">
                    	<div class="col-md-4 col-md-offset-1">
                        	<img class="space20" src="${path}assets/images/howtouse_qr_1.png" style="width:100%;">
                        	<p><span style="color:#ff5555">[1-(QR CODE)]</span> 먼저 QR CODE를 스캔할 수 있는 앱을 실행시킵니다. 예시로 저는 네이버앱을 켰지만 QR CODE를 스캔할 수 있는 앱이라면 아무거나 좋습니다.</p>
                        </div>
                        <div class="col-md-4 col-md-offset-2">
                        	<img class="space20" src="${path}assets/images/howtouse_qr_2.png" style="width:100%;">
                        	<p><span style="color:#ff5555">[2-(QR CODE)]</span> QR CODE 스캔할 수 있는 앱을 실행시킨 후 책 뒷면 왼쪽 아래에 있는 QR코드를 스캔시켜줍니다.</p>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="col-md-4 col-md-offset-1">
                        	<img class="space20" src="${path}assets/images/howtouse_nfc_1.png" style="width:100%;">
                        	<p><span style="color:#ff5555">[1-(NFC TAG)]</span> 먼저 NFC 기능을 켜야합니다. NFC 기능에는 [카드 모드]와 [읽기/쓰기 P2P 모드]가 존재하며 대출을 이용하기 위해서는 
                        	[읽기/쓰기 P2P 모드]를 선택해주시면 됩니다.</p>
                        </div>
                        <div class="col-md-4 col-md-offset-2">
                        	<img class="space20" src="${path}assets/images/howtouse_nfc_2.png" style="width:100%;">
                        	<p><span style="color:#ff5555">[2-(NFC TAG)]</span> NFC 기능이 켜진 상태에서 스마트폰을 NFC 태그 있는 위치에 댑니다. 사진은 NFC 태그의 위치를 보여주기 위해
                        	뒷면을 보여주고 있으나 구지 뒷면을 대고 인식시킬 필요는 없고 QR CODE가 있는 위치 바로 뒤에 있으니 QR CODE에 스마트폰을 대시면 됩니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="msg-box11-36" style="background-color: rgb(3, 169, 244);">
    <div class="article elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-uppercase space20">대출 및 대여(공통)</h2>
                            <div class="row space20">
		                    	<div class="col-md-3">
		                        	<img class="space20" src="${path}assets/images/howtouse_borrow_1.png" style="width:100%;">
		                        	<p><span style="color:#ff5555">[1-대출]</span> QR CODE 혹은 NFC를 이용해 링크로 이동하셨다면 BORROW 버튼을 눌러 대출이 가능합니다.</p>
		                        </div>
		                        <div class="col-md-3 col-md-offset-1">
		                        	<img class="space20" src="${path}assets/images/howtouse_borrow_2.png" style="width:100%;">
		                        	<p><span style="color:#ff5555">[2-대출확인]</span> BORROW를 누른 후 대출이 정상적으로 이루어졌는지 확인하세요. 본인의 학번 및 이름이 나와있다면 정상적으로 대출이 된 것입니다. 또한 대출된 내용은 Profile에서 확인이 가능합니다.</p>
		                        </div>
		                        <div class="col-md-3 col-md-offset-2">
		                        	<img class="space20" src="${path}assets/images/howtouse_borrow_3.png" style="width:100%;">
		                        	<p><span style="color:#ff5555">[3-대출중인 도서]</span> 대출중인 도서는 반납이 이루어지기 전까지 대출이 불가능합니다. 대출하고 싶으면 대출 중인 사람에게 물어보세요.</p>
		                        </div>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="msg-box11-37" style="background-color: rgb(143, 175, 195);">
    <div class="article elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-uppercase space20">반납</h2>
                            <p>훈련 다녀와서..</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section--bg-adapted mbr-section--relative" id="msg-box11-38" style="background-color: rgb(134, 150, 158);">
    <div class="article elements-content" style="padding-top: 100px; padding-bottom: 100px;">
        
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-uppercase space20">사이트 이용에 관해</h2>
                            <p>기존에 투표를 진행했던 것처럼 대출중인 도서 및 기자재는 누가 대출중인지 나옵니다. 
							하지만 누가 대출중인지 로그인하지 않은 사람도 볼 수 있게 하는 것은 조금 꺼림칙할 것 같다고 생각했습니다. 
							그래서 대출 중인 사람이 누구인지 확인하는 것은 도서 및 기자재의 링크(상세정보라고 하겠습니다.)를 클릭하여 들어가고 나서 확인할 수 있도록 하였습니다.
							 그리고 상세정보를 보기 위해선 반드시 로그인이 필요하도록 구현했습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="include/footer.jsp" %>
<%@include file="include/script.jsp" %>
</body>
</html>