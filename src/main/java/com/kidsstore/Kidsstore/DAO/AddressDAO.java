package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Address;
import com.kidsstore.Kidsstore.entities.User;

public interface AddressDAO extends JpaRepository<Address, Integer>{
   List<Address> findByUser(User user);
}
