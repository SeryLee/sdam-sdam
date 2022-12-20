package kr.co.greenapple.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
	@GetMapping("/")
	public String home() {
		
		return "main/main";
	}

	@GetMapping("/main")
	public String main() {

		return "main/main";
	}
}

