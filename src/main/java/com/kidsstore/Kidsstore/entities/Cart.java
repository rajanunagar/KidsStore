package com.kidsstore.Kidsstore.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String cid;
	@OneToMany(cascade = CascadeType.ALL,orphanRemoval=true)
	private List<CartList>  product;

	public Cart(int id, String cid, List<CartList> product) {
		super();
		this.id = id;
		this.cid = cid;
		this.product = product;
	}
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<CartList> getProduct() {
		return product;
	}
	public CartList getProductByIndex(int i) {
		return product.get(i);
	}
	public void setProduct(List<CartList> product) {
		this.product = product;
	}
	public void addProduct(CartList product) {
		if(this.product==null)
			this.product=new ArrayList<CartList>();
		this.product.add(product);
	}
	public int getIdOfProductList(Product p) {
		for (int i = 0; i < product.size(); i++) {
			if(product.get(i).getProduct().equals(p)) {
				return i;
			}
		}
		return -1;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", cid=" + cid + ", product=" + product
				+ "]";
	}

}
