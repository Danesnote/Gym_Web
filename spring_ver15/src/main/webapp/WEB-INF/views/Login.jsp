<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@include file="includes/memheader.jsp"%>

<!-- 로그인페이지 -->
<section class="contact-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-title contact-title">
					<span>Contact Us</span>
					<h2>GET IN TOUCH</h2>
				</div>
				<div class="contact-widget">
					<div class="cw-text">
						<i class="fa fa-map-marker"></i>
						<p>
							경기도 성남시 분당구 대왕판교로644번길 49,<br /> DTC타워 5층 6층
						</p>
					</div>
					<div class="cw-text">
						<i class="fa fa-mobile"></i>
						<ul>
							<li>02-3404-6100</li>

						</ul>
					</div>
					<div class="cw-text email">
						<i class="fa fa-envelope"></i>
						<p>www.wisenut.com</p>
					</div>
				</div>
			</div>


			<div class="col-lg-6">
				<div class="leave-comment">
					<form role="form" method='post' action="/login">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="userid" name="username"
									type="text" autofocus>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label> <input name="remember-me" type="checkbox">
									<span style="color: orangered">Remember Me</span>
								</label>
							</div>
							<!-- Change this to a button or input when using this as a form -->
							<button class="btn btn-default" type="submit">Login</button>
						</fieldset>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<!-- 포스트 방식에 쓰이는 csrf토큰 -->
					</form>
				</div>
			</div>
		</div>
	</div>
</section>


<script type="text/javascript">
	$(document).ready(function() {

		$("#submit").on("click", function() {
			if ($("#userid").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
			if ($("#password").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return false;
			}

		});
	});
</script>

<c:if test="${param.logout != null}">
	<script>
		$(document).ready(function() {
			alert("로그아웃하였습니다.");
		});
	</script>
</c:if>

<%@include file="includes/memfooter.jsp"%>