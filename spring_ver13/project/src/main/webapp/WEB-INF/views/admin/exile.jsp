<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴 페이지</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return false;
				}
			})
</script>

<body>
	<h2>회원 아이디를 입력하세요.</h2>

	<form action="/admin/exile" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div class="form-group has-feedback">
			<input class="form-control" type="text" id="userid" name="userid" />
		</div>
		<div align="center" class="form-group has-feedback">
			<button class="btn btn-success" type="submit" id="submit">확인</button>
		</div>
	</form>
</body>
</html>
