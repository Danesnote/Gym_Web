<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 활성화</title>
</head>
<%@include file="includes/memheader.jsp"%>
<section class="contact-section spad">
   <div class="container">
      <div class="row">
         <div align="center" class="col-lg-12">
            <div class="leave-comment">
               <h1><span style="color: orangered">회원 활성화.</span></h1>
               <br>

               <h2 style="color: white">
                  회원님의 계정이 활성화 되었습니다.
               </h2>
               <br>

               <button class="btn btn-warning" type="submit"
                  onclick="location.href='/member/home'">홈으로</button>
            </div>
         </div>
      </div>
   </div>
</section>
<%@include file="includes/memfooter.jsp"%>
</html>