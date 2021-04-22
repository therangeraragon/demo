package com.ex.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@RequestMapping(value="/ping")
	public String ping() {
		return "ping";
	}
}
