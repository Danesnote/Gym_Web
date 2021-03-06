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

<title>WiseNutGym Join</title>
<!-- CSS only -->
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
            crossorigin="anonymous">

        <!-- JS, Popper.js, and jQuery -->
        <script
            src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
            crossorigin="anonymous"></script>
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
    
    <!-- ???????????? ???????????? ?????? CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- ???????????? ?????? -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
<style>
section {
            margin : 500px;
            }
h1 {
            margin : 10px;
            font-family: fantasy;
            }
</style>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			// ??????
			$(".cancle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("???????????? ??????????????????.");
					$("#userid").focus();
					return false;
				}
				if($("#password").val()==""){
					alert("??????????????? ??????????????????.");
					$("#password").focus();
					return false;
				}
				if($("#user_name").val()==""){
					alert("????????? ??????????????????.");
					$("#user_name").focus();
					return false;
				}
				if($("#age").val()==""){
					alert("????????? ??????????????????.");
					$("#age").focus();
					return false;
				}
				if($("#weight").val()==""){
					alert("????????? ??????????????????.");
					$("#weight").focus();
					return false;
				}
				if($("#gender").val()==""){
					alert("????????? ??????????????????.");
					$("#gender").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("????????? ????????? ??????????????????.");
					$("#phone").focus();
					return false;
				}
				
			});
			
		
				
			
		})
	</script>
	<body>
	
		<section id="container">
		<h1 align="center">JOIN</h1>
			<form action="/join" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group has-feedback">
					<label class="control-label" for="userid">?????????</label>
					<input class="form-control" type="text" id="userid" name="userid" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="password">????????????</label>
					<input class="form-control" type="password" id="password" name="password" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_name">??????</label>
					<input class="form-control" type="text" id="user_name" name="user_name" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="age">??????</label>
					<input class="form-control" type="text" id="age" name="age" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="weight">??????</label>
					<input class="form-control" type="text" id="weight" name="weight" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="gender">??????</label>
					<input class="form-control" type="text" id="gender" name="gender" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="phone">????????? ??????</label>
					<input class="form-control" type="text" id="phone" name="phone" />
				</div>
				<div align="center" class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">????????????</button>
					<button class="cancle btn btn-danger" type="button" id="cancle">??????</button>
				</div>
			</form>
		</section>
		
	</body>
</html>