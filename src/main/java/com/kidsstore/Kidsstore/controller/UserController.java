package com.kidsstore.Kidsstore.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kidsstore.Kidsstore.DAO.LoginDAO;
import com.kidsstore.Kidsstore.DAO.SignUpDAO;
import com.kidsstore.Kidsstore.entities.*;

@Service
@Controller
@RequestMapping("/SignUp")
public class UserController {
	  @Autowired
	  private SignUpDAO signupdao;
	  @Autowired
	  private LoginDAO logindao;
	  @PostMapping("")
	  public String signUp(User user, String cpassword,HttpSession session) {
		  List<User> users = signupdao.findByUsername(user.getUsername());
		  if(user.getLogin().getPass()!=null && user.getLogin().getPass().equals(cpassword)) {
			  if(users.size()<1) {
				  Date index = new Date();
					SimpleDateFormat indformat = new SimpleDateFormat("mmss");
					String strind = indformat.format(index);
					String id = "kids" + strind;
				  user.setUsername(id);
				  user.getLogin().setUsername(id);
				  System.out.println(user.getUsername()+user.getLogin().getPass());
				  System.err.println(user.getLogin());
				  logindao.save(user.getLogin());
				  System.err.println(user);
				  signupdao.save(user);
				  session.setAttribute("username",id);
//				  EntityManagerFactory em=new EntityManagerFactoryBuilder();
				  return "redirect:./";
			  }else {
				  return "signUp";
			  }
		  }
		  return "signUp";
	  }
}
