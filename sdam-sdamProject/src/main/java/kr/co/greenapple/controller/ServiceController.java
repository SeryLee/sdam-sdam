package kr.co.greenapple.controller;

import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.service.DogService;
import kr.co.greenapple.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/service")
public class ServiceController {
	
	private final DogService dogService;
	private final UserService userService;

	public ServiceController(DogService dogService, UserService userService) {
		this.dogService = dogService;
		this.userService = userService;
	}

	//테라피독
	@GetMapping("/therapydog")
	public String therapydog(Pager dogPager, Model model) {
		
		List<DogBean> list = dogService.getDogs(dogPager);
		model.addAttribute("dogList", list);
				
		return "service/therapydog";
	}

	//modal 테라피독 정보
	@GetMapping("/getDogInfo")
	//@ResponseBody  jsp파일 자체를 return할 때는 @ResponseBody 없어야함
	public String getDogInfo(@RequestParam int dog_idx,
							 Model model) {
		//dog_idx값 받아서 쿼리 작성 ->
		DogBean dogInfo = dogService.modalDogs(dog_idx);
		//model.addAttribute부분 작성
		model.addAttribute("dogInfo", dogInfo);

		return "service/modalDog";
	}
		
	//테라피독 등록
	@GetMapping("/addDog")
	public String addDog(@ModelAttribute("dogBean") DogBean dogBean) {
		return "service/addDog";
	}
	
	@PostMapping("/addDog_pro")
	public String addDog_pro(@Valid @ModelAttribute("dogBean") DogBean dogBean, BindingResult result) {
		if(result.hasErrors()) {
			return "service/addDog";
		}
		dogService.addDog(dogBean);
		return "service/addDog_success";
	}
	
	//테라피스트 페이징
	 @GetMapping("/therapist") 
	 public String therapist(Model model,Pager pager) {

				 
		 List<UserBean> list = userService.gettherapists(pager);
		 model.addAttribute("therapist", list);
		
		 
		//db에서 가져옴
		List<UserBean> therapistlist = userService.getUserInfos();
		model.addAttribute("therapistlist",therapistlist);
		 
		return "service/therapist"; 
	}
	
	//테라피스트 더보기
	@GetMapping("/therapistdetail")
	public String therapistdetail(Model model, @RequestParam int userIdx) {

				
		//tId가 idx 번호에 사람을 DB에서 가져옴
		UserBean userBean = userService.getUserInfo(userIdx);
		//그걸 model.addAttribute에서 그 사람을 추가함
		model.addAttribute("therapist", userBean);
		
		return "service/therapistdetail";
	}
	
	


}