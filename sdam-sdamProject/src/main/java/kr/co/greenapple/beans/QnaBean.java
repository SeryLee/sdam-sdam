package kr.co.greenapple.beans;

import java.util.Date;

import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
public class QnaBean {
	private MultipartFile upload_file;
	private String content_file;
	private int qna_idx;
	@NotBlank
	private String qna_subject;
	@NotBlank
	private String qna_content;
	private Date qna_date;
	private int qna_writer_idx;
	private String qna_writer_name;
}