package kr.co.greenapple.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.service.QnaService;

public class CheckWriterInterceptor implements HandlerInterceptor {

	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	@Autowired
	private QnaService qnaService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String str1 = request.getParameter("qna_idx");
		int qna_idx = Integer.parseInt(str1);
		
		QnaBean qnaBean = qnaService.readQna(qna_idx);
		
		if(qnaBean.getQna_writer_idx() != loginUserBean.getUser_idx()) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/qna/not_writer");
			return false;
		}
		
		return true;
	}
}
