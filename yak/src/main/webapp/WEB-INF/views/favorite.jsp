<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<c:if test="${empty authInfo.id}">
<script>
	alert(${authInfo.id});
	location.href="../yak/login";
</script>
</c:if>
	<!-- Header -->

	

	<div class="super_container">

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
    <p class="card-text">즐겨찾기한 의약품 리스트</p>
  </div>
    <div class="card">
 
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">약품명</th>
                <th scope="col">경로</th>
                <th scope="col">제형 </th>
                <th scope="col">회사명</th>
              </tr>
            </thead>
            <tbody>
            <c:choose>
                        <c:when test="${fn:length(map.list) > 0}">
                        <c:forEach items="${map.list}" var="row">
                            <tr>
                            
                                <td><a href="drugDetail?drug_name=${row.drug_name}">${row.drug_name}</a></td>
                                <td>${row.d_route}</td>
                                <td>${row.d_shape}</td>
                                <td>${row.d_company}</td>
                            </tr>
                        </c:forEach>
                        </c:when>
                        <c:otherwise>
                        <tr>
                        	<td colspan="5" style="text-align: center;"> 조회된 결과가 없습니다.</td>
                        </c:otherwise>
                        </c:choose>
            </tbody>
          </table>
    </div>
    </div>   
<div  style="padding: 100px">
	</div>
<jsp:include page="footer.jsp" />
	
</div>

</body>
</html>