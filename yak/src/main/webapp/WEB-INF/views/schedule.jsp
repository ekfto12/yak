<!DOCTYPE html>
<html>
<head>
	<title>약팔이 - 복용관리</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="BHost template project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
	<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
	<link href="resources/plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="resources/styles/about.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/about_responsive.css">
	<link rel="stylesheet" href="resources/plugin.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
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
									<li><a href="index.html">Home</a></li>
									<li class="active"><a href="about.html">About us</a></li>
									<li><a href="services.html">Services</a></li>
									<li><a href="blog.html">News</a></li>
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
							<li><a href="#">웹메일</a></li>
							<li><a href="#">채팅</a></li>
							<li><a href="#">로그인</a></li>
						</ul>
					</div>

					<!-- Phone -->
					<div class="phone d-flex flex-row align-items-center justify-content-start">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<div>010-9208-5293</div>
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
						<li><a href="about.html">카테고리</a></li>
						<li><a href="services.html">의약품 검색</a></li>
						<li><a href="blog.html">홈페이지 소개</a></li>
						<li><a href="contact.html">문의</a></li>
					</ul>
				</div>
				<div class="phone menu_phone d-flex flex-row align-items-center justify-content-start">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<div>010-9208-5293</div>
				</div>
			</div>
		</div>

		


		<!-- Home -->

		<div class="home">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_image"><img src="images/about_page.png" alt=""></div>
							<div class="home_title">Schedule</div>		
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main">
			<div class="content-wrap">
				<div class="content-left">
					<div class="main-wrap">
						<div id="main-day" class="main-day"></div>
						<div id="main-date" class="main-date"></div>
					</div>
					<div class="todo-wrap">
						<div class="todo-title">복용한 약 목록</div>
						<div class="input-wrap">
							<input type="text" placeholder="please write here!!" id="input-box" class="input-box">
							<button type="button" id="input-data" class="input-data">INPUT</button>
							<div id="input-list" class="input-list"></div>
						</div>
					</div>
				</div>
				<div class="content-right">
					<table id="calendar" align="center">
						<thead>
							<tr class="btn-wrap clearfix">
								<td>
									<label id="prev">
										&#60;
									</label>
								</td>
								<td align="center" id="current-year-month" colspan="5"></td>
								<td>
									<label id="next">
										&#62;
									</label>
								</td>
							</tr>
							<tr>
								<td class = "sun" align="center">Sun</td>
								<td align="center">Mon</td>
								<td align="center">Tue</td>
								<td align="center">Wed</td>
								<td align="center">Thu</td>
								<td align="center">Fri</td>
								<td class= "sat" align="center">Sat</td>
							</tr>
						</thead>
						<tbody id="calendar-body" class="calendar-body"></tbody>
					</table>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			var currentTitle = document.getElementById('current-year-month');
			var calendarBody = document.getElementById('calendar-body');
			var today = new Date();
			var first = new Date(today.getFullYear(), today.getMonth(),1);
			var dayList = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
			var monthList = ['January','February','March','April','May','June','July','August','September','October','November','December'];
			var leapYear=[31,29,31,30,31,30,31,31,30,31,30,31];
			var notLeapYear=[31,28,31,30,31,30,31,31,30,31,30,31];
			var pageFirst = first;
			var pageYear;
			if(first.getFullYear() % 4 === 0){
				pageYear = leapYear;
			}else{
				pageYear = notLeapYear;
			}

			function showCalendar(){
				let monthCnt = 100;
				let cnt = 1;
				for(var i = 0; i < 6; i++){
					var $tr = document.createElement('tr');
					$tr.setAttribute('id', monthCnt);   
					for(var j = 0; j < 7; j++){
						if((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]){
							var $td = document.createElement('td');
							$tr.appendChild($td);     
						}else{
							var $td = document.createElement('td');
							$td.textContent = cnt;
							$td.setAttribute('id', cnt);                
							$tr.appendChild($td);
							cnt++;
						}
					}
					monthCnt++;
					calendarBody.appendChild($tr);
				}
				currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
			}

			showCalendar();
			showMain();

			function removeCalendar(){
				let catchTr = 100;
				for(var i = 100; i< 106; i++){
					var $tr = document.getElementById(catchTr);
					$tr.remove();
					catchTr++;
				}
			}

			function showMain(){
				document.getElementById("main-day").innerHTML = dayList[today.getDay()];
				document.getElementById("main-date").innerHTML = today.getDate();
			}

			function prev(){
				inputBox.value = "";
				const $divs = document.querySelectorAll('#input-list > div');
				$divs.forEach(function(e){
					e.remove();
				});
				const $btns = document.querySelectorAll('#input-list > button');
				$btns.forEach(function(e1){
					e1.remove();
				});
				if(pageFirst.getMonth() === 1){
					pageFirst = new Date(first.getFullYear()-1, 12, 1);
					first = pageFirst;
					if(first.getFullYear() % 4 === 0){
						pageYear = leapYear;
					}else{
						pageYear = notLeapYear;
					}
				}else{
					pageFirst = new Date(first.getFullYear(), first.getMonth()-1, 1);
					first = pageFirst;
				}
				today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
				currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
				removeCalendar();
				showCalendar();
				showMain();
				clickedDate1 = document.getElementById(today.getDate());
				clickedDate1.classList.add('active');
				clickStart();
				reshowingList();
			}

			function next(){
				inputBox.value = "";
				const $divs = document.querySelectorAll('#input-list > div');
				$divs.forEach(function(e){
					e.remove();
				});
				const $btns = document.querySelectorAll('#input-list > button');
				$btns.forEach(function(e1){
					e1.remove();
				});
				if(pageFirst.getMonth() === 12){
					pageFirst = new Date(first.getFullYear()+1, 1, 1);
					first = pageFirst;
					if(first.getFullYear() % 4 === 0){
						pageYear = leapYear;
					}else{
						pageYear = notLeapYear;
					}
				}else{
					pageFirst = new Date(first.getFullYear(), first.getMonth()+1, 1);
					first = pageFirst;
				}
				today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
				currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
				removeCalendar();
				showCalendar(); 
				showMain();
				clickedDate1 = document.getElementById(today.getDate());
				clickedDate1.classList.add('active');  
				clickStart();
				reshowingList();
			}

			var clickedDate1 = document.getElementById(today.getDate());
			clickedDate1.classList.add('active');
			var prevBtn = document.getElementById('prev');
			var nextBtn = document.getElementById('next');
			prevBtn.addEventListener('click',prev);
			nextBtn.addEventListener('click',next);
			var tdGroup = [];
			function clickStart(){
				for(let i = 1; i <= pageYear[first.getMonth()]; i++){
					tdGroup[i] = document.getElementById(i);
					tdGroup[i].addEventListener('click',changeToday);
				}
			}
			function changeToday(e){
				for(let i = 1; i <= pageYear[first.getMonth()]; i++){
					if(tdGroup[i].classList.contains('active')){
						tdGroup[i].classList.remove('active');
					}
				}
				clickedDate1 = e.currentTarget;
				clickedDate1.classList.add('active');
				today = new Date(today.getFullYear(), today.getMonth(), clickedDate1.id);
				showMain();
				keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
				reshowingList();
			}

			function reshowingList(){
				keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
				if(todoList[keyValue] === undefined){
					inputList.textContent = '';
					todoList[keyValue] = [];
					const $divs = document.querySelectorAll('#input-list > div');
					$divs.forEach(function(e){
						e.remove();
					});
					const $btns = document.querySelectorAll('#input-list > button');
					$btns.forEach(function(e1){
						e1.remove();
					});
				}else if(todoList[keyValue].length ===0){
					inputList.textContent = "";
					const $divs = document.querySelectorAll('#input-list > div');
					$divs.forEach(function(e){
						e.remove();
					});
					const $btns = document.querySelectorAll('#input-list > button');
					$btns.forEach(function(e1){
						e1.remove();
					});
				}else{
					const $divs = document.querySelectorAll('#input-list > div');
					$divs.forEach(function(e){
						e.remove();
					});
					const $btns = document.querySelectorAll('#input-list > button');
					$btns.forEach(function(e1){
						e1.remove();
					});
					var $div = document.createElement('div');
					for(var i = 0; i < todoList[keyValue].length; i++){
						var $div = document.createElement('div');
						$div.textContent = '-' + todoList[keyValue][i];
						var $btn = document.createElement('button');
						$btn.setAttribute('type', 'button'); 
						$btn.setAttribute('id', 'del-ata');
						$btn.setAttribute('id', dataCnt+keyValue);
						$btn.setAttribute('class', 'del-data');
						$btn.textContent = delText;
						inputList.appendChild($div);
						inputList.appendChild($btn);
						$div.addEventListener('click',checkList);
						$btn.addEventListener('click',deleteTodo);
						inputBox.value = '';
						function deleteTodo(){
							$div.remove();
							$btn.remove();
						}
					}
				}

			}
			var inputBox = document.getElementById('input-box');
			var inputDate = document.getElementById('input-data');
			var inputList = document.getElementById('input-list');
			var delText = 'X';
			inputDate.addEventListener('click',addTodoList);
			var dataCnt = 1;
			var keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
			let todoList = [];
			todoList[keyValue] = [];
			function addTodoList(){
				var $div = document.createElement('div');
				$div.textContent = '-' + inputBox.value;
				var $btn = document.createElement('button');
				$btn.setAttribute('type', 'button'); 
				$btn.setAttribute('id', 'del-ata');
				$btn.setAttribute('id', dataCnt+keyValue);
				$btn.setAttribute('class', "del-data");
				$btn.textContent = delText;
				inputList.appendChild($div);
				inputList.appendChild($btn);
				todoList[keyValue].push(inputBox.value);
				dataCnt++;
				inputBox.value = '';
				$div.addEventListener('click',checkList);
				$btn.addEventListener('click',deleteTodo);
				function deleteTodo(){
					$div.remove();
					$btn.remove();
				}
			}
			console.log(keyValue);
			function checkList(e){
				e.currentTarget.classList.add('checked');
			}
		</script>

		<!-- Footer -->

		<footer class="footer">
			<div class="footer_phone d-flex flex-row align-items-center justify-content-sm-end justify-content-center">
				<div>도움이 필요하신가요?</div>
				<div class="d-flex flex-row align-items-center justify-content-start">
					<i class="fa fa-phone" aria-hidden="true"></i>
					<div>010-9208-5293</div>
				</div>
			</div>
			<div class="footer_content">
				<div class="container">
					<div class="row footer_row">

						<!-- Footer Column -->
						<div class="col-xl-3 col-md-6">
							<div class="footer_title">Hosting Packages</div>
							<div class="footer_list">
								<ul>
									<li><a href="#">Cloud Hosting</a></li>
									<li><a href="#">Web Hosting</a></li>
									<li><a href="#">Reseller Hosting</a></li>
									<li><a href="#">VPS Hosting</a></li>
									<li><a href="#">Dedicated Servers</a></li>
									<li><a href="#">Windows Hosting</a></li>
									<li><a href="#">Linux Servers</a></li>
								</ul>
							</div>
						</div>

						<!-- Footer Column -->
						<div class="col-xl-3 col-md-6">
							<div class="footer_title">Our Services</div>
							<div class="footer_list">
								<ul>
									<li><a href="#">Web Design</a></li>
									<li><a href="#">Logo Design</a></li>
									<li><a href="#">Domains Register</a></li>
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
							<div class="logo footer_logo"><a href="#"><span>약</span>팔이</a></div>
							<div class="footer_info">
								<ul>
									<li class="d-flex flex-row align-items-start justify-content-start">
										<div><div>Address</div></div>
										<div>1481 Creekside Lane Avila Beach, CA 931</div>
									</li>
									<li class="d-flex flex-row align-items-start justify-content-start">
										<div><div>Phone</div></div>
										<div>+53 345 7953 32453</div>
									</li>
									<li class="d-flex flex-row align-items-start justify-content-start">
										<div><div>E-mail</div></div>
										<div>yourmail@gmail.com</div>
									</li>
								</ul>
							</div>
							<div class="cards">
								<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
									<li><a href="#"><img src="images/card_1.png" alt=""></a></li>
									<li><a href="#"><img src="images/card_2.png" alt=""></a></li>
									<li><a href="#"><img src="images/card_3.png" alt=""></a></li>
									<li><a href="#"><img src="images/card_4.png" alt=""></a></li>
									<li><a href="#"><img src="images/card_5.png" alt=""></a></li>
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
				Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</footer>
		</div>

		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="styles/bootstrap-4.1.2/popper.js"></script>
		<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
		<script src="plugins/greensock/TweenMax.min.js"></script>
		<script src="plugins/greensock/TimelineMax.min.js"></script>
		<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
		<script src="plugins/greensock/animation.gsap.min.js"></script>
		<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
		<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script src="plugins/easing/easing.js"></script>
		<script src="plugins/progressbar/progressbar.min.js"></script>
		<script src="plugins/parallax-js-master/parallax.min.js"></script>
		<script src="plugins/video-js/video.min.js"></script>
		<script src="plugins/video-js/Youtube.min.js"></script>
		<script src="js/about.js"></script>
	</body>
	</html>