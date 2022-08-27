package com.apromac.saigneur.saigneurconfigserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class SaigneurConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(SaigneurConfigServerApplication.class, args);
	}

}
