<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="includes/memheader.jsp"%>

<!-- 로그아웃페이지 -->
<section class="contact-section spad">
	<div class="container">
		<div class="row">
			<div align="center" class="col-lg-6">
				<div class="leave-comment">
					<form role="form" method='post' action="/Logout">
						<fieldset>

							<!-- Change this to a button or input when using this as a form -->
							<button type="submit">Logout</button>
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
	$("#submit").on("click", function() {

		e.preventDefault();
		$("form").submit();

	});
</script>

<%@include file="includes/memfooter.jsp"%>