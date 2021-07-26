package org.cswat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		case "index":
			index(request, response);
			break;
			
		case  "request_support" :
			request.getRequestDispatcher("Request_Support.jsp").forward(request, response);
			break;
		case "errorpage":
			request.getRequestDispatcher("ErrorPage.jsp").forward(request, response);
			break;
			
		case "login":
			request.getRequestDispatcher("Login.jsp").forward(request, response);
			break;
			
		default:
			errorPage(request, response);
		}
	}

	public void index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Homepage");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	public void errorPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Error page");
		request.getRequestDispatcher("ErrorPage.jsp").forward(request, response);

	}	
		
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
