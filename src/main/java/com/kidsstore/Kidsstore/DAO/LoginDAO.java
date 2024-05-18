package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Login;

public interface LoginDAO extends JpaRepository<Login, String>{
	List<Login> findByUsername(String u_name);
}
