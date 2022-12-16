package kr.co.greenapple.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.greenapple.beans.DogBean;
import kr.co.greenapple.beans.UserBean;
import kr.co.greenapple.pager.Pager;

@Repository
public class DogDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
 	
	public void addDog(DogBean dogBean) {
		sqlSessionTemplate.insert("dog.addDog", dogBean);
	}

	//테라피스트 확인
	public UserBean getUserInfo(UserBean loginUserBean) {
		return sqlSessionTemplate.selectOne("dog.getUserInfo", loginUserBean);
	}

	//테라피독 불러오기
//	public List<DogBean> getDogs() {
//		return sqlSessionTemplate.selectList("dog.getDogs");
//	}

	public List<DogBean> getDogs(Pager dogPager) {

		return sqlSessionTemplate.selectList("dog.getDogs", dogPager);
	}
	
	public int total(Pager dogPager) {
		return sqlSessionTemplate.selectOne("dog.total", dogPager);
	}

	public DogBean modalDogs(int dog_idx) {
		return sqlSessionTemplate.selectOne("dog.modalDogs", dog_idx);
	}
	

}
