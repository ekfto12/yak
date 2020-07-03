<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<jsp:include page="navbar.jsp" />
<link href="resources/css/main.css" rel="stylesheet" media="all">
</head>
<body>
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
	<div class="wrapper wrapper--w960">
	<div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
		<form:form role="form" commandName="loginCommand" action="login" method="post">
			<fieldset>
				<legend>로그인</legend>
				<div class="form-group">
					<label for="id"><b>ID</b></label> 
					<form:input type="text" class="form-control" size="10px" placeholder="ID" path="id" maxlength="15"/>
					<form:errors path="id"/>
				</div>
				<div class="form-group">
					<label for="pass"><b>비밀번호</b></label>
					<form:password class="form-control" placeholder="Password" path="pw"/>
                 <form:errors path="pw"/> 
				</div>
				<div class="checkbox">
                <label>
                    <form:checkbox path="rememberId"/>아이디 기억
                </label>
            </div>
				
				<div class="form-group">
					<button class="btn btn-secondary" id="submit_btn" type="submit">로그인</button>
					<button class="btn btn-secondary join" type="button" onclick="location.href='join_1'">회원가입</button>
					<button class="btn btn-danger" id="cancel_button" type="reset">취소</button>
				</div>

			</fieldset>

		</form:form>
		</div>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>