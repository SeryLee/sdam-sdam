package kr.co.greenapple.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.dao.UserDao;
import kr.co.greenapple.pager.Pager;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class UserService {
	
	//첨부파일경로
	@Value("${path.upload}")
	private String path_upload;
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name = "loginUserBean")
	@Lazy
	private UserBean loginUserBean;
	
	//파일 저장
		private String saveUploadFile(MultipartFile upload_file) {
			String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
			
			try {
				upload_file.transferTo(new File(path_upload + "/" + file_name));
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return file_name;
		}
		
		public void addTherapist(UserBean joinUserBean) {
			MultipartFile upload_file = joinUserBean.getUpload_file();
			
			if(upload_file.getSize() > 0) {
				String file_name = saveUploadFile(upload_file);
				joinUserBean.setTherapist_picture(file_name);
			}
			userDao.addTherapist(joinUserBean);
		}
	
	public boolean checkUserIdExist(String user_id) {
		String user_name = userDao.checkUserIdExist(user_id);
		
		if(user_name == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean checkUserTelExist(String user_tel) {
		String user_name = userDao.checkUserTelExist(user_tel);
		
		if(user_name == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean loginInfo) {
		UserBean loginInfo2 = userDao.getLoginUserInfo(loginInfo);
		
		if(loginInfo2 != null) {
			loginUserBean.setUser_idx(loginInfo2.getUser_idx());
			loginUserBean.setUser_name(loginInfo2.getUser_name());
			loginUserBean.setUser_info(loginInfo2.getUser_info());
			loginUserBean.setUserLogin(true);
		}
		
//		https://soobindeveloper8.tistory.com/443		
//		try {
//			String infoT = loginInfo2.getUser_info();
//		} catch (NullPointerException e) {
//			loginInfo2 = new UserBean();
//		}

		//테라피스트확인
//		loginInfo.setUser_info(loginInfo2.getUser_info());
	} 
	
	public void getModifyUserInfo(UserBean modifyUserBean) {
		UserBean loginInfo = userDao.getModifyUserInfo(loginUserBean.getUser_idx());
	
		modifyUserBean.setUser_id(loginInfo.getUser_id());
		modifyUserBean.setUser_name(loginInfo.getUser_name());
		modifyUserBean.setUser_idx(loginInfo.getUser_idx());
		
		//회원정보수정
		modifyUserBean.setUser_tel(loginInfo.getUser_tel());
		modifyUserBean.setUser_address(loginInfo.getUser_address());
		
		//테라피스트확인
//		modifyUserBean.setUser_info(loginInfo.getUser_info());
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		
		userDao.modifyUserInfo(modifyUserBean);
	}
	
	//테라피스트 더보기 했을 때 정보 가져오기
		public UserBean  getUserInfo(int userIdx) {
			return userDao.getUser(userIdx);
	}
	
	//테라피스트 했을 때 정보 가져오기
		public List<UserBean>  getUserInfos() {
			return userDao.getUsers();
		}
		
	//테라피스트 페이지
	public List<UserBean> gettherapists(Pager pager) {
		
		//TODO:테라피스트 가입된 사람 수로 수정해야함
		int total = userDao.total(pager);
		pager.setTotal(total);		
		return userDao.gettherapists(pager);
	}

	public List<QnaBean> myQnaBoard(int user_idx) {
		return userDao.myQnaBoard(user_idx);
	}

	
	
}
