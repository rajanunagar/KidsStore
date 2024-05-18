package com.kidsstore.Kidsstore.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kidsstore.Kidsstore.entities.Product;
import com.kidsstore.Kidsstore.entities.Recents;

public interface RecentsDAO extends JpaRepository<Recents, Integer>{
   List<Recents> findByProduct(Product p);
}
