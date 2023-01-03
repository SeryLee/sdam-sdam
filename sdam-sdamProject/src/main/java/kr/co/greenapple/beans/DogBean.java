package kr.co.greenapple.beans;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
public class DogBean {
	private int dog_idx; 			   //테라피독PK
	@NotBlank
	private String dog_name; 		   //이름
	private String dog_type; 		   //견종
	private int dog_age; 			   //나이
	@NotBlank
	private String dog_sex; 		   //성별
	@NotBlank
	private String dog_neutralization; //중성화여부
	@NotBlank
	private String dog_memo; 		   //소개
	private String dog_picture; 	   //사진 //데이터베이스에 저장된 파일 이름을 담을 변수 (클라이언트)
	@NotBlank
	private String dog_tag; 		   //해시태그
	private int company_id; 		   //회사 ID_FK
	private int user_idx;			   //회원 ID_FK
	private MultipartFile upload_file; //문자열 dog_picture 를 받기 위해 생성 //브라우저가 보낸 파일을 담기 위한 변수 (서버)
	@NotBlank
	private String dog_region; 	   	   //테라피독 지역
}
