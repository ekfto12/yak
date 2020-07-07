<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<meta charset="utf-8">
<jsp:include page="navbar.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles/services.css">
<link rel="stylesheet" type="text/css" href="resources/styles/services_responsive.css">
</head>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700"
	rel="stylesheet" />
<link href="resources/css/search.css" rel="stylesheet" />

</head>
<body>
	<div class="page-wrapper" style="background: #d9eff5;" >
    <div class="container-fluid">
        <div class="col-lg-12">
                <div class="panel-heading">공지사항 </div>
                <div class="panel-body">
                <div class="inner-form">
                <div class="advance-search" style="padding: 200px; text-align: left;">
                    ${map.count}개의 검색결과가 있습니다.
                    <table class="table table-hover" style="background: #fff; color: black; border-radius: 10px; box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);" >
                        <thead>
                            <tr>
                                <th>제품명</th>
                                <th>경로</th>
                                <th>제형</th>
                                <th>회사명</th>
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
        </div>
		</div>
		</div>
		</div>
		
	<jsp:include page="footer.jsp" />
	<script src="resources/js/extention/choices.js"></script>
	

</body>
</html>