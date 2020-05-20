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
</head>
<body>
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
	<div class="wrapper wrapper--w960">
	<div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
		<form method="post" action="/pm/loginProcess" name="loginform"
			id="loginform">

			<fieldset>
				<legend>로그인</legend>
				<div class="form-group">
					<label for="id"><b>ID</b></label> <input class="form-control"
						type="text" size="10px" name="id" id="id" placeholder="Enter id"
						maxlength="15">
				</div>
				<div class="form-group">
					<label for="pass"><b>비밀번호</b></label> <input class="form-control"
						type="password" name="password" id="password"
						placeholder="Enter Password">
				</div>
				
				<div class="form-group">
					<button class="btn btn-secondary" id="submit_btn" type="submit">로그인</button>
					<button class="btn btn-secondary join" type="button">회원가입</button>
					<button class="btn btn-danger" id="cancel_button" type="reset">취소</button>
				</div>

			</fieldset>

		</form>
		</div>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>