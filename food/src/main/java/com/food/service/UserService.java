package com.food.service;

import com.food.model.UserVO;

public interface UserService {

    public void join(UserVO userVO);
    
    public UserVO login(UserVO userVO);
}
