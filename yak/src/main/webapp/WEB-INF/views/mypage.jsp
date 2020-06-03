<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<jsp:include page="navbar.jsp" />
<link href="resources/css/main.css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="resources/styles/services.css">
<link rel="stylesheet" type="text/css" href="resources/styles/services_responsive.css">
</head>
<body>

<div class="features">
		<div class="container">
			<div class="row row-lg-eq-height">
	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="extra">
						<div class="extra_content">
							<div class="extra_image text-center"><img src="resources/images/my_1.png" alt=""></div>
							<div class="extra_title text-center"><span>계정관리</span></div>
							<div class="extra_text text-center">
								<p>자신의 계정을 관리합니다.</p>
							</div>
						</div>
						<div class="button extra_button"><a href="#">더보기</a></div>
					</div>
				</div>
	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="extra">
						<div class="extra_content">
							<div class="extra_image text-center"><img src="resources/images/ban222.png" alt=""></div>
							<div class="extra_title text-center"><span>즐겨찾기</span></div>
							<div class="extra_text text-center">
								<p>자신이 자주 검색하는<br/> 의약품을 확인합니다.</p>
							</div>
						</div>
						<div class="button extra_button"><a href="#">더보기</a></div>
					</div>
				</div>
	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="extra">
						<div class="extra_content">
							
							
							<div class="extra_image text-center"><img src="resources/images/my_3.png" alt=""></div>
							<div class="extra_title text-center"><span>복용관리</span></div>
							<div class="extra_text text-center">
								<p>자신이 복용하는 의약품을 <br/>관리합니다.</p>
							</div>
						</div>
						<div class="button extra_button"><a href="#">더보기</a></div>
					</div>
				</div>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>