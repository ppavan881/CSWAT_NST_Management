<%@include file="cswat_final_template_files/header_sidebar_admin.jsp" %>

<div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
  <h5>	
  
  <% 
  if(request.getAttribute("msg") == null) 
  {out.print("Hey, CSWAT Admin"); }
  else
  {  out.print(request.getAttribute("msg"));  }
  %> </h5>
  
  
      </div>
    </div>
  </div>
<%@include file="cswat_final_template_files/footer.jsp" %>