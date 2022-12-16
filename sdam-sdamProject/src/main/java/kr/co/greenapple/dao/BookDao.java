package kr.co.greenapple.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.BookBean;

@Repository
public class BookDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void addBook(BookBean bookBean) {
		sqlSessionTemplate.insert("book.addBook", bookBean);	
	}

	public List<BookBean> showDog(BookBean bookBean) {
		return sqlSessionTemplate.selectList("book.showDog", bookBean);
	}

}
