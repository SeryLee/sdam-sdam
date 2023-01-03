package kr.co.greenapple.controller;


import kr.co.greenapple.beans.BookBean;
import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.service.BookService;
import kr.co.greenapple.service.DogService;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
@RequestMapping("/book")
public class BookController {

	private final DogService dogService;
	private final BookService bookService;

	public BookController(DogService dogService, BookService bookService) {
		this.dogService = dogService;
		this.bookService = bookService;
	}

	@Resource(name="loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	@GetMapping("/book")
	public String book(Pager dogBookPager, Model model) {
		
		model.addAttribute("user_idx",loginUserBean.getUser_idx() );
		List<DogBean> dogBookList = dogService.getDogs(dogBookPager);
		model.addAttribute("dogBookList", dogBookList);
		
		return "book/book";
	}	
	
	@GetMapping("/showDog")
	public String showDog(Pager dogBookPager, BookBean bookBean, Model model) {
		
		List<DogBean> dogBookList = dogService.getDogs(dogBookPager);
		
		model.addAttribute("user_idx",loginUserBean.getUser_idx() );
		model.addAttribute("dogBookList", dogBookList);

		log.info(bookBean.getCompany_local());
		log.info(bookBean.getService_date());
		log.info(bookBean.getDog_tag().toString());

		List<BookBean> showDogList = bookService.showDog(bookBean);
		
		for(BookBean bb : showDogList) {
			log.info(String.valueOf(bb.getDog_idx()));
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
		log.info(String.valueOf(bookBean.getUser_idx()));
		log.info(bookBean.getCompany_local());
		log.info(String.valueOf(bookBean.getDog_idx()));
		log.info(bookBean.getService_date());
		log.info(bookBean.getService_time());

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