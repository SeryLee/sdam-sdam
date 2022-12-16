package kr.co.greenapple.beans;

import java.util.Date;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

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
	

	public MultipartFile getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}

	public String getContent_file() {
		return content_file;
	}

	public void setContent_file(String content_file) {
		this.content_file = content_file;
	}

	public int getQna_idx() {
		return qna_idx;
	}

	public void setQna_idx(int qna_idx) {
		this.qna_idx = qna_idx;
	}

	public String getQna_subject() {
		return qna_subject;
	}

	public void setQna_subject(String qna_subject) {
		this.qna_subject = qna_subject;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public Date getQna_date() {
		return qna_date;
	}

	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}

	public int getQna_writer_idx() {
		return qna_writer_idx;
	}

	public void setQna_writer_idx(int qna_writer_idx) {
		this.qna_writer_idx = qna_writer_idx;
	}

	public String getQna_writer_name() {
		return qna_writer_name;
	}

	public void setQna_writer_name(String qna_writer_name) {
		this.qna_writer_name = qna_writer_name;
	}

}