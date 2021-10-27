<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		

</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return false;
				}
				if($("#password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return false;
				}
				if($("#user_name").val()==""){
					alert("성명을 입력해주세요.");
					$("#user_name").focus();
					return false;
				}
				if($("#age").val()==""){
					alert("나이를 입력해주세요.");
					$("#age").focus();
					return false;
				}
				if($("#weight").val()==""){
					alert("체중을 입력해주세요.");
					$("#weight").focus();
					return false;
				}
				if($("#gender").val()==""){
					alert("성별을 입력해주세요.");
					$("#gender").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("휴대폰 번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				
			});
			
		
				
			
		})
	</script>
	<body>
		<section id="container">
			<form action="/join" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group has-feedback">
					<label class="control-label" for="userid">아이디</label>
					<input class="form-control" type="text" id="userid" name="userid" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="password">패스워드</label>
					<input class="form-control" type="password" id="password" name="password" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_name">성명</label>
					<input class="form-control" type="text" id="user_name" name="user_name" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="age">나이</label>
					<input class="form-control" type="text" id="age" name="age" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="weight">체중</label>
					<input class="form-control" type="text" id="weight" name="weight" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="gender">성별</label>
					<input class="form-control" type="text" id="gender" name="gender" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="phone">휴대폰 번호</label>
					<input class="form-control" type="text" id="phone" name="phone" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원가입</button>
					<button class="cancle btn btn-danger" type="button" id="cancle">취소</button>
				</div>
			</form>
		</section>
		
	</body>
</html>