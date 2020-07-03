<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <small>3단계</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> HOME</a></li>
            </ol>
        </section>

        <%-- Main content --%>
        <section class="content container-fluid">
            <div class="panel-body">
    <div class="alert alert-success">
        축하드립니다, 성공적으로 회원가입이 되었습니다!
        <button type="button" class="btn btn-success btn-flat" id="writeBtn">
                   <i class="fa fa-pencil"><a href="redirect:/" style="color: white">메인으로</a></i>
                            </button>
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