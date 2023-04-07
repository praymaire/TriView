package com.itwillbs.join;

import java.sql.Date;

public class JoinDTO { // Data transfer Object
	private String name;
	private String id;
	private	String pass;
    private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	// alt shift s + s
	@Override
	public String toString() {
		return "BoardDTO [ name=" + name + ", pass=" + pass + ",  id="+id+", email=" +email+ "]";
	}
	

}
