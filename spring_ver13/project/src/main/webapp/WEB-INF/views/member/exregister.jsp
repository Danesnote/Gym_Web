<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>


<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>운동 기록 등록 페이지</title>
</head>

<script type="text/javascript">
	$(document).ready(function() {
		$("#submit").on("click", function() {
			if ($("#exid").val() == "") {
				alert("운동 종목을 입력해주세요.");
				$("#exid").focus();
				return false;
			}
			if ($("#eno").val() == "") {
				alert("등록번호를 입력해주세요.");
				$("#eno").focus();
				return false;
			}
			if ($("#userid").val() == "") {
				alert("유저 아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
		})
	})
</script>

<body>
	<h2>오늘 수행한 운동 종목을 입력하여 추가하세요.</h2>

	<form action="/member/exregister" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div align="center" class="form-group has-feedback">
			<label class="control-label" for="eno">등록 번호</label> <input
				class="form-control" type="text" id="eno" name="eno" />
		</div>
		<div align="center" class="form-group">
			<label>유저명</label> <input class="form-control" name='userid'
				value='<sec:authentication property="principal.username"/>'
				readonly="readonly">
		</div>
		<div align="center" class="form-group has-feedback">
			<label class="control-label" for="exid">운동 종류</label> <input
				class="form-control" type="text" id="exid" name="exid" />
		</div>
		<div align="center" class="form-group has-feedback">
			<button class="btn btn-success" type="submit" id="submit">등록</button>
		</div>
	</form>
</body>
</html>