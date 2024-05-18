package com.kidsstore.Kidsstore.entities;

import javax.persistence.Column;

//import org.hibernate.annotations.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "login")

public class Login {
	@Id
	@Column(name="u_name")
	private String username;
	private String pass;

	public String getUsername() {
		return username;
	}

	public void setUsername(String u_name) {
		this.username = u_name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "Login [u_name=" + username + ", pass=" + pass + "]";
	}

}
