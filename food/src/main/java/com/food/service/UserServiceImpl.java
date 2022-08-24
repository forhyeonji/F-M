package com.food.service;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    public int join(UserVO userVO) {
        return userMapper.join(userVO);
    }

    public void login(UserVO userVO) {
        userMapper.login(userVO);
    }
}
