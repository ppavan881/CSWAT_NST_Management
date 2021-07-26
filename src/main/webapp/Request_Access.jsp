<%@include file="cswat_final_template_files/header_sidebar_index.jsp"%>


<div class="w3-panel">
	<div class="w3-row-padding" style="margin: 0 -16px">
		<div class="w3-twothird">
			<h3>User Registration</h3>
			<form action="${pageContext.request.contextPath}/OperationController"
				method="post">

				<table>
					<tr>
				 		<td>Testing Team</td>
						<td><select id="testing_team" name="testing_team">
								<option value="Consumer_E2E">Consumer E2E</option>
								<option value="Retail_IST">Retail IST</option>
								<option value="Amdocs_IST">Amdocs IST</option>
								<option value="Mobility_E2E">Mobility E2E</option>
						</select></td>
					</tr>

					<tr>

						<td>Name</td>
						<td><input type="text" id="username" name="username"
							required="required"></td>
					</tr>

					<tr>
						<td>ATT ID</td>
						<td><input type="text" id="att_id" name="att_id"
							required="required"></td>
					</tr>

					<tr>
						<td>Password</td>
						<td><input type="password" id="password" name="password"
							required="required"></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="hidden" name="form" value="request_supportoperation">
							<input type="submit" value="Request Access"></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
</div>
<%@include file="cswat_final_template_files/footer.jsp"%>