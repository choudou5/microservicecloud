package com.microservicecloud.sleuth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import zipkin.server.EnableZipkinServer;

@SpringBootApplication
@EnableZipkinServer
public class MicroservicecloudSleuthServer9001 {

	public static void main(String[] args) {

		SpringApplication.run(MicroservicecloudSleuthServer9001.class, args);
	}

}
