<%@page import="com.km.yak.util.SessionListener"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

<title>약팔이</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="BHost template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navbar.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="resources/styles/responsive.css">
<script type="text/javascript" src="//code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(window).on("beforeunload", function () {
    	$.ajax({ 
        	type: "POST", 
        	url: "close", 
        	async: false 
        	}); 
    	return;

    });
</script>


</head>
<body>

<!-- calender -->
<div class="super_container">

	<!-- Home -->

	<div class="home">
	
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="resources/images/index.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_icon ml-auto mr-auto d-flex flex-column align-items-center justify-content-center"><div><img src="resources/images/logo.png" alt="https://www.flaticon.com/authors/srip"></div></div>
							
							<div class="home_title">Search the perfect drug</div>
							<div class="domain_search">
								<div class="domain_search_background"></div>
								<form action="drug" class="domain_search_form" id="domain_search_form">
									<!--  <input type="text" class="domain_search_input" placeholder="원하는 의약품을 입력해주세요" required="required"> -->
									<input id="search" class="domain_search_input" type="text" name="keyword" placeholder="원하는 의약품을 입력해주세요 " value="${map.keyword}">
									<div class="domain_search_dropdown d-flex flex-row align-items-center justify-content-center">
										<div class="domain_search_selected"></div>
										<ul>
											<li>.com</li>
											<li>.io</li>
											<li>.net</li>
										</ul>
									</div>
									<button type="submit" class="domain_search_button">search</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Domain Pricing -->

	<div class="domain_pricing">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="domain_pricing_content">
							<h1 style="text-align: center; padding-top: 30px;">가장 많이 검색된 의약품 Top 5</h1>
						
						<ul class="d-flex flex-md-row flex-column align-items-center justify-content-md-between justify-content-center">
							
							
							<c:forEach items="${map.list}" var="row">
							<li><a style="font-size: 20px;" href="drugDetail?drug_name=${row.drug_name}"><span>.</span>${row.drug_name}</a></li>
                                
                        </c:forEach>
							
							
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Why Choose Us -->
<c:forEach items="${map.listt}" var="row">
									<c:if test="${row.state eq 'main'}">
                                <img style="margin-bottom: 10px; border-radius: 0%" alt="User Picture" src="/picture${row.img_dir}" class="img-circle img-responsive">
                        			</c:if>
                        </c:forEach>
	<div class="why">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>약팔이의 장점은?</h2></div>
						<div class="section_subtitle">저희 약팔이는 사용자분들의 편의성에 중점을 두고 개발을 하였습니다</div>
					</div>
				</div>
			</div>
			<div class="row why_row">
				
				<!-- Why Item -->
				<div class="col-lg-4">
					<div class="icon_box_1 text-center">
						<div class="icon_box_1_image ml-auto mr-auto"><img src="resources/images/ban1.png" alt="https://www.flaticon.com/authors/srip"></div>
						<div class="icon_box_1_title">쉽고 정확한 의약품 검색</div>
						<div class="icon_box_1_text">
							<p>사용자에게 쉽고 간편한 의약품 검색서비스를
							제공하여 <br> 보다 편리하게 의약품을 검색하실 수 있습니다.</p>
						</div>
					</div>
				</div>

				<!-- Why Item -->
				<div class="col-lg-4">
					<div class="icon_box_1 text-center">
						<div class="icon_box_1_image ml-auto mr-auto"><img src="resources/images/ban2.png" alt="https://www.flaticon.com/authors/srip"></div>
						<div class="icon_box_1_title">의약품 즐겨찾기</div>
						<div class="icon_box_1_text">
							<p>자주 검색하는 의약품은 즐겨찾기를 사용하여<br>
							빠르고 간편하게 찾아보실 수 있습니다.</p>
						</div>
					</div>
				</div>

				<!-- Why Item -->
				<div class="col-lg-4">
					<div class="icon_box_1 text-center">
						<div class="icon_box_1_image ml-auto mr-auto"><img src="resources/images/ban3.png" alt="https://www.flaticon.com/authors/srip"></div>
						<div class="icon_box_1_title">복용이력 관리</div>
						<div class="icon_box_1_text">
							<p>언제 무슨약을 복용하였는지 달력에 기록하여
							<br> 자신의 복용이력을 쉽게 관리하실 수 있습니다 </p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Pricing -->

	

	<!-- Content Right -->

	

	<!-- Content Left -->

	

	<!-- Footer -->

	<jsp:include page="footer.jsp" />
</div>


</body>
</html>
