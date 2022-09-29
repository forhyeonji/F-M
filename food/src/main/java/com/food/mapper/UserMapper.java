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
	
	//아이디 찾기
	//public String find_id(@Param("user_name") String user_name, @Param("user_phone") String user_phone);
    
    
    
    public UserVO find_id(UserVO userVO);
	
	public UserVO find_pw(UserVO userVO);

	public void updatePassword(UserVO userVO);
	
	
	
	
	//메인화면 테이블연동관련
	public ArrayList<ShopAttachVO> Shopattachlist(int bno);
	public void insert(ShopAttachVO attach);
	
	
	
	

    
	

	
	
	



}