<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="includes/memheader.jsp" %>


<!-- 회원가입 페이지 -->
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return false;
				}
				if($("#password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return false;
				}
				if($("#user_name").val()==""){
					alert("성명을 입력해주세요.");
					$("#user_name").focus();
					return false;
				}
				if($("#age").val()==""){
					alert("나이를 입력해주세요.");
					$("#age").focus();
					return false;
				}
				if($("#weight").val()==""){
					alert("체중을 입력해주세요.");
					$("#weight").focus();
					return false;
				}
				if($("#gender").val()==""){
					alert("성별을 입력해주세요.");
					$("#gender").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("휴대폰 번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				
			});
			
		
				
			
		})
	</script>
	<body>
	
		<!-- Contact Section Begin -->
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
                            <p>경기도 성남시 분당구 대왕판교로644번길 49,<br/> DTC타워 5층 6층</p>
                        </div>
                        <div class="cw-text">
                            <i class="fa fa-mobile"></i>
                            <ul>
                                <li>
02-3404-6100</li>
                              
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
                        <form action="/join" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				
                            <input class="form-control" type="text" placeholder="ID"  id="userid" name="userid" />
                            <input class="form-control" type="password" placeholder="Password" id="password" name="password" />
                            <input class="form-control" type="text" placeholder="Name" id="user_name" name="user_name" />
                            <input class="form-control" type="text" placeholder="Age"  id="age" name="age" />                            
                            <input class="form-control" type="text" placeholder="Weight" id="weight" name="weight" />
                            <input class="form-control" type="text" placeholder="Gender" id="gender" name="gender" />
                            <input class="form-control" type="text" placeholder="Phone Number" id="phone" name="phone" />
                            <button class="btn btn-default" type="submit" id="submit">Join</button>
                            <button class="btn btn-default" type="button" id="cancle">Cancle</button>
                        </form>
                    </div>
                    </div>
                   
                </div>
            </div>
            
        
    </section>
    <!-- Contact Section End -->
		
	</body>
</html>
<%@include file="includes/memfooter.jsp" %>