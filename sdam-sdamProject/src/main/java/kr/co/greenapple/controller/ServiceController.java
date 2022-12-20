package kr.co.greenapple.controller;

import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.service.DogService;
import kr.co.greenapple.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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

	@Resource(name="dogBean")
	@Lazy
	private DogBean dogBean;

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	//테라피독
	@GetMapping("/therapydog")
	public String therapydog(
//			@RequestParam("user_idx") int user_idx,
//			@ModelAttribute("userInfoBean") UserBean userInfoBean,
			Pager dogPager,
			Model model) {
		
		List<DogBean> list = dogService.getDogs(dogPager);
		model.addAttribute("dogList", list);
		
//		userService.getLoginUserInfo(userInfoBean);
//		userService.getDogUserInfo(user_idx);
//		userService.getUserInfo();
//		userService.getDogUserInfo(userInfoBean);
//		userService.getUserInfo(user_idx);
		
		
//테라피스트 정보를 가져오려면 /service/therapydog?user_idx=3 이런식으로 해당 테라피스트 user_idx를 같이 넘겨줘야될 것 같고
//		UserBean ubean = userService.getUserInfo(user_idx);
//		UserBean ubean = userService.getUserInfo(userInfoBean.getUser_idx());
//		model.addAttribute("userInfo", ubean);
				
//		System.out.println(ubean.getUser_info());
				
		return "service/therapydog";
	}

	//modal 테라피독 정보
	@GetMapping("/getdoginfo")
	//@ResponseBody  jsp파일 자체를 return할 때는 @ResponseBody 없어야함
	public String getdoginfo(@RequestParam int dog_idx,
							 Model model) {
		//dog_idx값 받아서 쿼리 작성 ->
		DogBean dogInfo = dogService.modalDogs(dog_idx);
		//model.addAttribute부분 작성
		model.addAttribute("dogInfo", dogInfo);

		return "service/modaldog";
	}
		
	//테라피독 등록
	@GetMapping("/adddog")
	public String adddog_get(@ModelAttribute("dogBean") DogBean dogBean, UserBean userBean) {
		
		return "service/adddog";
	}
	
	@PostMapping("/joindog")
	public String adddog_post(@Valid @ModelAttribute("dogBean") DogBean dogBean) {

		dogService.addDog(dogBean);
		
		return "service/adddog_success";
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