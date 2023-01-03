package kr.co.greenapple.beans;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
public class CustomerBean {
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
}
