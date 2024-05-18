package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.ShippingAddress;
import com.kidsstore.Kidsstore.entities.User;

public interface ShippingAddressDAO extends JpaRepository<ShippingAddress, Integer>{
	
}
