<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

            <%@include file="../includes/header.jsp" %>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Member Management</h1>

                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Member
                            </div>
                            <div align = "right">
                            <button type="submit" onclick="location.href='/admin/exile'">탈퇴</button>
                            </div>

                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>USER_ID</th>
                                            <th>USER_NAME</th>
                                            <th>AGE</th>
                                            <th>WEIGHT</th>
                                            <th>GENDER</th>
                                            <th>PHONE</th>
                                            <th>REG_DATE</th>
                                            <th>POINT</th>
                                            <th>SCORE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="admin">
                                            <tr class="odd gradeX">
                                                <td>${admin.userid }</td>
                                                <td>${admin.user_name }</td>
                                                <td>${admin.age }</td>
                                                <td>${admin.weight }</td>
                                                <td>${admin.gender }</td>
                                                <td>${admin.phone }</td>
                                                <td>
                                                <fmt:formatDate pattern = "yyyy/MM/dd" value="${admin.reg_dt}"/>
                                                </td>
                                                <td>${admin.point }</td>
                                                <td>${admin.score }</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <%@include file="../includes/footer.jsp" %>