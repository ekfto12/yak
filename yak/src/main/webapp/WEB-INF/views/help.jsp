<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navbar.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles/services.css">
<link rel="stylesheet" type="text/css" href="resources/styles/services_responsive.css">
<script type="text/javascript">
	function alarm() {
		alert("지금은 운영시간이 아닙니다.");
	}
</script>
<title>약팔이 - 1:1문의</title>
</head>
<body>

<div class="super_container">
	

	<!-- Home -->

	<div class="homeeee">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="homeeee_content">
						<div class="homeeee_image"><img src="resources/images/services.png" alt=""></div>
						<div class="homeeee_title">1:1 문의</div>		
					</div>
				</div>
			</div>
		</div>
	</div>\

	<!-- Services -->

	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center"><h2>무엇이든지 물어보세요!</h2></div>
				</div>
			</div>
			<div class="row icon_boxes_row">
				
				<!-- Icon Box -->
				<a href = "#" onclick = "alarm();"><img src="resources/images/kakao.png"></a>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<h2>전화문의 010-9208-5293</h2>

				<!-- Icon Box -->
				<!-- <div class="col-xl-4 col-md-6">
					<div class="icon_box">
						<div class="ib_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="ib_icon"><img src="images/kakao.png" alt="https://www.flaticon.com/authors/srip"></div>
							<div class="ib_title">Cloud Hosting</div>
						</div>
						<div class="ib_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat.</p>
						</div>
					</div>
				</div>

				Icon Box
				<div class="col-xl-4 col-md-6">
					<div class="icon_box">
						<div class="ib_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="ib_icon"><img src="images/icon_10.svg" alt="https://www.flaticon.com/authors/srip"></div>
							<div class="ib_title">Cloud Hosting</div>
						</div>
						<div class="ib_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat.</p>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</div>

	<!-- Footer -->
<jsp:include page="footer.jsp" />
	
</div>

<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/styles/bootstrap-4.1.2/popper.js"></script>
<script src="resources/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="resources/plugins/greensock/TweenMax.min.js"></script>
<script src="resources/plugins/greensock/TimelineMax.min.js"></script>
<script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="resources/plugins/greensock/animation.gsap.min.js"></script>
<script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="resources/plugins/easing/easing.js"></script>
<script src="resources/plugins/progressbar/progressbar.min.js"></script>
<script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="resources/js/services.js"></script>
</body>
</html>