package com.food.mapper;

import com.food.model.UserVO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
	
	public void join(UserVO userVO);

    public UserVO login(UserVO userVO);
    
    public int idCheck(String user_id);
    
    public int phoneCheck(String user_phone);
	
	//아이디 찾기
	public String find_id(@Param("user_name") String user_name, @Param("user_phone") String user_phone);

	

	
	
	



}