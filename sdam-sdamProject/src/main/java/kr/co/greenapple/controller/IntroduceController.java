package kr.co.greenapple.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IntroduceController {
	//소개페이지
	@GetMapping("/introduce/intro")
	public String introduce() {
		
		return "introduce/intro";
	}
}
