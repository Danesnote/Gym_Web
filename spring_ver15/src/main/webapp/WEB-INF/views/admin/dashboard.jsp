<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%@include file="../includes/header.jsp" %>

<section class="contact-section spad">
   <div class="container">
      <div class="row">
<div class="col-lg-6">
            <div class="section-title contact-title">
            <h2>Management Chart</h2>
            <span>Dashboard</span>
          <div class="col-lg-12">
                    <iframe src="http://localhost:5601/app/dashboards#/view/722b74f0-b882-11e8-a6d9-e546fe2bba5f?embed=true&_g=(filters:!(),refreshInterval:(pause:!f,value:900000),time:(from:now-7d,to:now))&_a=(description:'Analyze%20mock%20eCommerce%20orders%20and%20revenue',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),query:(language:kuery,query:''),timeRestore:!t,title:'%5BeCommerce%5D%20Revenue%20Dashboard',viewMode:view)" height="700" width="1100"></iframe>
                </div>
</div></div></div></div></section>

<%@include file="../includes/footer.jsp" %>