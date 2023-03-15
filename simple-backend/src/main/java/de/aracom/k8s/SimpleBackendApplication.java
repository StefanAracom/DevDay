package de.aracom.k8s;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@SpringBootApplication
public class SimpleBackendApplication {

	@GetMapping(path = "/welcome")
	public String getText(){
		return "Hallo DevDay!";
	}

	public static void main(String[] args) {
		SpringApplication.run(SimpleBackendApplication.class, args);
	}

}
