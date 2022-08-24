package com.food.service;

import com.food.model.UserVO;

public interface UserService {

    void join(UserVO userVO);
    void login(UserVO userVO);
}
