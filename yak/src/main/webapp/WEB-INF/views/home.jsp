<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!DOCTYPE html>
<html>
<head>
<title>약팔이</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="BHost template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="resources/styles/responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center justify-content-start trans_400">
			<div class="logo"><a href="#"><span>약</span>팔이</a></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-2">
						<nav class="main_nav">
							<ul class="d-flex flex-row align-items-center justify-content-start">
								<li class="active"><a href="index.html">Home</a></li>
								<li><a href="about.html">Search</a></li>
								<li><a href="services.html">홈페이지  소개</a></li>
								<li><a href="blog.html">문의</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="header_right d-flex flex-row align-items-center justify-content-start">

				<!-- Header Links -->
				<div class="header_links">
					<ul class="d-flex flex-row align-items-center justify-content-start">
						<li><a href="#">Webmail</a></li>
						<li><a href="#">Chat</a></li>
						<li><a href="#">Login</a></li>
					</ul>
				</div>

				<!-- Phone -->
				<div class="phone d-flex flex-row align-items-center justify-content-start">
					<i class="fa fa-power-off" aria-hidden="true"></i>
					<div>Login</div>
				</div>

				<!-- Hamburger -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>	
		</div>
	</header>

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center">
			<div class="menu_nav trans_500">
				<ul class="text-center">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">Search</a></li>
					<li><a href="services.html">홈페이지 소개</a></li>
					<li><a href="blog.html">문의</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="phone menu_phone d-flex flex-row align-items-center justify-content-start">
				<i class="fa fa-power-off" aria-hidden="true"></i>
				<div>Login</div>
			</div>
		</div>
	</div>

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
								<form action="#" class="domain_search_form" id="domain_search_form">
									<input type="text" class="domain_search_input" placeholder="원하는 의약품을 입력해주세요" required="required">
									<div class="domain_search_dropdown d-flex flex-row align-items-center justify-content-center">
										<div class="domain_search_selected"></div>
										<ul>
											<li>.com</li>
											<li>.io</li>
											<li>.net</li>
										</ul>
									</div>
									<button class="domain_search_button">search</button>
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
							<li><a href="#"><span>.</span>의약품<span>1</span></a></li>
							<li><a href="#"><span>.</span>의약품<span>2</span></a></li>
							<li><a href="#"><span>.</span>의약품<span>3</span></a></li>
							<li><a href="#"><span>.</span>의약품<span>4</span></a></li>
							<li><a href="#"><span>.</span>의약품<span>5</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Why Choose Us -->

	<div class="why">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>Why Choose us?</h2></div>
						<div class="section_subtitle">Ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque</div>
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
							<p>약팔이는 사용자들에게 쉽고 간편한 의약품 검색서비스를 <br>
							제공함으로써 보다 편리하게 의약품을 검색하실 수 있습니다.</p>
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

	<div class="pricing">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>The package 4 you</h2></div>
						<div class="section_subtitle">Ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque</div>
					</div>
				</div>
			</div>
			<div class="row pricing_row">
				
				<!-- Pricing Item -->
				<div class="col-lg-4">
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
									<defs>
										<linearGradient id="grad_1">
											<stop offset="0%" stop-color="#487fee" />
											<stop offset="100%" stop-color="#b632fa" />
										</linearGradient>
										<linearGradient id="grad_2">
											<stop offset="0%" stop-color="#9cb9f6" />
											<stop offset="100%" stop-color="#d691fc" />
										</linearGradient>
									</defs>
								</svg>
							</div>
							<div class="pricing_title">beginner</div>
							<div class="pricing_price">Free<div>Always</div></div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_list">
								<ul class="d-flex flex-column align-items-center justify-content-start">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>2 E-mail Addresess</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>25 GB Space</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>24h Live Support</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>Documetation inside</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>X</div>
										<div>SEO Plan</div>
									</li>
								</ul>
							</div>
							<div class="pricing_info"><a href="#"><div>i</div></a></div>
							<div class="button pricing_button trans_200"><a href="#">order plan</a></div>
						</div>
					</div>
				</div>

				<!-- Pricing Item -->
				<div class="col-lg-4">
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
								</svg>
							</div>
							<div class="pricing_title">recommended</div>
							<div class="pricing_price">$29<span>90</span><div>Per Month</div></div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_list">
								<ul class="d-flex flex-column align-items-center justify-content-start">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>2 E-mail Addresess</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>25 GB Space</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>24h Live Support</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>Documetation inside</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>SEO Plan</div>
									</li>
								</ul>
							</div>
							<div class="pricing_info"><a href="#"><div>i</div></a></div>
							<div class="button pricing_button trans_200"><a href="#">order plan</a></div>
						</div>
					</div>
				</div>

				<!-- Pricing Item -->
				<div class="col-lg-4">
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
								</svg>
							</div>
							<div class="pricing_title">professional</div>
							<div class="pricing_price">$59<span>90</span><div>Per Month</div></div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_list">
								<ul class="d-flex flex-column align-items-center justify-content-start">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>2 E-mail Addresess</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>25 GB Space</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>24h Live Support</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>Documetation inside</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>SEO Plan</div>
									</li>
								</ul>
							</div>
							<div class="pricing_info"><a href="#"><div>i</div></a></div>
							<div class="button pricing_button trans_200"><a href="#">order plan</a></div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="pricing_text text-center">
						<p>Ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat. Aliquam erat.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Content Right -->

	<div class="c_right">
		<div class="container">
			<div class="row row-lg-eq-height">
				
				<!-- Content Right Image -->
				<div class="col-lg-6 c_right_col order-lg-1 order-2">
					<div class="c_right_image d-flex flex-column align-items-center justify-content-center">
						<img src="resources/images/pic_1.png" alt="">
					</div>
				</div>

				<!-- Content Right Content -->
				<div class="col-lg-6 order-lg-2 order-1">
					<div class="c_right_content">
						<div class="section_title_container">
							<div class="section_title"><h2>Choose the best service</h2></div>
						</div>
						<div class="c_right_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat. Aliquam erat volutpat. Sed efficitur diam ut interdum ultricies. In a leo vel dolor tempor feugiat. Cras accumsan faucibus magna a imperdiet. Donec mi neque, pretium eu quam at, facilisis venenatis tortor. Suspendisse potenti.</p>
						</div>
						<div class="content_list_1 c_right_list">
							<ul>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
								<li>Maecenas ornare, arcu at lobortis ultrices, neque erat euismod erat</li>
								<li>Nam pulvinar dapibus justo, ac pharetra neque dictum non</li>
							</ul>
						</div>
						<div class="button c_right_button"><a href="#">order plan</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Content Left -->

	<div class="c_left">
		<div class="container">
			<div class="row row-lg-eq-height">
				
				<!-- Content Left Content -->
				<div class="col-lg-6">
					<div class="c_left_content">
						<div class="section_title_container">
							<div class="section_title"><h2>The best servers</h2></div>
						</div>
						<div class="content_list_2 c_left_list">
							<ul>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>01.</div></div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat. Aliquam erat volutpat. Sed efficitur diam ut interdum ultricies.</p>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>02.</div></div>
									<p>Dolor sit amet, consectetur adipiscing elit. Mauris velit arcu, scelerisque dignissim massa quis, mattis facilisis erat. Aliquam erat volutpat. Sed efficitur diam ut interdum ultricies.</p>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>03.</div></div>
									<p>In a leo vel dolor tempor feugiat. Cras accumsan faucibus magna a imperdiet. Donec mi neque, pretium eu quam at, facilisis venenatis tortor. Suspendisse accumsan potenti.</p>
								</li>
							</ul>
						</div>
						<div class="button c_left_button"><a href="#">order plan</a></div>
					</div>
				</div>

				<!-- Content Left Image -->
				<div class="col-lg-6 c_left_col">
					<div class="c_left_image d-flex flex-column align-items-center justify-content-center">
						<img src="resources/images/pic_2.png" alt="">
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="footer_phone d-flex flex-row align-items-center justify-content-sm-end justify-content-center">
			<div>궁금한 점이 있으세요??</div>
			<div class="d-flex flex-row align-items-center justify-content-start">
				<i class="fa fa-phone" aria-hidden="true"></i>
				<div>010-3314-5931</div>
			</div>
		</div>
		<div class="footer_content">
			<div class="container">
				<div class="row footer_row">

					<!-- Footer Column -->
					<div class="col-xl-3 col-md-6">
						<div class="home_icon ml-auto mr-auto d-flex flex-column align-items-center justify-content-center">
						<div><img src="resources/images/logo.png" alt="https://www.flaticon.com/authors/srip"></div></div>
					<div class="logo" style="padding-left: 30px"><a href="#"><span>약</span>팔이</a></div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-md-6">
						<div class="footer_title">Our Services</div>
						<div class="footer_list">
							<ul>
								<li><a href="#">홈페이지 소개</a></li>
								<li><a href="#">1:1 문의</a></li>
								<li><a href="#">광고 문의</a></li>
								<li><a href="#">Search Advertising</a></li>
								<li><a href="#">Email Marketing</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-md-6">
						<div class="footer_title">Useful Links</div>
						<div class="footer_list">
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Testimonials</a></li>
								<li><a href="#">Services</a></li>
								<li><a href="#">News</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-md-6">
						<div class="logo footer_logo"><a href="#"><span>A</span>bout us</a></div>
						<div class="footer_info">
							<ul>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>Address</div></div>
									<div>경기도 의정부시 서부로 545 융합소프트웨어과 <br>심화과정</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>Phone</div></div>
									<div>010 3314 5931</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>E-mail</div></div>
									<div>ekfto12@naver.com</div>
								</li>
							</ul>
						</div>
						
						<div class="social footer_social">
							<ul class="d-flex flex-row align-items-center justify-content-start">
								<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright_bar text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This project is made with by <a href="" target="_blank">약팔이</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
	</footer>
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
<script src="resources/js/custom.js"></script>
</body>
</html>
