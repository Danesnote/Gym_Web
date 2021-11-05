<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

            <%@include file="../includes/header.jsp" %>
<section class="class-timetable-section spad">
<div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-title">
                        <h2>Member Management</h2>
                        <span>Member</span>
                        </div>

                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                            

                            <div class="class-timetable">
                                <table>
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
                                                <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                                <h5>${admin.userid }</h5></td>
                                                
                                                <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                                <h5>${admin.user_name }</h5></td>
                                                
                                                <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                                <h5>${admin.age }</h5></td>
                                                
                                                <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                                <h5>${admin.weight }</h5></td>
                                                
                                                <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                                <h5>${admin.gender }</h5></td>
                                                
                                                <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                                <h5>${admin.phone }</h5></td>
                                                <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                                <h5><fmt:formatDate pattern = "yyyy/MM/dd" value="${admin.reg_dt}"/></h5>
                                                </td>
                                                <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                                <h5>${admin.point }</h5></td>
                                                
                                                <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                                <h5>${admin.score }</h5></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <div align = "center">
                            <button class="btn btn-warning" type="submit" onclick="location.href='/admin/exile'"><h5>Exile</h5></button>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
          
            </section>

            <%@include file="../includes/footer.jsp" %>