<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/memheader.jsp" %>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			
						    
			
		
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return false;
				}})
</script>

          <form action="/member/mypage" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<section class="bmi-calculator-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title chart-title">
                        <span>My Page</span>
                        <h2>Check Information</h2>
  <div  class="form-row">
  <div class="col-lg-12">
	</div>
    <div class="form-group col-md-6">
    <h2>＊</h2>
      <span for="userid">UserID</span>
      <input type="text" class="form-control" id="userid"
      value = "<sec:authentication property="principal.username"/>"readonly>
    </div>
    <div class="form-group col-md-6">
    <h2>＊</h2>
      <span for="user_name">Name</span>
      <input type="text" class="form-control" id="user_name"
      value = "<sec:authentication property="principal.member.user_name"/>"readonly>
    </div>
    <div class="form-group col-md-2">
      <span for="age">Age</span>
      <input type="text" class="form-control" id="age"
      value = "<sec:authentication property="principal.member.age"/>"readonly>
    </div>
    <div class="form-group col-md-2">
      <span for="weight">Weight</span>
      <input type="text" class="form-control" id="weight"
      value = "<sec:authentication property="principal.member.weight"/>"readonly>
    </div>
    <div class="form-group col-md-2">
      <span for="gender">Gender</span>
      <input type="text" class="form-control" id="gender"
      value = "<sec:authentication property="principal.member.gender"/>"readonly>
    </div>
    <div class="form-group col-md-6">
      <span for="phone">Phone</span>
      <input type="text" class="form-control" id="phone"
      value = "<sec:authentication property="principal.member.phone"/>"readonly>
    </div>
    <div class="col-lg-12">
    <h2>Changing Information</h2>
	</div>
    <div class="form-group col-md-6">
      <span for="userid">UserID</span>
      <input type="text" class="form-control" id="userid" name="userid"
      value = "<sec:authentication property="principal.username"/>"readonly>
    </div>
    <div class="form-group col-md-6">
      <span for="user_name">Name</span>
      <input type="text" class="form-control" id="user_name" name="user_name">
    </div>
<div class="form-group col-md-2">
      <span for="age">Age</span>
      <input type="text" class="form-control" id="age" name="age">
    </div>
    <div class="form-group col-md-2">
      <span for="weight">Weight</span>>
      <input type="text" class="form-control" id="weight" name="weight">
    </div>
    <div class="form-group col-md-2">
      <span for="gender">Gender</span>>
      <input type="text" class="form-control" id="gender" name="gender">
    </div>
    <div class="form-group col-md-6">
      <span for="phone">Phone</span>
      <input type="text" class="form-control" id="phone" name="phone">
    </div>
  </div>
  <div align="center">
  <button onclick="javascript:btn()" type="submit" data-oper='modify' class="btn btn-warning">Update</button>
  </div>
  </div>
  </div>
  </div>
  </div>
  </section>
</form>
<script>
function btn(){
    alert('정보가 변경되었습니다. 다시 로그인해주세요.');
}
</script>

<%@include file="../includes/memfooter.jsp" %>