package com.kidsstore.Kidsstore.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ShippingAddress {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String scountry;
	private String fname;
	private String lname;
	private String email;
	private String phoneno;
	private String scompany;
	private String sstreet;
	private String scity;
	private String sstate;
	private String spostcode;
	private String saddress2;
    
	
	
	public ShippingAddress() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShippingAddress(int id, String scountry, String fname, String lname, String email, String phoneno,
			String scompany, String sstreet, String scity, String sstate, String spostcode, String saddress2) {
		super();
		this.id = id;
		this.scountry = scountry;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phoneno = phoneno;
		this.scompany = scompany;
		this.sstreet = sstreet;
		this.scity = scity;
		this.sstate = sstate;
		this.spostcode = spostcode;
		this.saddress2 = saddress2;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getScountry() {
		return scountry;
	}



	public void setScountry(String scountry) {
		this.scountry = scountry;
	}



	public String getFname() {
		return fname;
	}



	public void setFname(String fname) {
		this.fname = fname;
	}



	public String getLname() {
		return lname;
	}



	public void setLname(String lname) {
		this.lname = lname;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhoneno() {
		return phoneno;
	}



	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}



	public String getScompany() {
		return scompany;
	}



	public void setScompany(String scompany) {
		this.scompany = scompany;
	}



	public String getSstreet() {
		return sstreet;
	}



	public void setSstreet(String sstreet) {
		this.sstreet = sstreet;
	}



	public String getScity() {
		return scity;
	}



	public void setScity(String scity) {
		this.scity = scity;
	}



	public String getSstate() {
		return sstate;
	}



	public void setSstate(String sstate) {
		this.sstate = sstate;
	}



	public String getSpostcode() {
		return spostcode;
	}



	public void setSpostcode(String spostcode) {
		this.spostcode = spostcode;
	}



	public String getSaddress2() {
		return saddress2;
	}



	public void setSaddress2(String saddress2) {
		this.saddress2 = saddress2;
	}



	@Override
	public String toString() {
		return "ShippingAddress [id=" + id + ", scountry=" + scountry + ", fname=" + fname + ", lname=" + lname
				+ ", email=" + email + ", phoneno=" + phoneno + ", scompany=" + scompany + ", sstreet=" + sstreet
				+ ", scity=" + scity + ", sstate=" + sstate + ", spostcode=" + spostcode + ", saddress2=" + saddress2
				+ "]";
	}
	
	
}
