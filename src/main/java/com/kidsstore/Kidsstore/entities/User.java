package com.kidsstore.Kidsstore.entities;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "User")
public class User {
	@Id
	private String username;
	private String name;
	private String address;
	private String email;

	private String phoneno;
	private Date DOB;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "u_name", unique = true)	
	private Login login;
    public User() {
    	super();
    }
	public User(String name, String address, String email, String phoneno, Date dOB) {
		super();
	    Date index = new Date();
	    SimpleDateFormat indformat = new SimpleDateFormat("mmss");
	    String strind = indformat.format(index);
	    String id="kids"+strind;
	    username=id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phoneno = phoneno;
		DOB = dOB;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", name=" + name + ", address=" + address + ", email=" + email
				+ ", phoneno=" + phoneno + ", DOB=" + DOB + "]";
	}

}
