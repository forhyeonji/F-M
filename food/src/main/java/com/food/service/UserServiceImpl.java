package com.food.service;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;

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
}
