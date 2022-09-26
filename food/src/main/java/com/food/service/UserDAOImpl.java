/*

package com.food.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;

public class UserDAOImpl {
	
		
private SqlSession sqlSession;
	
	public void createAuthKey (String user_email,String authKey) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_email", user_email);
		map.put("authKey", authKey);
		
		sqlSession.selectOne("UserMapper.createAuthKey", map);
		
	}
	
	
	public void memberAuth(String user_email) throws Exception{
		sqlSession.update("UserMapper.memberAuth", user_email);
	}
	
}

*/