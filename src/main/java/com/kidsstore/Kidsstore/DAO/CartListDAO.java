package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.CartList;
import com.kidsstore.Kidsstore.entities.Product;

public interface CartListDAO extends JpaRepository<CartList,Integer> {
	List<CartList> findByProduct(Product p);

}
