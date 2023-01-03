package kr.co.greenapple.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.greenapple.beans.UserBean;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
		
		@Resource(name = "loginUserBean")
		@Lazy
		private UserBean loginUserBean;
	 

		//고객센터
		@GetMapping("/faq")
		public String faq() {
			return "customer/faq";
		}

		
		
		@GetMapping("/adopt")
		public String adoptWrite() {
			return "customer/adopt";
		}

}
