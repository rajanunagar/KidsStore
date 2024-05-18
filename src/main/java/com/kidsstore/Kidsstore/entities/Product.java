package com.kidsstore.Kidsstore.entities;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@Column(name="p_id")
	private String pid;
	
	private String name;
	private int price;
	private String description;
	private String type;
	private int quantity;
	@Column(name = "photo")
	private byte[] photo;
	private float discount;
    public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String pid, String name, int price, String description, String type, int quantity, float discount,
			byte[] photo) {
		super();
		this.pid = pid;
		this.name = name;
		this.price = price;
		this.description = description;
		this.type = type;
		this.quantity = quantity;
		this.discount = discount;
		this.photo = photo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
    public byte[] getPhoto() {
	

    return this.photo;
    }
    public void setPhoto(byte[] p) {
        photo=p;
     }

//	private String base64Image;
//	public String getBase64Image() {
//    return base64Image;
//    }
//	public void setBase64Image(String base64Image) {
//    this.base64Image = base64Image;
//    }

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String p_id) {
		this.pid = p_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", name=" + name + ", price=" + price + ", description=" + description
				+ ", type=" + type + ", quantity=" + quantity + ", discount=" + discount + "]";
	}
	
}
