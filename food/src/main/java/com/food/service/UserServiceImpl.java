package com.food.service;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper um;

    public void join(UserVO userVO) {
        um.join(userVO);
    }

   
    public boolean login(UserVO userVO, HttpSession session) {
      	UserVO login=um.login(userVO);
      	boolean result=false;
      	if(login!=null) {
      		session.setAttribute("login", login);
      		System.out.println("세션값="+session.getAttribute("login"));
      		result=true;
      	}
      	return result;
    }
    
    public int idCheck(String user_id) throws Exception {
		
		return um.idCheck(user_id);
	}
    
    public int emailCheck(String user_email) throws Exception {
		
		return um.emailCheck(user_email);
	}
  
    

    
  
}
