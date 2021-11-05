<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/memheader.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">회원전용 게시판</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				운동 꿀팁 게시판
			</div>
			
			
<body>
<style>
 
        .main {
            min-width: 320px;
            max-width: 800px;
            padding: 10px;    
            border-radius: 7px;;        
            background: #ffffff;}
 
        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #ddd;}
 
        input {
              display: none;}
 
        label {
            display: inline-block;
            padding: 15px 25px;
            font-weight: 600;
            color: #bbb;
            border: 1px solid transparent;}
 
        label:hover {
            color: #2e9cdf;
            cursor: pointer;}
 
        /*input 클릭시, label 스타일*/
        input:checked + label {
              color: #555;
              border: 1px solid #ddd;
              border-top: 2px solid #2e9cdf;
              border-bottom: 1px solid #ffffff;}
 
        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2,
        #tab3:checked ~ #content3,
        #tab4:checked ~ #content4,
        #tab5:checked ~ #content5 {
            display: block;}
    </style>
 
<div class="main" style="text-align:left">
 
    <input id="tab1" type="radio" name="tabs" checked> 
    <label for="tab1">첫번째 탭</label>
 
    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">두번째 탭</label>
    
    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">세번째 탭</label>
    
    <input id="tab4" type="radio" name="tabs">
    <label for="tab4">네번째 탭</label>
    
    <input id="tab5" type="radio" name="tabs">
    <label for="tab5">다섯번째 탭</label>
    
    <section id="content1" style="margin-bottom:20px;">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/iDjQSdN_ig8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

		<p>
			<a href="https://www.bigbuckbunny.org/" target="_blank">Big Buck Bunny</a>.
		</p>
    </section>
 
    <section id="content2" style="margin-bottom:20px;">
        tab menu2의 내용
    </section>
    
    <section id="content3" style="margin-bottom:20px;">
        tab menu3의 내용
    </section>
 
    <section id="content4" style="margin-bottom:20px;">
        tab menu4의 내용
    </section>
    
    <section id="content5" style="margin-bottom:20px;">
        tab menu5의 내용
    </section>
 
</body>
</html>

<%@include file="../includes/memfooter.jsp"%>