package kr.co.greenapple.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class UserBean {
	private int user_idx;
	
	@Size(min=2, max=4)
	@Pattern(regexp = "[가-힣]*")
	private String user_name;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_id;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw2;
	
	@Size(min=10, max=11)
	@Pattern(regexp = "[0-9]{10,11}", message = "10~11자리의 숫자만 입력가능합니다")
	private String user_tel;
	
	private String user_birth;
	private String user_address;
	private String user_protector_name;
	private String user_protector_tel;
	
	
	private String therapist_license;
	private String therapist_picture;
	private String therapist_career;
	private int therapist_level;
	private String therapist_resume;
	private String user_info;
	private int company_idx;
	
	private boolean userIdExist;
	private boolean userTelExist;
	private boolean userLogin;
	
	private String company_id;
	private String company_local;
	
	private MultipartFile upload_file; //문자열 therapist_ficture를 받기 위해 생성 
	

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public UserBean() {
		this.userIdExist = false;
		this.userTelExist = false;
		this.userLogin = false;
	}
	
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public boolean isUserTelExist() {
		return userTelExist;
	}

	public void setUserTelExist(boolean userTelExist) {
		this.userTelExist = userTelExist;
	}

	

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_protector_name() {
		return user_protector_name;
	}

	public void setUser_protector_name(String user_protector_name) {
		this.user_protector_name = user_protector_name;
	}

	public String getUser_protector_tel() {
		return user_protector_tel;
	}

	public void setUser_protector_tel(String user_protector_tel) {
		this.user_protector_tel = user_protector_tel;
	}

	public String getTherapist_license() {
		return therapist_license;
	}

	public void setTherapist_license(String therapist_license) {
		this.therapist_license = therapist_license;
	}

	public String getTherapist_picture() {
		return therapist_picture;
	}

	public void setTherapist_picture(String therapist_picture) {
		this.therapist_picture = therapist_picture;
	}

	public String getTherapist_career() {
		return therapist_career;
	}

	public void setTherapist_career(String therapist_career) {
		this.therapist_career = therapist_career;
	}

	public int getTherapist_level() {
		return therapist_level;
	}

	public void setTherapist_level(int therapist_level) {
		this.therapist_level = therapist_level;
	}

	public String getTherapist_resume() {
		return therapist_resume;
	}

	public void setTherapist_resume(String therapist_resume) {
		this.therapist_resume = therapist_resume;
	}

	public String getUser_info() {
		return user_info;
	}

	public void setUser_info(String user_info) {
		this.user_info = user_info;
	}

	public int getCompany_idx() {
		return company_idx;
	}

	public void setCompany_idx(int company_idx) {
		this.company_idx = company_idx;
	}
	
	
	public String getCompany_local() {
		return company_local;
	}

	public void setCompany_local(String company_local) {
		this.company_local = company_local;
	}

	//파일 업로드
	public MultipartFile getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	
	@Override
	public String toString() {
		return "UserBean [user_idx=" + user_idx + ", user_name=" + user_name + ", user_id=" + user_id + ", user_pw="
				+ user_pw + ", user_pw2=" + user_pw2 + ", user_tel=" + user_tel + ", user_birth=" + user_birth
				+ ", user_address=" + user_address + ", user_protector_name=" + user_protector_name
				+ ", user_protector_tel=" + user_protector_tel + ", therapist_license=" + therapist_license
				+ ", therapist_picture=" + therapist_picture + ", therapist_career=" + therapist_career
				+ ", therapist_level=" + therapist_level + ", therapist_resume=" + therapist_resume + ", user_info="
				+ user_info + ", company_idx=" + company_idx + ", userIdExist=" + userIdExist + ", userTelExist="
				+ userTelExist + ", userLogin=" + userLogin + ", company_id=" + company_id + ", upload_file="
				+ upload_file + "]";
	}

}
