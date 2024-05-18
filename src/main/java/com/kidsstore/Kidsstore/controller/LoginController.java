package com.kidsstore.Kidsstore.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kidsstore.Kidsstore.DAO.AdminDAO;
import com.kidsstore.Kidsstore.DAO.LoginDAO;
import com.kidsstore.Kidsstore.DAO.SignUpDAO;
import com.kidsstore.Kidsstore.entities.Admin;
import com.kidsstore.Kidsstore.entities.Login;
import com.kidsstore.Kidsstore.entities.User;

//import com.kidsstore.Kidsstore.DAO.SignUpDAO;


@Controller
@RequestMapping("/login")
public class LoginController {
  @Autowired
  private LoginDAO loginRepo;
  @Autowired
  private AdminDAO adminRepo;
  @PostMapping("")
  public String login(String username,String password,@RequestParam("usertype")String usertype,HttpServletRequest request) {
	  System.out.println(usertype);
	  if(usertype.equals("admin")) {
		  System.out.println("Hello");
		  List<Admin> admin =adminRepo.findByUsername(username);
		  if(admin.size()==1) {
			  System.out.println("Hello boy");

			 if(password.equals(admin.get(0).getPassword()) && password!=null) {
				  System.out.println("Hello boy");

				 HttpSession ses=request.getSession();
				  ses.setAttribute("username", username);
				  return "redirect:admin";			  			 }
		  }
	  }
	  else {
	  List<Login> user = loginRepo.findByUsername(username);
	  if(user.size()==1) {
		  System.out.println("Hello");
		  if(password.equals(user.get(0).getPass()) && password!=null) {
			  System.out.println("Hello2");
			  HttpSession ses=request.getSession();
			  System.out.println("Hello3");

			  ses.setAttribute("username", username);
			  System.out.println("Hello4");

			  return "redirect:./";			  
		  }else {
			  return "login";
		  }
	  }
	  }
	  return "login";
  }
  @GetMapping("")
  public String login() {
	  return "login";
  }
}
