package com.food.mapper;

import com.food.model.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
	
	public void join(UserVO userVO);

    public UserVO login(UserVO userVO);
    
    public int idCheck(String user_id);
    
    public int phoneCheck(String user_phone);
    
    public void createAuthKey(String user_email,String authKey) throws Exception;
	
	public void memberAuth(String user_email) throws Exception;

}