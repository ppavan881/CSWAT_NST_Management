package org.cswat.entity;

public class New_Request_Access_Entity {
	
	
	String testing_team ;
	String name;
	String att_id;
	String password;
	String user_status;
	
	public New_Request_Access_Entity(String att_id,String password)
	{
		super();

		this.att_id = att_id;
		this.password = password;
		this.user_status = user_status;
		
	}
	
	public New_Request_Access_Entity(String testing_team, String name, String att_id,String password) {
		super();
		this.testing_team = testing_team;
		this.name=name;
		this.att_id = att_id;
		this.password = password;
	}
	
	public New_Request_Access_Entity(String testing_team, String name, String att_id,String password,String user_status) {
		super();
		this.testing_team = testing_team;
		this.name=name;
		this.att_id = att_id;
		this.password = password;
		this.user_status = user_status;
	}
	
	
	public String getUser_status() {
		return user_status;
	}

	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}

	public String getTesting_team() {
		return testing_team;
	}
	public void setTesting_team(String testing_team) {
		this.testing_team = testing_team;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAtt_id() {
		return att_id;
	}
	public void setAtt_id(String att_id) {
		this.att_id = att_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
