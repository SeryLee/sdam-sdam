package kr.co.greenapple.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.service.QnaService;

@Controller
@RequestMapping("/customer")
public class QnaController {

	private final QnaService qnaService;

	public QnaController(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;

	//qna main 목록 출력하기
	@GetMapping("/qna")
	public String main(Pager QnaPager, Model model) {
		
		List<QnaBean> qnaList = qnaService.getQnaList(QnaPager);
		model.addAttribute("qnaList", qnaList);
		
		return "customer/qna_main";
	}
		

	//qna 게시글 작성 불러오기
	@GetMapping("/write")
	public String write(@ModelAttribute("writeQnaBean") QnaBean writeQnaBean, Model model) {
		
		model.addAttribute("loginUserBean", loginUserBean);
		
		return "customer/qna_write";
	}
	
	//qna 게시글 작성
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeQnaBean") QnaBean writeQnaBean, BindingResult result) {
		if(result.hasErrors()) {
			return "customer/qna_write";
		}
		qnaService.addQna(writeQnaBean);
		
		return "customer/qna_write_success";
	}
	

	//qna 게시글 읽기
	@GetMapping("/read")
	public String read(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		model.addAttribute("qna_idx", qna_idx);
		
		QnaBean readQnaBean = qnaService.readQna(qna_idx);
		
		model.addAttribute("readQnaBean", readQnaBean);
		
		model.addAttribute("loginUserBean", loginUserBean);
		
		return "customer/qna_read";
	}
	
	
	@GetMapping("/modify")
	public String modify(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		
		QnaBean modifyBean = qnaService.modifyQna(qna_idx);
		model.addAttribute("modifyQnaBean", modifyBean);
		
		return "customer/qna_modify";
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyQnaBean") QnaBean modifyQnaBean,
			BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "customer/qna_modify";
		}
		
		qnaService.modifyQnaInfo(modifyQnaBean);
		
		return "customer/qna_modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("qna_idx") int qna_idx, Model model) {
		
		qnaService.deleteQna(qna_idx);
		return "customer/qna_delete";
	}
	
	@GetMapping("/not_writer") 
	public String not_writer() {	
		return "customer/qna_not_writer";
	}
}
