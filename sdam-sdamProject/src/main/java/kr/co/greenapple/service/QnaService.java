package kr.co.greenapple.service;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.dao.QnaDao;
import kr.co.greenapple.pager.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class QnaService {
	
	@Value("${path.upload}")
	private String path_upload;
	
	@Value("${page.list.cnt}")
	private int page_list_cnt;
	
	@Value("${page.pagination.cnt}")
	private int page_pagination_cnt;
	
	@Autowired
	private QnaDao qnaDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	public void addQna(QnaBean writeQnaBean) {
		
		writeQnaBean.setQna_writer_idx(loginUserBean.getUser_idx());
		
		qnaDao.addQna(writeQnaBean);
	}
	

	
	public QnaBean readQna(int qna_idx) {
		return qnaDao.readQna(qna_idx);
	} 
	
	
	public QnaBean modifyQna(int qna_idx) {
		return qnaDao.modifyQna(qna_idx);
	}
	
	public void modifyQnaInfo(QnaBean modifyQnaBean) {
		qnaDao.modifyQnaInfo(modifyQnaBean);
	}
	
	public void deleteQna(int qna_idx) {
		qnaDao.deleteQna(qna_idx);
	}

	public List<QnaBean> getQnaList(Pager qnaPager) {
		int total = qnaDao.total(qnaPager);
		qnaPager.setTotal(total);
		
		return qnaDao.getQnaList(qnaPager);
	}
}
