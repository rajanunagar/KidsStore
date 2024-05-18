package com.kidsstore.Kidsstore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class KidsstoreApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(KidsstoreApplication.class, args);
	}
	  @Override
	  protected SpringApplicationBuilder  configure(SpringApplicationBuilder builder) {
	    return builder.sources(KidsstoreApplication.class);
	  }
}
