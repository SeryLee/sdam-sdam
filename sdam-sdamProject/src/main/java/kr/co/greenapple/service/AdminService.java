package kr.co.greenapple.service;

import kr.co.greenapple.beans.BookBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.dao.AdminDao;
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
public class AdminService {
	
	//첨부파일경로
	@Value("${path.upload}")
	private String path_upload;
	
	@Autowired
	private AdminDao adminDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	
	//admin user 관리
	public List<UserBean> getAdminUserList(Pager userPager) {
		int total = adminDao.userTotal(userPager);
		userPager.setTotal(total);
		return adminDao.getAdminUserList(userPager);
	}

	//admin user 탈퇴
	public void AdminDeleteUser(int user_idx) {
		adminDao.AdminDeleteUser(user_idx);
	}

	//admin 예약 목록 관리
	public List<BookBean> getAdminUserBook(Pager bookPager) {
		int total = adminDao.bookTotal(bookPager);
		bookPager.setTotal(total);
		return adminDao.getAdminUserBook(bookPager);
	}

	public void adminUserBookAllow(int service_idx) {
		adminDao.adminUserBookAllow(service_idx);
	}

	public void adminUserBookNotAllow(int service_idx) {
		adminDao.adminUserBookNotAllow(service_idx);		
	}

}
