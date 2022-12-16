package kr.co.greenapple.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.BookBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;

@Repository
public class AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
 	
	
	public List<UserBean> getAdminUserList(Pager userPager) {
		return sqlSessionTemplate.selectList("admin.getAdminUserList", userPager);
	}

	public int userTotal(Pager userPager) {
		return sqlSessionTemplate.selectOne("admin.userTotal", userPager);
	}

	public void AdmindeleteUser(int user_idx) {
		sqlSessionTemplate.selectList("admin.AdmindeleteUser", user_idx);
	}

	public List<BookBean> getAdminUserBook(Pager bookPager) {
		return sqlSessionTemplate.selectList("admin.getAdminUserBook", bookPager);
	}
	
	public int bookTotal(Pager bookPager) {
		return sqlSessionTemplate.selectOne("admin.bookTotal", bookPager);
	}

	public void adminUserBookAllow(int service_idx) {
		sqlSessionTemplate.selectOne("admin.adminUserBookAllow", service_idx);		
	}

	public void adminUserBookNotAllow(int service_idx) {
		sqlSessionTemplate.selectOne("admin.adminUserBookNotAllow", service_idx);
	}
}