<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@include file="../includes/memheader.jsp"%>


<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<sec:authentication property="principal.username" var="username" />

<section class="class-timetable-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-title">
					<h2 class="page-header">회원 전용 게시판</h2>
					<span>운동기록게시판</span>

				</div>

				<!-- /.col-lg-12 -->
			</div>
		</div>
		<div>
			<div align="right">

				<button id='regBtn1' type="button" class="btn btn-warning ">1.
					운동 시간 등록</button>
				<button id='regBtn2' type="button" class="btn btn-warning ">2.
					운동 기록 등록</button>
			</div>
		</div>
		<!-- /.row -->




		<!-- /.panel-heading -->
		<div class="section-title">
         <span>운동 종류 설명</span><br>
         <p>ex001 : 걷기 ex002 : 달리기 ex003 : 자전거 ex004 : 수영 ex005 : 줄넘기   ex006 : 에어로빅댄스 ex007 : 등산   ex008 : 배드민턴   ex009 : 테니스   ex010 : 탁구   ex011 : 축구  ex012 : 농구   ex013 : 조깅  ex014 : 경보   ex015 : 크로스컨트리   ex016 : 스키   ex017 : 프레스 ex018 : 턱걸이  ex019 : 팔굽혀펴기   ex020 : 렛 풀 다운 ex021 : 덤벨 컬  ex022 : 데드리프트 ex023 : 스쿼트  ex024 : 슈러그 ex025 : 고강도 훈련  ex026 : 딥스  ex027 : 케이블 로우 ex028 : 크런치</p>
      </div>
		<div class="class-timetable">
			<table class="container">
				<thead>
					<tr>
						<th>등록 번호</th>
						<th>유저명</th>
						<th>총 운동 시작 시간</th>
						<th>총 운동 종료 시간</th>
						<th>수행한 운동종류</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="exdata">

						<c:if test="${exdata.userid eq username}">
							<tr class="odd gradeX">
								<td class="hover-bg ts-meta"><h5><c:out value="${exdata.eno}" /></h5></td>
								<td class="hover-bg ts-meta"><h5><c:out value="${exdata.userid}" /></h5></td>
								<td class="hover-bg ts-meta"><h5><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
										value="${exdata.extime_s}" /></h5></td>
								<td class="hover-bg ts-meta"><h5><fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss"
										value="${exdata.extime_e}" /></h5></td>
								<td class="hover-bg ts-meta"><h5><c:out value="${exdata.exid}" /></h5></td>

							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>

			<div class='row'>
				<div class="col-lg-12">

					<form id='searchForm' action="/member/exdata" method='get'>
						<select name='type'>
							<option value="I"
								<c:out value="${pageMaker.cri.type eq 'I'?'selected':''}"/>>운동종류</option>
							<!-- exid로 검색 (I가 exid의 밸류값) -->
						</select> <input type='text' name='keyword'
							value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
							type='hidden' name='pageNum'
							value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
							type='hidden' name='amount'
							value='<c:out value="${pageMaker.cri.amount}"/>' />
						<button class='btn btn-warning'>검색</button>
					</form>
				</div>
			</div>


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

	</div>


</section>


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

		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {

			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();

			searchForm.submit();

		});
	});
</script>

<%@include file="../includes/memfooter.jsp"%>