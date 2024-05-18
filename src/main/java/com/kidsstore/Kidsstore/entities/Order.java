package com.kidsstore.Kidsstore.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne(cascade = CascadeType.PERSIST)
	private Product product;
	private int Quantity;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "username")	
	private User user;
	@OneToOne(cascade = CascadeType.ALL)
	private BillingAddress address;
	@OneToOne(cascade = CascadeType.ALL)
	private ShippingAddress saddress;
	private Date date;
	private String status;

	public Order(int id, Product product, int quantity, User user, BillingAddress address, ShippingAddress saddress,
			Date date, String status) {
		super();
		this.id = id;
		this.product = product;
		Quantity = quantity;
		this.user = user;
		this.address = address;
		this.saddress = saddress;
		this.date = date;
		this.status = status;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public int getQuantity() {
		return Quantity;
	}


	public void setQuantity(int quantity) {
		Quantity = quantity;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public BillingAddress getAddress() {
		return address;
	}


	public void setAddress(BillingAddress address) {
		this.address = address;
	}


	public ShippingAddress getSaddress() {
		return saddress;
	}


	public void setSaddress(ShippingAddress saddress) {
		this.saddress = saddress;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", product=" + product + ", Quantity=" + Quantity + ", user=" + user + ", address="
				+ address + ", saddress=" + saddress + ", date=" + date + ", status=" + status + "]";
	}



	

}
