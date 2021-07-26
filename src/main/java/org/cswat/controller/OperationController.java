package org.cswat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.cswat.entity.New_Request_Access_Entity;
import org.cswat.model.New_RequestAccessModel;


/**
 * Servlet implementation class OperationController
 */
@WebServlet("/OperationController")
public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;
    
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		case "request_access":
			new_Request_Access(request, response);
			break;
			
		case "admin_approval":
			admin_approval(request, response);
		break;		
		case "grant_approval":
			grant_approval(request, response);
		break;
		
		default:
			request.getRequestDispatcher("ErrorPage.jsp").forward(request, response);
			break;
		}

	}
		
private void grant_approval(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String att_id = request.getParameter("att_id");
	String user_status = request.getParameter("user_status");
	
	String status = new New_RequestAccessModel().grantAprroval(dataSource,att_id,user_status);
	String msg = "Approved" ;
	request.setAttribute(msg, msg);
	request.getRequestDispatcher("Login_proceed_admin.jsp").forward(request, response);
}


public void admin_approval(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	List <New_Request_Access_Entity> listusers = new ArrayList();
	listusers = new New_RequestAccessModel().listUsers(dataSource);
	request.setAttribute("listUsers", listusers);
	request.setAttribute("title", "List of users");
	request.getRequestDispatcher("Admin_Approval.jsp").forward(request, response);

}
public void new_Request_Access(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Request Access");
		request.getRequestDispatcher("Request_Access.jsp").forward(request, response);

	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String operation = request.getParameter("form");
		operation = operation.toLowerCase();

		switch (operation) {
		case "request_supportoperation":
			New_Request_Access_Entity newUser = new New_Request_Access_Entity(request.getParameter("testing_team"),request.getParameter("username"), request.getParameter("att_id"),request.getParameter("password"));
			new_Request_Access_Operation(newUser);			
			request.getRequestDispatcher("submission.jsp").forward(request, response);
			break;
			
	    case "login_user_operation":
			login_user_operation(request, response);
		    break;
		
		default:
			request.getRequestDispatcher("ErrorPage.jsp").forward(request, response);
			break;
		}
	}
	
	void new_Request_Access_Operation(New_Request_Access_Entity newUser)
	{
		new New_RequestAccessModel().Request_Access_Method(dataSource, newUser);
		return;
	}
	private void login_user_operation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//New_Request_Access_Entity login_user = new New_Request_Access_Entity(request.getParameter("att_id") ,request.getParameter("passsword"));
		String Inputed_att_id= request.getParameter("att_id");	
		String Inputed_password = request.getParameter("password");		
		
		if(Inputed_att_id.equals("CSWAT_Admin") && Inputed_password.equals("admin"))			
		{
			request.getRequestDispatcher("Login_proceed_admin.jsp").forward(request, response);
		
		}
		else {
			String Login_msg = new New_RequestAccessModel().loginFunctionCheck(dataSource,Inputed_att_id,Inputed_password);
		
			
				if(Login_msg.equals("Approved"))
				{
					request.getRequestDispatcher("Login_proceed_enduser.jsp").forward(request, response);
				}
				else if (Login_msg.equals("Invalid username or Password"))
				{
					request.setAttribute("Login_msg", Login_msg);
					request.getRequestDispatcher("Login_proceed.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("Login_msg", Login_msg);
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
		
		    }
		
	}

}
