package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kidsstore.Kidsstore.entities.Product;
import com.kidsstore.Kidsstore.entities.User;

public interface ProductDAO extends JpaRepository<Product, String>{
	List<Product> findByPid(String pid);
	List<Product> findByType(String type);

}
