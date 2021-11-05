<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/memheader.jsp"%>

<section class="class-timetable-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-title">
					<h2>회원전용 게시판</h2>
					<span>자유게시판</span>
					
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			</div>

			<div class="row">
				<div class="col-lg-12">
				<div class="class-timetable">
					

						<!-- /.panel-heading -->
						<div align="right">
							<button id='regBtn' type="button" class="btn btn-warning">글쓰기</button>
						</div>
						
							<table class="container">
								<thead>
									<tr>
										<th>글번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>수정일</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${list}" var="board">
									<tr class="odd gradeX">
										<td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
										<h5><c:out value="${board.bno}" /></h5></td>
										<td class="hover-bg ts-meta" data-tsmeta="fitness"><h5><a class='move' href='<c:out value="${board.bno}"/>'>
												<c:out value="${board.title}" /> <b>[ <c:out
														value="${board.replyCnt}" /> ]
											</b>
										</a>
										</h5></td>
										<td class="dark-bg hover-bg ts-meta" data-tsmeta="workout"><h5><c:out value="${board.writer}" /></h5></td>
										<td class="hover-bg ts-meta" data-tsmeta="fitness"><h5><fmt:formatDate pattern="yyyy-MM-dd"
												value="${board.regdate}" /></h5></td>
										<td class="dark-bg hover-bg ts-meta" data-tsmeta="workout"><h5><fmt:formatDate pattern="yyyy-MM-dd"
												value="${board.updateDate}" /></h5></td>
									</tr>
								</c:forEach>
</tbody>
							</table>

							<div class='row'>
								<div class="col-lg-12">

									<form id='searchForm' action="/member/list" method='get'>
										<select name='type'>
											<option value=""
												<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
											<option value="T"
												<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
											<option value="C"
												<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
											<option value="W"
												<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
											<option value="TC"
												<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
												or 내용</option>
											<option value="TW"
												<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
												or 작성자</option>
											<option value="TWC"
												<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
												or 내용 or 작성자</option>
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

									<%--             <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous"><a href="#">Previous</a>
              </li>
            </c:if>

            <c:forEach var="num" begin="${pageMaker.startPage}"
              end="${pageMaker.endPage}">
              <li class="paginate_button"><a href="#">${num}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="paginate_button next"><a href="#">Next</a></li>
            </c:if> --%>

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

						<form id='actionForm' action="/member/list" method='get'>
							<input type='hidden' name='pageNum'
								value='${pageMaker.cri.pageNum}'> <input type='hidden'
								name='amount' value='${pageMaker.cri.amount}'> <input
								type='hidden' name='type'
								value='<c:out value="${ pageMaker.cri.type }"/>'> <input
								type='hidden' name='keyword'
								value='<c:out value="${ pageMaker.cri.keyword }"/>'>


						</form>


						<!-- Modal  추가 -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">Modal title</h4>
									</div>
									<div class="modal-body">처리가 완료되었습니다.</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->


					</div>
					<!--  end panel-body -->
				</div>
				<!-- end panel -->
			</div>
		</div>
		<!-- /.row -->
	</div>
</section>






<script type="text/javascript">
	$(document).ready(
					function() {

						var result = '<c:out value="${result}"/>';

						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {

							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글 " + parseInt(result)
												+ " 번이 등록되었습니다.");
							}

							$("#myModal").modal("show");
						}

						$("#regBtn").on("click", function() {

							self.location = "/member/register";

						});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/member/get");
											actionForm.submit();

										});

						var searchForm = $("#searchForm");

						$("#searchForm button").on(
								"click",
								function(e) {

									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
</script>






<%@include file="../includes/memfooter.jsp"%>