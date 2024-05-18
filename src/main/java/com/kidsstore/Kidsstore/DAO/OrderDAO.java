package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Order;
import com.kidsstore.Kidsstore.entities.User;

public interface OrderDAO extends JpaRepository<Order, Integer>{
   List<Order> findByUser(User user);
}
