package com.food.service;

import java.util.Date;

import javax.servlet.http.HttpSession;

import com.food.model.UserVO;

public interface UserService {
	
    public void join(UserVO userVO);
    
    public boolean login(UserVO userVO, HttpSession session);


    
    
}
