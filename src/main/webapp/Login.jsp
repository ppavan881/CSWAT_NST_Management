<%@include file="cswat_final_template_files/header_sidebar_index.jsp" %>


<div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
<h3> User Login </h3>
    <form action="${pageContext.request.contextPath}/OperationController" method="post">
	
<table>
 <tr>
            <td>Username</td>
            <td>
            <input type="text" id="att_id" name="att_id" required="required" >
            </td>
          </tr>
          
          <tr>
            <td>Password</td>
            <td>
                      <input type="text" id="password" name="password" required="required" >
            </td>
          </tr>
          
    <tr>
            <td></td>
            <td>
            
            	 <input type="hidden" name="form" value="login_user_operation">
		         <input type="submit" value="Login">  
            </td>
          </tr>

  </table>
  <h5>	<% 
  if(request.getAttribute("Login_msg") == null) 
  {out.print(""); }
  else
  {  out.print(request.getAttribute("Login_msg"));  }
  %> </h5>
  
		</form>
      </div>
    </div>
  </div>
<%@include file="cswat_final_template_files/footer.jsp" %>