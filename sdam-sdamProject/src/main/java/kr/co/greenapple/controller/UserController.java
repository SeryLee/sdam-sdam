package kr.co.greenapple.controller;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.service.UserService;
import kr.co.greenapple.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

	private final UserService userService;

	public UserController(UserService userService) {
		this.userService = userService;
	}

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;


	@GetMapping("/login")
	public String login(@ModelAttribute("loginInfo") UserBean loginInfo, @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail);
		return "user/login";
	}

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("loginInfo") UserBean loginInfo, BindingResult result, HttpServletRequest request) {
		if(result.hasErrors()) {
			return "user/login";
		}
		userService.getLoginUserInfo(loginInfo);

		HttpSession session = request.getSession();

		if(loginUserBean.isUserLogin()) {
			session.setAttribute("loginUserId", loginInfo.getUser_idx());
			return "user/login_success";
		} else {
			return "user/login_fail";
		}
	}

	@GetMapping("/join_user")
	public String join_user(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join_user";
	}
	@GetMapping("/join_therapist")
	public String join_therapist(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join_therapist";
	}

	@GetMapping("/join_company")
	public String join_company(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join_company";
	}
	@GetMapping("/join_select")
	public String join_select(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join_select";
	}

	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {

		if(result.hasErrors()) {
			return "user/join_user";
		}

		if(joinUserBean.getUser_info() != null && joinUserBean.getUser_info().equals("T")  ) {
			userService.addTherapist(joinUserBean);
		}else {
			userService.addUserInfo(joinUserBean);
		}
		return "user/join_success";
	}


	//마이페이지
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {

		userService.getModifyUserInfo(modifyUserBean);

		return "user/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {
		if(result.hasErrors()) {
			return "user/modify";
		}

		userService.modifyUserInfo(modifyUserBean);

		return "user/modify_success";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		loginUserBean.setUserLogin(false);

		request.getSession().invalidate(); //로그아웃시 세션삭제

		return "user/logout";
	}

	@GetMapping("/not_login")
	public String not_login() {
		return "user/not_login";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}

	//마이페이지>게시물관리
	@GetMapping("/my_board")
	public String my_board(Model model) {

		int user_idx = loginUserBean.getUser_idx();
		List<QnaBean> myQnaBoardList = userService.myQnaBoard(user_idx);
		model.addAttribute("qnaList", myQnaBoardList);

		return "user/my_board";
	}

	//마이페이지>예약관리
	@GetMapping("/my_service")
	public String my_service() {
		return "user/my_service";
	}

	//마이페이지>예약관리
	@GetMapping("/my_delete")
	public String my_delete(@ModelAttribute("deleteUserBean") UserBean deleteUserBean) {

		userService.getDeleteUserInfo(deleteUserBean);

		return "user/user_del";
	}

	@PostMapping("/my_delete_pro")
	public String my_delete_pro(@ModelAttribute("deleteUserBean") UserBean deleteUserBean, HttpServletRequest request) {

		int deleteSuccess = userService.deleteUserInfo(deleteUserBean);
		if(deleteSuccess > 0) {
			request.getSession().invalidate();
			return "user/delete_success";
		} else {
			return "user/delete_fail";
		}
	}
}
