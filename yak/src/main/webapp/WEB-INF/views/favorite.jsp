<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>약팔이 - 소개</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navbar.jsp" />
<link href="resources/plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/styles/about.css">
<link rel="stylesheet" type="text/css" href="resources/styles/about_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	

	

	<!-- Home -->

	<div class="homee">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="homee_content">
						<div class="homee_image"><img src="resources/images/about_page.png" alt=""></div>
						<div class="homee_title">즐겨찾기</div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- About -->

	<div class="container my-5">
       <div class="card-body text-center">
    <h4 class="card-title">즐겨찾기 목록</h4>
    <p class="card-text">자주 먹는 약들을 등록해 주세요</p>
  </div>
    <div class="card">
        
        <div>
        <button id="add__new__list" type="button" class="btn btn-success position-absolute" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fas fa-plus"></i>추가</button>
        </div>
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">약품명</th>
                <th scope="col">질병</th>
                <th scope="col">수정 삭제 </th>
                <th scope="col">상세보기</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>
                    <a class="btn btn-sm btn-primary" href="#"><i class="far fa-edit"></i> edit</a>
                    <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-trash-alt"></i> delete</a>    
                </td>
                <td><a class="btn btn-sm btn-info" href="#"><i class="fas fa-info-circle"></i> Details</a> </td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>
                    <a class="btn btn-sm btn-primary" href="#"><i class="far fa-edit"></i> edit</a>
                    <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-trash-alt"></i> delete</a>    
                </td>
                <td><a class="btn btn-sm btn-info" href="#"><i class="fas fa-info-circle"></i> Details</a> </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td colspan="2">Larry the Bird</td>
                <td>       
                    <a class="btn btn-sm btn-primary" href="#"><i class="far fa-edit"></i> edit</a>
                    <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-trash-alt"></i> delete</a> 
                </td>
                <td><a class="btn btn-sm btn-info" href="#"><i class="fas fa-info-circle"></i> Details</a> </td>
              </tr>
            </tbody>
          </table>
    </div>

	<!-- Team -->

	

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
<script src="resources/plugins/video-js/video.min.js"></script>
<script src="resources/plugins/video-js/Youtube.min.js"></script>
<script src="resources/js/about.js"></script>
</body>
</html>