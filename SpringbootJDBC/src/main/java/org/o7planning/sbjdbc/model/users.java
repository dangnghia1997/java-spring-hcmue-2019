package org.o7planning.sbjdbc.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class users    {
	@org.springframework.data.annotation.Id
	private Integer id;
	private String email;
	private String password;
	private String firstname;
	private String lastname;
	private int role;
	public users() {
		super();
	}
	public users(Integer id, String email, String password, String firstname, String lastname, int role) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.role = role;
		
	}
	public users(Integer id, String email, String password, String firstname, String lastname) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String phone) {
		this.password= phone;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	public boolean checkEmail() {
	        String emailPattern = "^[\\w!#$%&’*+/=?`{|}~^-]+(?:\\.[\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
	        Pattern regex = Pattern.compile(emailPattern);
	        Matcher matcher = regex.matcher(this.email);
	        if (matcher.find()) {
	            return true;
	        } else {
	            return false;
	        }
	    }
	
	
	
	

}
