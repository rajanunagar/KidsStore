package com.kidsstore.Kidsstore.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String street;
    private String address2;
    private String city;
    private String state;
    private String country;
    private String pincode;
    @OneToOne(cascade = CascadeType.ALL)
    private User user;
    
    
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(int id, String street, String address2, String city, String state, String country, String pincode,
			User user) {
		super();
		this.id = id;
		this.street = street;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", street=" + street + ", address2=" + address2 + ", city=" + city + ", state="
				+ state + ", country=" + country + ", pincode=" + pincode + ", user=" + user + "]";
	}
    
}
