package kr.co.greenapple.beans;

import org.springframework.web.multipart.MultipartFile;

public class DogBean {

	private int dog_idx; 			   //테라피독PK
	private String dog_name; 		   //이름
	private String dog_type; 		   //견종
	private int dog_age; 			   //나이
	private String dog_sex; 		   //성별
	private String dog_neutralization; //중성화여부
	private String dog_memo; 		   //소개
	private String dog_picture; 	   //사진 //데이터베이스에 저장된 파일 이름을 담을 변수 (클라이언트)
	private String dog_tag; 		   //해시태그
	private int company_id; 		   //회사 ID_FK
	private String company_loginId;     //회사 로그인 ID
	private MultipartFile upload_file; //문자열 dog_ficture를 받기 위해 생성 //브라우저가 보낸 파일을 담기 위한 변수 (서버)
	private String company_local; 	   //테라피독 지역
	
	private String user_info;
	
	public String getUser_info() {
		return user_info;
	}
	public void setUser_info(String user_info) {
		this.user_info = user_info;
	}
	
	public int getDog_idx() {
		return dog_idx;
	}
	public void setDog_idx(int dog_idx) {
		this.dog_idx = dog_idx;
	}
	public String getDog_name() {
		return dog_name;
	}
	public void setDog_name(String dog_name) {
		this.dog_name = dog_name;
	}
	public String getDog_type() {
		return dog_type;
	}
	public void setDog_type(String dog_type) {
		this.dog_type = dog_type;
	}
	public int getDog_age() {
		return dog_age;
	}
	public void setDog_age(int dog_age) {
		this.dog_age = dog_age;
	}
	public String getDog_sex() {
		return dog_sex;
	}
	public void setDog_sex(String dog_sex) {
		this.dog_sex = dog_sex;
	}
	public String getDog_neutralization() {
		return dog_neutralization;
	}
	public void setDog_neutralization(String dog_neutralization) {
		this.dog_neutralization = dog_neutralization;
	}
	public String getDog_memo() {
		return dog_memo;
	}
	public void setDog_memo(String dog_memo) {
		this.dog_memo = dog_memo;
	}
	public String getDog_picture() {
		return dog_picture;
	}
	public void setDog_picture(String dog_picture) {
		this.dog_picture = dog_picture;
	}
	public String getDog_tag() {
		return dog_tag;
	}
	public void setDog_tag(String dog_tag) {
		this.dog_tag = dog_tag;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public String getCompany_loginId() {return company_loginId;}
	public void setCompany_loginId(String company_loginId) {this.company_loginId = company_loginId;}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public String getCompany_local() {
		return company_local;
	}
	public void setCompany_local(String company_local) {
		this.company_local = company_local;
	}

}
