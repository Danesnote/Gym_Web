<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/memheader.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">회원 전용 게시판</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				운동기록게시판

				<button id='regBtn2' type="button" class="btn btn-xs pull-right">2.
					운동 기록 등록</button>
				<button id='regBtn1' type="button" class="btn btn-xs pull-right">1.
					운동 시간 등록</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>등록 번호</th>
							<th>유저명</th>
							<th>총 운동 시작 시간</th>
							<th>총 운동 종료 시간</th>
							<th>수행한 운동종류</th>
						</tr>
					</thead>

					<c:forEach items="${list}" var="exdata">
						<tr>
							<td><c:out value="${exdata.eno}" /></td>
							<td><c:out value="${exdata.userid}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
									value="${exdata.extime_s}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
									value="${exdata.extime_e}" /></td>
							<td><c:out value="${exdata.exid}" /></td>

						</tr>
					</c:forEach>

				</table>


				<div class='pull-right'>
					<ul class="pagination">


						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>


					</ul>
				</div>
				<!--  end Pagination -->
			</div>

			<form id='actionForm' action="/member/exdata" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>

				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>

			</form>

			<script type="text/javascript">
				$(document).ready(function() {

					$("#regBtn1").on("click", function() {

						self.location = "/member/extimeregister";

					});
					$("#regBtn2").on("click", function() {

						self.location = "/member/exregister";

					});
				});
			</script>
			<%@include file="../includes/memfooter.jsp"%>