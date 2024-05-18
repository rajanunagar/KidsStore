package com.kidsstore.Kidsstore.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kidsstore.Kidsstore.DAO.ProductDAO;
import com.kidsstore.Kidsstore.entities.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productdao;

	@PostMapping("/NewProduct")
	public String addProduct(Product p,@RequestParam("image") MultipartFile multipartFile) {
		System.out.println(p);
		try {
			p.setPhoto(multipartFile.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String type=p.getType();
//		System.err.println(p);
		List<Product> products=productdao.findByType(type);
		if(type!=null) {
		int n=products.size();
		n+=1;
		
		String c=""+type.toLowerCase().charAt(0)+""+n;
		
		p.setPid(c);
		productdao.save(p);
		return "redirect:./admin";
	    }
		return "admin/addProduct";

	}

//	@RequestMapping("/NewProduct")
//	public String addProduct(Product p) {
//		System.out.println("Hello Guys!!");
//		System.err.println(p);
//		return "addProduct";
//	}
}
