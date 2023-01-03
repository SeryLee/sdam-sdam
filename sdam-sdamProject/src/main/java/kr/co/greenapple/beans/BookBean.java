package kr.co.greenapple.beans;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class BookBean {
	private int service_idx;
	private String service_date;
	private String service_time;
	private String service_check;
	private int user_idx;
	private String user_id;
	private int dog_idx;
	private String company_local;
	private List<String> dog_tag = new ArrayList<>();
	private String dog_name;
	private String dog_picture;

}