package kr.co.greenapple.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.UserBean;

@Repository
public class TherapistDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
 	
//	public String checkUserIdExist(String user_id) {
//		return sqlSessionTemplate.selectOne("user.checkUserIdExist", user_id);  
//	}
	
}
