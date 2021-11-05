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
<title>운동 시간 등록 페이지</title>
</head>

<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
					if($("#extime_e").val()==""){
					alert("운동 종료 시간을 입력해주세요.");
					$("#extime_e").focus();
					return false;
				}
				if($("#extime_s").val()==""){
					alert("운동 시작 시간을 입력해주세요.");
					$("#extime_s").focus();
					return false;
				}
			})
</script>

<body>
	<h2>운동 시간을 기록하세요.</h2>

	<form action="/member/extimeregister" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div align="center" class="form-group">
			<label>유저명</label> <input class="form-control" name='userid'
				value='<sec:authentication property="principal.username"/>'
				readonly="readonly">
		</div>
		<div align="center" class="form-group has-feedback">
			<label class="control-label" for="extime_s">운동 시작 시간(yyyy/MM/dd
				hh:mm:ss)</label> <input class="form-control" type="text" id="extime_s"
				name="extime_s" />
		</div>
		<div align="center" class="form-group has-feedback">
			<label class="control-label" for="extime_e">운동 종료 시간(yyyy/MM/dd
				hh:mm:ss)</label> <input class="form-control" type="text" id="extime_e"
				name="extime_e" />
		</div>
		<div align="center" class="form-group has-feedback">
			<button class="btn btn-success" type="submit" id="submit">등록</button>
		</div>
	</form>
</body>
</html>