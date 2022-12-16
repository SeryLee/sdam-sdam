package kr.co.greenapple.beans;

import java.util.ArrayList;
import java.util.List;

public class BookBean {
	
	private int service_idx;
	
	private String service_date;
	
	private String service_time;
	
	private String service_check;
	
	private int user_idx;
	
	private String user_id;
	
	private int dog_idx;
	
	private String company_local;
	
	private List<String> dog_tag = new ArrayList<String>();
//	private String dog_tag;
	
	private String dog_name;

	private String dog_picture;

	public int getService_idx() {
		return service_idx;
	}

	public void setService_idx(int service_idx) {
		this.service_idx = service_idx;
	}

	public String getService_date() {
		return service_date;
	}

	public void setService_date(String service_date) {
		this.service_date = service_date;
	}

	public String getService_time() {
		return service_time;
	}

	public void setService_time(String service_time) {
		this.service_time = service_time;
	}

	public String getService_check() {
		return service_check;
	}

	public void setService_check(String service_check) {
		this.service_check = service_check;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getDog_idx() {
		return dog_idx;
	}

	public void setDog_idx(int dog_idx) {
		this.dog_idx = dog_idx;
	}

	public String getCompany_local() {
		return company_local;
	}

	public void setCompany_local(String company_local) {
		this.company_local = company_local;
	}

	public List<String> getDog_tag() {
		return dog_tag;
	}

	public void setDog_tag(List<String> dog_tag) {
		this.dog_tag = dog_tag;
	}

	public String getDog_name() {
		return dog_name;
	}

	public void setDog_name(String dog_name) {
		this.dog_name = dog_name;
	}

	public String getDog_picture() {
		return dog_picture;
	}

	public void setDog_picture(String dog_picture) {
		this.dog_picture = dog_picture;
	}

}