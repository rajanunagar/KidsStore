package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.BillingAddress;
import com.kidsstore.Kidsstore.entities.User;

public interface BillingAddressDAO extends JpaRepository<BillingAddress, Integer> {
  List<BillingAddress> findByUser(User user);
}
