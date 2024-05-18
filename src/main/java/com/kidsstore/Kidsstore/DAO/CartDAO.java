package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Cart;
import com.kidsstore.Kidsstore.entities.CartList;


public interface CartDAO extends JpaRepository<Cart, String>{
    List<Cart> findByCid(String cid);
    List<Cart> findByProduct(CartList product);
    List<Cart> findByCidAndProduct(String cid, CartList product);
	void deleteById(int id);
    
}
