package com.food.service;

import java.util.Date;

import javax.servlet.http.HttpSession;

import com.food.model.UserVO;

public interface UserService {
	
    public void join(UserVO userVO);
    
    public boolean login(UserVO userVO, HttpSession session);
    
 	public int idCheck(String user_id) throws Exception;
 	
 	public int emailCheck(String user_email) throws Exception;


    
    
}
