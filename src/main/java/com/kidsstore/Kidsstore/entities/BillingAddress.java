package com.kidsstore.Kidsstore.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class BillingAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String bcountry;
	private String bcompany;
	private String bstreet;
	private String bcity;
	private String bstate;
	private String bpostcode;
	private String baddress2;
	@ManyToOne(cascade = CascadeType.ALL)
	private User user;
	
	
	public BillingAddress() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BillingAddress(int id, String bcountry, String bcompany, String bstreet, String bcity, String bstate,
			String bpostcode, String baddress2, User user) {
		super();
		this.id = id;
		this.bcountry = bcountry;
		this.bcompany = bcompany;
		this.bstreet = bstreet;
		this.bcity = bcity;
		this.bstate = bstate;
		this.bpostcode = bpostcode;
		this.baddress2 = baddress2;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBcountry() {
		return bcountry;
	}
	public void setBcountry(String bcountry) {
		this.bcountry = bcountry;
	}
	public String getBcompany() {
		return bcompany;
	}
	public void setBcompany(String bcompany) {
		this.bcompany = bcompany;
	}
	public String getBstreet() {
		return bstreet;
	}
	public void setBstreet(String bstreet) {
		this.bstreet = bstreet;
	}
	public String getBcity() {
		return bcity;
	}
	public void setBcity(String bcity) {
		this.bcity = bcity;
	}
	public String getBstate() {
		return bstate;
	}
	public void setBstate(String bstate) {
		this.bstate = bstate;
	}
	public String getBpostcode() {
		return bpostcode;
	}
	public void setBpostcode(String bpostcode) {
		this.bpostcode = bpostcode;
	}
	public String getBaddress2() {
		return baddress2;
	}
	public void setBaddress2(String baddress2) {
		this.baddress2 = baddress2;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "BillingAddress [id=" + id + ", bcountry=" + bcountry + ", bcompany=" + bcompany + ", bstreet=" + bstreet
				+ ", bcity=" + bcity + ", bstate=" + bstate + ", bpostcode=" + bpostcode + ", baddress2=" + baddress2
				+ ", user=" + user + "]";
	}




	

}
