package kr.co.greenapple.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.pager.Pager;
import kr.co.greenapple.beans.PageBean;
import kr.co.greenapple.beans.QnaBean;

@Repository
public class QnaDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<QnaBean> getQnaList(Pager qnaPager) {
		 return sqlSessionTemplate.selectList("qna.getQnaList", qnaPager);
	}
	
	public int total(Pager qnaPager) {
		return sqlSessionTemplate.selectOne("qna.total", qnaPager);
	}

	public void addQna(QnaBean writeQnaBean) {
		sqlSessionTemplate.insert("qna.addQna", writeQnaBean);
	}
		
	public QnaBean readQna(int qna_idx) {
		return sqlSessionTemplate.selectOne("qna.readQna", qna_idx);
	}
	
	public QnaBean modifyQna(int qna_idx) {
		return sqlSessionTemplate.selectOne("qna.modifyQna", qna_idx);
	}
	
	public void modifyQnaInfo(QnaBean modifyQnaBean) {
		sqlSessionTemplate.update("qna.modifyQnaInfo", modifyQnaBean);
	}
	
	public void deleteQna(int qna_idx) {
		sqlSessionTemplate.delete("qna.deleteQna", qna_idx);
	}

}
