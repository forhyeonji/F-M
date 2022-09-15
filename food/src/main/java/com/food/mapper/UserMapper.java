package com.food.mapper;

import com.food.model.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
	
   public void join(UserVO userVO);

    public UserVO login(UserVO userVO);
    
    public int idCheck(String user_id);
    
    public int emailCheck(String user_email);

}
