package com.food.service;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper um;

    public void join(UserVO userVO) {
        um.join(userVO);
    }

    public UserVO login(UserVO userVO) {
      	System.out.println("로그인");
      	return um.login(userVO);
    }
}
