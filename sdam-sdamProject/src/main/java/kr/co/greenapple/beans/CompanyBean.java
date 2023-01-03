package kr.co.greenapple.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyBean {
	private String company_id;
	private String company_pw;
	private String company_tel;
	private int company_number;
	private String company_file;
	private boolean company_check;
	private String company_local;
}
