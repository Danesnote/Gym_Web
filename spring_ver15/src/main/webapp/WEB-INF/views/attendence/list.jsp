<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@include file="../includes/memheader.jsp"%>
<sec:authentication property="principal.username" var="username" />
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate var="curDt" value="${today}" type="DATE"
	pattern="yyyy-MM-dd" />

<section class="class-timetable-section spad">
<%-- 	<p>principal.username : ${username }</p>
	<p>today : ${curDt}</p> --%>
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-title">
					<span>Check Your Attrndence</span>
					<h2>Your Attendence</h2>
				</div>
			</div>
</div>
<div class="row">
			<div class="col-lg-6">
			<div class="class-timetalbe">
				<!-- <button class="btn-btn-warning">출석체크하기</button> -->
				<form method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="hidden" name="userId"
						value="${username}"> <input type="hidden"
					    name="start_time" value="${curDt}">
					   <div>
	<button id='submit' type="submit" class="btn btn-warning">출석하기</button></div> 
					
				</form>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="class-timetable filtering">
				<table class="container">
					<thead>
						<tr>
							<th>유저 아이디</th>
							<th>출석 기록</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="attendence">
						<tr>
							<td class="dark-bg hover-bg ts-meta show"><h5>
									<c:out value="${attendence.userId}" />
								</h5></td>
							<td class="dark-bg hover-bg ts-meta show"><h5>
									<c:out value="${attendence.start_time}" />
								</h5></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</div>
</section>

<%-- 
<div class="col-lg-12">
<sec:authentication property="principal.username" var= "username"/>
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate var="curDt" value="${today}" type="DATE" pattern="yyyy-MM-dd" />

 <p>principal.username : <sec:authentication property="principal.username" var= "username"/></p>
 <p>principal.username : ${username }</p>
 <p>today : ${curDt}</p>
		<div class="panel panel-default">
			<div class="panel-heading">
				출석 게시판
				<form method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input type="hidden" name="userId" value="${username}">
					<input type="hidden" name="start_time" value="${curDt}">
					<button id='submit' type="submit" class="btn btn-xs pull-right">출석하기</button>
				</form>
				</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>유저 아이디</th>
							<th>출석 기록</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="attendence">
						<tr>
							<td><c:out value="${attendence.userId}"/></td>
							<td><c:out value="${attendence.start_time}"/></td> 
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>유저 아이디</th>
							<th>출석 기록</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="attendence">
						<c:if test="${attendence.userId eq username}">
							<tr>
								<td><c:out value="${attendence.userId}"/></td>
								<td><c:out value="${attendence.start_time}"/></td> 
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
			 --%>

<%@include file="../includes/memfooter.jsp"%>


