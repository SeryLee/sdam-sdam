package kr.co.greenapple.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.greenapple.beans.ContentBean;
import kr.co.greenapple.beans.PageBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.dao.BoardDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardService {
	
	@Value("${path.upload}")
	private String path_upload;
	
	@Value("${page.list.cnt}")
	private int page_list_cnt;
	
	@Value("${page.pagination.cnt}")
	private int page_pagination_cnt;
	
	@Autowired
	private BoardDao boardDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;	
	
	private String saveUloadFile(MultipartFile upload_file) {
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	public void addContentInfo(ContentBean writeContentBean) {
		MultipartFile upload_file = writeContentBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUloadFile(upload_file);
			writeContentBean.setContent_file(file_name);
		}
		writeContentBean.setContent_writer_idx(loginUserBean.getUser_idx());
		
		boardDao.addContentInfo(writeContentBean);
	}
	
	public String getBoardInfoName(int board_info_idx) {
		return boardDao.getBoardInfoName(board_info_idx);
	}
	
	public List<ContentBean> getContentList(int board_info_idx, int page) {
		
		int start = (page - 1) * page_list_cnt;
		RowBounds rowBounds = new RowBounds(start, page_list_cnt);
		
		return boardDao.getContentList(board_info_idx, rowBounds);
		
	}
	
	public ContentBean getContentInfo(int content_idx) {
		return boardDao.getContentInfo(content_idx);
	}
	
	public void modifyContentInfo(ContentBean modifyContentBean) {
		MultipartFile upload_file = modifyContentBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUloadFile(upload_file);
			modifyContentBean.setContent_file(file_name);
		}
		
		boardDao.modifyContentInfo(modifyContentBean);
	}
	
	public void deleteContentInfo(int content_idx) {
		boardDao.deleteContentInfo(content_idx);
	}
	
	public PageBean getContentCnt(int content_board_idx, int currentPage) {
		
		int content_cnt = boardDao.getContentCnt(content_board_idx);
		
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_list_cnt, page_pagination_cnt);
		
		return pageBean;
	}
}
