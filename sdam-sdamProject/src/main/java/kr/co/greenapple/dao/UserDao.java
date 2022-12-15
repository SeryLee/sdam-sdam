package kr.co.greenapple.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.QnaBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;

@Repository
public class UserDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
 	
	public String checkUserIdExist(String user_id) {
		return sqlSessionTemplate.selectOne("user.checkUserIdExist", user_id);  
	}
	
	public String checkUserTelExist(String user_tel) {
		return sqlSessionTemplate.selectOne("user.checkUserTelExist", user_tel);  
	}

	public void addUserInfo(UserBean joinUserBean) {
		sqlSessionTemplate.insert("user.addUserInfo", joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean loginInfo) {
		return sqlSessionTemplate.selectOne("user.getLoginUserInfo", loginInfo);
	}
	
	public UserBean getModifyUserInfo(int user_idx) {
		return sqlSessionTemplate.selectOne("user.getModifyUserInfo", user_idx);
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		sqlSessionTemplate.update("user.modifyUserInfo", modifyUserBean);
	}
	
	//테라피스트 정보 추가하기
	public void addTherapist(UserBean joinUserBean) {
		sqlSessionTemplate.insert("user.addTherapist", joinUserBean);
		}
	
	//테라피스트 더보기 정보 가져오기
	public UserBean getUser(int userIdx) {
		return sqlSessionTemplate.selectOne("user.getUserInfo", userIdx); 
	}
	
	//테라피스트 여러명 정보 가져오기
	public List<UserBean> getUsers() {
		return sqlSessionTemplate.selectList("user.getUserInfos");
	}

    //테라피스트 페이징
	public int total(Pager pager) {
		return sqlSessionTemplate.selectOne("user.pageCount", pager);
	}

	public List<UserBean> gettherapists(Pager pager) {
		return sqlSessionTemplate.selectList("user.gettherapist", pager);
	}

	public List<QnaBean> myQnaBoard(int user_idx) {
		return sqlSessionTemplate.selectList("user.myQnaBoard", user_idx);
	}

}
