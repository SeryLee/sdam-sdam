package kr.co.greenapple.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
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
	private MultipartFile upload_file; //문자열 therapist_picture 를 받기 위해 생성

	public UserBean() {
		this.userIdExist = false;
		this.userTelExist = false;
		this.userLogin = false;
	}
}
