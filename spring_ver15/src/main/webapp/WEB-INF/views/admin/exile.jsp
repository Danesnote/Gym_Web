<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

            <%@include file="../includes/header.jsp" %>
<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return false;
				}
			})
</script>

<section class="class-timetable-section spad">
<div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-title">
                        <h2>Member Expulsion</h2>
                        <span>Exile</span>
                        </div>
                        </div>
                        
                        </div>
                        <div class="row">
                        <div class="section-title">
                    <h2>User ID</h2>
                    </div>
                    <div class="col-lg-12">
                    
                    <form action="/admin/exile" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group has-feedback">
					<input class="form-control" type="text" id="userid" name="userid" />
				</div>
<div align="center" class="form-group has-feedback">				
	<button class="btn btn-warning" type="submit" id="submit" >Submit</button>
</div>
</form>
                    </div>
                        </div>
                        </div>
                        </section>



            <%@include file="../includes/footer.jsp" %>