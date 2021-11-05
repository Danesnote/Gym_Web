<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@include file="../includes/memheader.jsp"%>


<section class="contact-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="section-title contact-title">
					<h2 class="page-header">회원전용 게시판</h2>
					<span>운동 꿀팁 게시판</span>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->


		</div>



		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#chest"><span style="color: orangered">가슴운동</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#back"><span style="color: orangered">등운동</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#shoulder"><span style="color: orangered">어깨운동</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#leg"><span style="color: orangered">하체운동</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#arm"><span style="color: orangered">팔운동</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#strech"><span style="color: orangered">스트레칭/교정</span></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#food"><span style="color: orangered">식단</span></a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade show active" id="chest">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/nKsIjDD6WxA" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/mnLzv7brYxA" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/d9m--yp_wyk" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

			</div>

			<div class="tab-pane fade" id="back">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/GJ5yObTw-S8" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/tIyfSwFNfuc" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/SmxvbUXT4_Q" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="tab-pane fade" id="shoulder">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/fr-5MKeRfVU" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/16rc3IV_GxQ" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/YQPyk32RMqU" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="tab-pane fade" id="leg">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/bp4ZL2VbjuE" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/u5OgcZdNbMo" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/J2l8vX4FhTw" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/tkU0V6o0mOo" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

			</div>

			<div class="tab-pane fade" id="arm">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/M0qywv-s61w" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/7738o4_uic8" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/URVOrAxBDq0" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="tab-pane fade" id="strech">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/-VUL0wMKzyw" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/sWCbpXfoU5A" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/Eb2-LK3tc5A" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/e_QuW02wtyE" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

			<div class="tab-pane fade" id="food">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/FcixKeb_C5E" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/lTBPAjs2BtA" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br> <br> <br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/ctjwWMOysFI" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>

			</div>
		</div>
	</div>
</section>


<%@include file="../includes/memfooter.jsp"%>