package com.food.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.food.model.ShopAttachVO;
import com.food.model.UserVO;

public interface UserService {
	
    public void join(UserVO userVO);
    
    public boolean login(UserVO userVO, HttpSession session);
    
 	public int idCheck(String user_id) throws Exception;
 	
 	public int phoneCheck(String user_phone) throws Exception;
 	
 	//public String find_id(@Param("user_name") String user_name, @Param("user_phone") String user_phone) throws Exception;
 
 	public UserVO find_id(UserVO userVO);
 


}
