package com.kidsstore.Kidsstore.DAO;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.User;


public interface SignUpDAO extends JpaRepository<User, String>{
	List<User> findByUsername(String username);
}
