package kr.co.greenapple.beans;

import java.util.Date;

import javax.validation.constraints.NotBlank;

public class CustomerBean {

	
	//입양견
	
	@NotBlank
	private int adopt_idx;
	
	@NotBlank
	private int user_idx;

	@NotBlank
	private int dog_idx;
	
	private String adopt_email;
	
	private Date adopt_visitdate;
	
	@NotBlank
	private String adopt_tel;
	
	


	public int getAdopt_idx() {
		return adopt_idx;
	}

	public void setAdopt_idx(int adopt_idx) {
		this.adopt_idx = adopt_idx;
	}

	public String getAdopt_email() {
		return adopt_email;
	}

	public void setAdopt_email(String adopt_email) {
		this.adopt_email = adopt_email;
	}

	public Date getAdopt_visitdate() {
		return adopt_visitdate;
	}

	public void setAdopt_visitdate(Date adopt_visitdate) {
		this.adopt_visitdate = adopt_visitdate;
	}

	public String getAdopt_tel() {
		return adopt_tel;
	}

	public void setAdopt_tel(String adopt_tel) {
		this.adopt_tel = adopt_tel;
	}

	public int getDog_idx() {
		return dog_idx;
	}

	public void setDog_idx(int dog_idx) {
		this.dog_idx = dog_idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	
	
	
}
