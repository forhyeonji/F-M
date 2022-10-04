package com.food.mapper;

import com.food.model.ShopAttachVO;
import com.food.model.UserVO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
	
	public void join(UserVO userVO);

    public UserVO login(UserVO userVO);
    
    public int idCheck(String user_id);
    
    public int phoneCheck(String user_phone);
    
    public UserVO find_id(UserVO userVO);
    


} 