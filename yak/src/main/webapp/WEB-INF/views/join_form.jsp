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
                    <form:form role="form" commandName="registerRequest" action="join_3" method="post">
                        <div class="input-groupp">
                            <form:input class="input--style-2" type="text" placeholder="아이디" path="id"/>
                            <form:errors path="id"/>
                        </div>
                        <div class="input-groupp">
                            <form:password class="input--style-2" placeholder="비밀번호" path="pw"/>
                            <form:errors path="pw"/>
                        </div>
                        <div class="input-groupp">
                            <form:password class="input--style-2" placeholder="비밀번호 재확인" path="checkPw"/>
                            <form:errors path="checkPw"/>
                        </div>
                        <div class="input-groupp">
                            <form:input class="input--style-2" type="text" placeholder="이름" path="name"/>
                            <form:errors path="name"/>
                        </div>
                        <div class="roww row-space">
                            <div class="col-22">
                                <div class="input-groupp">
                                    <form:input class="input--style-2 js-datepicker" type="text" placeholder="생년월일" path="year"/>
                                    <form:errors path="year"/>
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                            <div class="col-22">
                                <div class="input-groupp">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <form:select path="gender">
                                            <option disabled="disabled" selected="selected">성별</option>
                                            <option>남자</option>
                                            <option>여자</option>
                                        </form:select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="roww row-space">
                            <div class="col-22">
                                <div class="input-groupp">
                                    <form:input class="input--style-2" type="text" placeholder="E-mail" path="email"/>
                                    <form:errors path="email"/>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit">회원가입</button>
                        </div>
                    </form:form>
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