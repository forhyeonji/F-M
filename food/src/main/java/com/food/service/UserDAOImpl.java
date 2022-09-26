/*
package com.food.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.food.mapper.UserMapper;

public class UserDAOImpl {
	
	 @Autowired
	    UserMapper um;

	@Override
	public void createAuthKey(String memberEmail,String authKey) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberEmail", memberEmail);
		map.put("authKey", authKey);
		
		sqlsession.selectOne("memberMapper.createAuthKey", map);
		
	}
	
	@Override
	public void memberAuth(String memberEmail) throws Exception{
		sqlsession.update("memberMapper.memberAuth", memberEmail);
	}
	
}
*/