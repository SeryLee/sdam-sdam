package kr.co.greenapple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.greenapple.service.UserService;

@RestController
public class RestApiController {
	private final UserService userService;

	public RestApiController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		boolean chk = userService.checkUserIdExist(user_id);
		
		return chk + "";
	}
	
	@GetMapping("/user/checkUserTelExist/{user_tel}")
	public String checkUserTelExist(@PathVariable String user_tel) {
		boolean chk = userService.checkUserTelExist(user_tel);
		
		return chk + "";
	}
}
