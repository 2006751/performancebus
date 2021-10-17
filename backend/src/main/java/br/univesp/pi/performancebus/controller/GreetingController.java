package br.univesp.pi.performancebus.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/health", produces = "application/hal+json")
public class GreetingController {

	@GetMapping("/status")
	public String health() {
		return "Projeto Integrador no ar!";
	}
}
