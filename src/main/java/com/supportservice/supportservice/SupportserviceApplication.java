package com.supportservice.supportservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class SupportserviceApplication {

	@RestController
	public class HelloWorld {
		@GetMapping("/hello")
		public String helloWorld() {
			return "Hello World";
		}
		
	}
	public static void main(String[] args) {
		SpringApplication.run(SupportserviceApplication.class, args);
	}

}
