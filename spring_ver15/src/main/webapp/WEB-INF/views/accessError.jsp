<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@include file="includes/memheader.jsp"%>


<!-- 권한 없음을 알리는 페이지 -->
<section class="contact-section spad">
	<div class="container">
		<div class="row">
			<div align="center" class="col-lg-6">
				<div class="leave-comment">
					<h1><span style="color: orangered">권한이 없습니다.</span></h1>
					<br>

					<h2>
						<span style="color: orangered"><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}" /></span>
					</h2>

					<h2>
						<span style="color: orangered"><c:out value="${msg}" /></span>
					</h2>
					<br>

					<button class="btn btn-warning" type="submit"
						onclick="location.href='/member/home'">홈으로</button>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="includes/memfooter.jsp"%>