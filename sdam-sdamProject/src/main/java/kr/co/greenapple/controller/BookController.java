package kr.co.greenapple.controller;


import kr.co.greenapple.beans.BookBean;
import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.service.BookService;
import kr.co.greenapple.service.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private DogService dogService;
	
	@Resource(name="dogBean")
	@Lazy
	private DogBean dogBean;
	
	@Autowired
	private BookService bookService;

	@Resource(name="loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
//	@Resource(name="bookParamBean")
//	@Lazy
//	private BookBean bookParamBean;

	
	@GetMapping("/book")
	public String book(Pager dogBookPager, Model model) {
		
		model.addAttribute("user_idx",loginUserBean.getUser_idx() );
		List<DogBean> dogBookList = dogService.getDogs(dogBookPager);
		model.addAttribute("dogBookList", dogBookList);
		
		return "book/book";
	}	
	
	@GetMapping("/showdog")
	public String showDog(Pager dogBookPager,
//			@RequestParam(defaultValue = "") String company_local,
//			@RequestParam(defaultValue = "") String service_date,
//			@RequestParam(defaultValue = "") String dog_tag,
			BookBean bookBean,
			Model model) {
		
		List<DogBean> dogBookList = dogService.getDogs(dogBookPager);
		
		model.addAttribute("user_idx",loginUserBean.getUser_idx() );
		model.addAttribute("dogBookList", dogBookList);
		
		
		System.out.println(bookBean.getCompany_local());
		System.out.println(bookBean.getService_date());
		System.out.println(bookBean.getDog_tag());
		
		//String을
		
		List<BookBean> showDogList = bookService.showDog(bookBean);
		
		for(BookBean bb : showDogList) {
		 	System.out.println(bb.getDog_idx()); 
		}
		
		model.addAttribute("dogBookList", showDogList);
		
		return "book/dogs";
	}	
	
	@PostMapping("/dogIdxCheck.json")
	public String dogIdxCheck() {
		
		return "book/book";
	}
	
	//예약 신청서 등록
	@PostMapping("/book")
	public String addbook(BookBean bookBean, BindingResult bindingResult) {
		
		
		
		//넘어오는 값
		System.out.println("============= 신청서 ============");
		System.out.println("신청자idx: "+ bookBean.getUser_idx());
		System.out.println("지역: "+ bookBean.getCompany_local());
	    System.out.println("테라피독idx: "+ bookBean.getDog_idx());
	    System.out.println("날짜: "+ bookBean.getService_date());
	    System.out.println("시간: "+ bookBean.getService_time());
	    System.out.println("================================");
		
		
		
		
		if(bindingResult.hasErrors()) {
			if(bookBean.getService_time()==null) {
				return "book/book";
			}
			return "book/book";
		}
		
		
		bookService.addBook(bookBean);
		return "book/bookdone";
	}
	
}