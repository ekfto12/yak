<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>약팔이</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="BHost template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navbar.jsp" />
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Vendor CSS-->
    <link href="resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="resources/css/main.css" rel="stylesheet" media="all">
</head>
<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">회원가입</h2>
                    <div class="content-wrapper">
        <%-- Content Header (Page header) --%>
        <section class="content-header">
            <h1>
                회원가입
                
            </h1>
            
        </section>

        <%-- Main content --%>
        <section class="content container-fluid">
            <div class="panel-body">
    <div class="row">
        <div class="col-lg-12">
            <h4>이용약관</h4>
            <div class="panel-body" style="border: 1px solid #ccc">
            <p>이용약관에 동의해주세요.</p>
        </div>
        </br>
        <h4>개인정보</h4>
        <div class="panel-body" style="border: 1px solid #ccc">
            <p>개인정보 이용에 동의해주세요.</p>
        </div>
        <br/>
        <form role="form" method="post" action="join_2">
            <div class="form-group">
                <label class="checkbox-inline">
                    <input type="checkbox" name="agree" value="true">동의합니다.
                </label>
            </div>
            <button type="submit">다음 단계</button>
        </form>
    </div>
</div>
</div>
        </section>
        <%-- /.content --%>
    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="footer.jsp" />	
	
    <!-- Jquery JS-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="resources/vendor/select2/select2.min.js"></script>
    <script src="resources/vendor/datepicker/moment.min.js"></script>
    <script src="resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="resources/js/global.js"></script>

</body>
</html>