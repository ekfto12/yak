<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navbar.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles/contact.css">
<link rel="stylesheet" type="text/css" href="resources/styles/contact_responsive.css">
<title>약팔이 - 광고 문의</title>
</head>
<body>

<div class="super_container">

	<!-- Home -->

	<div class="homeee">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="homeee_content">
						<div class="homeee_image"><img src="resources/images/contact.png" alt=""></div>
						<div class="homeee_title">광고 문의</div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">
				
				<!-- Contact Info -->
				<div class="col-lg-4">
					<div class="contact_info_container">
						<div class="contact_title">광고 문의</div>
						<div class="contact_text">
							<p>귀사의 보다 효율적이고 강력한 마케팅을 위해 저희 약팔이 측에서는 홍보대책을 운영하고 있습니다.
								정확한 사항은 메일을 통한 문의로 연락주십시오.</p>
						</div>
						<div class="logo contact_logo"><a href="#"><span>약</span>팔이</a></div>
						<div class="contact_info">
							<ul>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>주소</div></div>
									<div>경기도 의정부시 서부로 545 경민대학교</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>Phone</div></div>
									<div>010-9208-5293</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>E-mail</div></div>
									<div>ghkdwpqndtls@naver.com</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Contact Form -->
				<div class="col-lg-8 contact_form_col">
					<div class="contact_form_container">
						<div class="contact_title">정보 입력</div>
						<form action="#" class="contact_form" id="contact_form">
							<div class="row contact_row">
								<div class="col-lg-6"><input type="text" class="contact_input" placeholder="Company Name" required="required"></div>
								<div class="col-lg-6"><input type="email" class="contact_input" placeholder="E-mail" required="required"></div>
								<div class="col-12"><input type="text" class="contact_input" placeholder="Title" required="required"></div>
								<div class="col-12"><textarea class="contact_input contact_textarea" placeholder="Message" required="required"></textarea></div>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="contact_button trans_200">send</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="footer.jsp" />
</div>


<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="resources/js/contact.js"></script>
</body>
</html>