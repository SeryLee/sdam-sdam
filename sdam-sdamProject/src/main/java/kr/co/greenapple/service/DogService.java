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

import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.dao.DogDao;
import kr.co.greenapple.pager.Pager;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class DogService {
	
	@Value("${path.upload}")
	private String path_upload; //첨부파일 경로 주입
	
	@Autowired
	private DogDao dogDao;
	
	@Resource(name = "dogBean")
	@Lazy
	private DogBean dogBean;
	
	@Resource(name = "userBean")
	@Lazy
	private UserBean userBean;
	
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
	
	public void addDog(DogBean dogBean) {
		MultipartFile upload_file = dogBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file);
			dogBean.setDog_picture(file_name);
		}
		
		dogDao.addDog(dogBean);
	}

	//테라피스트 여부 확인
	public UserBean getUserInfo(UserBean loginUserBean) {
		return dogDao.getUserInfo(loginUserBean);
	}

	//테라피독 불러오기
//	public List<DogBean> getDogs() {
//		return dogDao.getDogs();
//	}
	
	public List<DogBean> getDogs(Pager dogPager) {
		int total = dogDao.total(dogPager);
		dogPager.setTotal(total);
		return dogDao.getDogs(dogPager);
	}

	public DogBean modalDogs(int dog_idx) {
		
		return dogDao.modalDogs(dog_idx);
	}
	
	
}
