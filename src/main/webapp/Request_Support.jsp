
<%@include file="cswat_final_template_files/header_sidebar_endUser.jsp" %>


<div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
        <h5>NST Request Support</h5>
        
        <form action="${pageContext.request.contextPath}/OperationController" method="post">
	
<table>
          <tr>
            <td>CDEX Number </td>
            <td>
            <input type="text" id="cdex_id" name="cdex_id" required="required" >
            </td>
          </tr>
          
          <tr>
            <td>Start Date</td>
            <td>
                       <input type="datetime-local" id="startdate" required="required" 
       		    	   name="startdate" value="2018-06-12T19:30"
       		     	   min="2018-06-07T00:00" max="2022-06-14T00:00">
            </td>
          </tr>
          
           <tr>
            <td>Testing Team</td>
            <td>
                <select id="testing_team" name="testing_team">
                <option value="Consumer_E2E">Consumer E2E</option>
                <option value="Retail_IST">Retail IST</option>
   			    <option value="Amdocs_IST">Amdocs IST</option>
   				<option value="Mobility_E2E">Mobility E2E</option>
                </select> 
            </td>
          </tr>
                
            <tr>
            <td> Defect type</td>
            <td>
                   <input type="radio" id="defect_type" name="defect_type" value="smoketest">
                   <label for="html">Smoke Test</label>
 				   <input type="radio" id="defect_type" name="defect_type" value="non_smoketest" checked>
				   <label for="css">Non Smoke Test</label>
            </td>
          </tr>
          
           <tr>
            <td>  Front End  </td>
            <td>
                   <select id="frontend" name="front_end">
                   <option value="OPUS">OPUS</option>
                   <option value="CRM">CRM</option>
   			       <option value="OMS">OMS</option>
   			    	 <option value="IDP">IDP</option>
                   <option value="BBNMS">BBNMS</option>
                   <option value="EDGE">EDGE</option>
                   </select>
            </td>
          </tr>
          
          <tr>
            <td> PID </td>
            <td>
            <input type="text" id="pid" name="pid">
            </td>
          </tr>
          
            <tr>
            <td>  Day One Impact </td>
            <td>
            		<select id="dayone_impact" name="dayone_impact">
                   <option value="YES">YES</option>
                   <option value="NO">NO</option> 
                   </select> 
            </td>
          </tr>
          
       
            <tr>
            <td> Blocking Percentage </td>
            <td>
		        <input type="text" id="percentage_blokced"name="percentage_blokced">
            </td>
          </tr>
          
           <tr>
            <td> Chatroom </td>
            <td>
		        <input type="text" id="chatroom" name="chatroom" required="required">
            </td>
          </tr>
          
           <tr>
            <td> Is it Consistent? </td>
            <td>
		              <select id="consitancy" name="consitancy">
                       <option value="YES">YES</option>
                       <option value="NO">NO</option> 
                       </select>
            </td>
          </tr>
          
           <tr>
            <td>Current App Owner </td>
            <td>
		              <input type="text" id="cdex_id" name="current_owner">
            </td>
          </tr>
          
          <tr>
            <td></td>
            <td>
            	 <input type="hidden" name="form" value="addUserOperation">
		         <input type="submit" value="Request Support">  
            </td>
          </tr>

  </table>
		</form>
      </div>
    </div>
  </div>

<%@include file="cswat_final_template_files/footer.jsp" %>