<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<meta charset="utf-8">
<jsp:include page="navbar.jsp" />
</head>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700"
	rel="stylesheet" />
<link href="resources/css/search.css" rel="stylesheet" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body style="background: #d9eff5;">
    <div class="container emp-profile">
            
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        ${map.drug_name}
                                    </h5>
                                    <h6>
                                        ${map.eng_name}
                                    </h6>
                                    <p class="proile-rating">조회수 : <span>${map.d_hit}</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">전체</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">효능·효과</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#dd" role="tab" aria-controls="dd" aria-selected="false">용법·용량</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#gita" role="tab" aria-controls="gita" aria-selected="false">기타</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                    <c:if test="${not empty authInfo.id}">
                    <form action="favoriteAdd" method="post">
                    	<input type="hidden" value="${map.drug_name}" type="text" name="drug_name" id="drug_name">
						<input type="hidden" value="${authInfo.id}" type="text" name="id" id="id">
						<button class="btn btn--radius btn--green" type="submit">즐겨찾기 추가</button>
						
						</form>
						</c:if>
						
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>페이지 이동</p>
                            <a href="javascript:history.back(-1)">뒤로가기</a><br/>
                            <a href="../yak/search">검색창으로 이동</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>성분</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.ingredient}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>효능</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.effects}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>용법·용량</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_usage}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>주의사항</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.precautins}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>부작용</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.side_effects}</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>효능</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.effects}</p>
                                            </div>
                                        </div>
                                        
                                
                            </div>
                            <div class="tab-pane fade" id="dd" role="tabpanel" aria-labelledby="dd">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>용법·용량</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_usage}</p>
                                            </div>
                                        </div>
                                        
                                        
                            </div>
                            <div class="tab-pane fade" id="gita" role="tabpanel" aria-labelledby="gita">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>투여 경로</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_route}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>제형</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_shape}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>식약처 분류</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_category}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <label>회사명</label>
                                            </div>
                                            <div class="col-md-10">
                                                <p>${map.d_company}</p>
                                            </div>
                                        </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                      
        </div>
		
	<jsp:include page="footer.jsp" />
	<script src="resources/js/extention/choices.js"></script>
	

</body>
</html>