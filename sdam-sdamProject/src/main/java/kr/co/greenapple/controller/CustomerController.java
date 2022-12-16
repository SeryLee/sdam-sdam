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
		public String adoptWrite(
//				@ModelAttribute("customerBean") CustomerBean customerBean
				) {
			return "customer/adopt";
		}
//		
//		@PostMapping("/adoptdone") //form action에서 요청받았을 때 수행될 controller
//		public String adoptWriteDone(@Valid @ModelAttribute("customerBean") CustomerBean customerBean, BindingResult result) {
//			if(result.hasErrors()) {
//				return "customer/adopt";
//			}
//			return "customer/adopt_success";
//		}
		
		
}
