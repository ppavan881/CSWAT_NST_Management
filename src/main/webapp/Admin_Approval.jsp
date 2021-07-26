<%@include file="cswat_final_template_files/header_sidebar_admin.jsp" %>
<%@ page import="java.util.List"%>
<%@ page import="org.cswat.entity.New_Request_Access_Entity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">

<h3>Requested Accesses </h1>


 
 <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
        <h5>NST Request Support</h5>
        <table class="w3-table w3-striped w3-white">
          <tbody>
          <thead>
					<th>Testing Team</th>
					<th>Name</th>
					<th>ATT ID</th>
					<th>Password</th>
					<th>User_Status</th>
				</thead>
				
		<c:forEach items="${listUsers}" var="user">
		
				<c:url var="grant_new_user_approval" value="OperationController">		
				<c:param name="page" value="grant_approval"></c:param>			
				<c:param name="att_id" value="${user.att_id}"></c:param>
				<c:param name="user_status" value="${user.user_status}"></c:param>
		</c:url>
			
		<tr>
		<td>${user.testing_team}</td>
 		<td>${user.name}</td>
 		<td>${user.att_id}</td>
 		<td>${user.password}</td>
 		
 		
 		<td>
 				<a href="${grant_new_user_approval}"
					onclick="if(!confirm('Approved?')) return false">${user.user_status}</a>
 				</td>
		</tr>
		</c:forEach>
          
          
        
          
         
        </tbody></table>
      </div>
    </div>
  </div>

  </div>
  </div>
</div>
<%@include file="cswat_final_template_files/footer.jsp" %>