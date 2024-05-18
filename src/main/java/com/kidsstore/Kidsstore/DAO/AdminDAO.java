package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Admin;

public interface AdminDAO extends JpaRepository<Admin, String>{
    List<Admin> findByUsername(String username);
}
