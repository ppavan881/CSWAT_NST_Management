package org.cswat.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.cswat.entity.New_Request_Access_Entity;


public class New_RequestAccessModel {
	
	
	
	

	public void Request_Access_Method(DataSource dataSource, New_Request_Access_Entity newUser) {

		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			String testing_team = newUser.getTesting_team();
			String name = newUser.getName();
			String att_id = newUser.getAtt_id();
			String password = newUser.getPassword();
			String user_status = "Not Approved";

			String query = "insert into new_request_access (testing_team,name,att_id,password,user_status) values (?,?,?,?,?)";
			statement = connect.prepareStatement(query);
			statement.setString(1, testing_team);
			statement.setString(2, name);
			statement.setString(3, att_id);
			statement.setString(4, password);
			statement.setString(5, user_status);

			statement.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<New_Request_Access_Entity> listUsers(DataSource dataSource) {

		// Step 1: Initialize connection objects
		List<New_Request_Access_Entity> listUsers = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connect = dataSource.getConnection();
			// Step 2: Create a SQL statements string
			String query = "Select * from new_request_access";
			stmt = connect.createStatement();
			// Step 3: Execute SQL query
			rs = stmt.executeQuery(query);
			// Step 4: Process the result set
			while (rs.next()) {
				listUsers.add(new New_Request_Access_Entity(rs.getString("testing_team"), rs.getString("name"),
						rs.getString("att_id"), rs.getString("password"), rs.getString("user_status")));
				// Why we use "new user(int, string, string)" Constructor is, to store value
				// into a variable which are receive from database "
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUsers;
	}

	public String grantAprroval(DataSource dataSource,String att_id, String user_status) {
		
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();			
			String query = "update new_request_access set user_status = ? where att_id= ? ";
			statement = connect.prepareStatement(query);
			statement.setString(1, "Approved");
			statement.setString(2, att_id);		
			statement.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			return "user is already Approved" ; 
			
		}
		return "Approved";
	}



	public String loginFunctionCheck(DataSource dataSource, String Inputed_att_id, String Inputed_password) {
		
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		String user_status = null;
		String password=null;
		String att_id = null;
		
		try {
			connect = dataSource.getConnection();		
			String query = "select * from new_request_access where att_id = "+"\"" + Inputed_att_id + "\"";
			stmt = connect.createStatement();
			rs = stmt.executeQuery(query);
		    while (rs.next()) {
			att_id = rs.getString("att_id");
		    password = rs.getString("password");
			user_status = rs.getString("user_status");		
		}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		
		if(user_status.equals("Approved"))
			{
			
			    if(Inputed_att_id.equals(att_id) && Inputed_password.equals(password))
			    {	
			    	return "Approved";
			    }
			    else
			    { 	
			    	return "Invalid username or Password";
			    }
			} 
			else
			{
				return "User is Not Approved";
			}
		
	}

}
