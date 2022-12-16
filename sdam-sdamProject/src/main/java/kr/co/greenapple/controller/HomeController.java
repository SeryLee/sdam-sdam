package kr.co.greenapple.controller;


import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


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

