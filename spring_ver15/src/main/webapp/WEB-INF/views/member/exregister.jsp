<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>

<%@include file="../includes/memheader.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>


<script type="text/javascript">
   $(document).ready(function() {
      $("#submit").on("click", function() {
         if ($("#exid").val() == "") {
            alert("운동 종목을 입력해주세요.");
            $("#exid").focus();
            return false;
         }
         if ($("#eno").val() == "") {
            alert("등록번호를 입력해주세요.");
            $("#eno").focus();
            return false;
         }
         if ($("#userid").val() == "") {
            alert("유저 아이디를 입력해주세요.");
            $("#userid").focus();
            return false;
         }
      })
   })
</script>


<section class="contact-section spad">
   <div class="container">
      <div class="row">
         <div align="center" class="col-lg-6">
            <div class="section-title">
            <h2>오늘 수행한 운동 종목을 입력하여 추가하세요.</h2>
            <br>
            <div class="section-title">
         <span>운동 종류 설명</span><br>
         <p>ex001 : 걷기 ex002 : 달리기 ex003 : 자전거 ex004 : 수영 ex005 : 줄넘기   ex006 : 에어로빅댄스 ex007 : 등산   ex008 : 배드민턴   ex009 : 테니스   ex010 : 탁구   ex011 : 축구  ex012 : 농구   ex013 : 조깅  ex014 : 경보   ex015 : 크로스컨트리   ex016 : 스키   ex017 : 프레스 ex018 : 턱걸이  ex019 : 팔굽혀펴기   ex020 : 렛 풀 다운 ex021 : 덤벨 컬  ex022 : 데드리프트 ex023 : 스쿼트  ex024 : 슈러그 ex025 : 고강도 훈련  ex026 : 딥스  ex027 : 케이블 로우 ex028 : 크런치</p>
      </div>
               <form action="/member/exregister" method="post">
                  <input type="hidden" name="${_csrf.parameterName}"
                     value="${_csrf.token}" />
                  <div align="center" class="form-group has-feedback">
                     <label class="control-label" for="eno"><span>등록 번호</span></label> <input
                        class="form-control" type="text" id="eno" name="eno" />
                  </div>
                  <div align="center" class="form-group">
                     <label><span>유저명</span></label> <input class="form-control" name='userid'
                        value='<sec:authentication property="principal.username"/>'
                        readonly="readonly">
                  </div>
                  <div align="center" class="form-group has-feedback">
                     <label class="control-label" for="exid"><span>운동 종류</span></label> <input
                        class="form-control" type="text" id="exid" name="exid" />
                  </div>
                  <div align="center" class="form-group has-feedback">
                     <button class="btn btn-warning" type="submit" id="submit"><span>등록</span></button>
                  </div>
               </form>

            </div>
         </div>
      </div>
   </div>
</section>

<%@include file="../includes/memfooter.jsp"%>