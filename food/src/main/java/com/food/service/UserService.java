package com.food.service;

import com.food.model.UserVO;

public interface UserService {

    int join(UserVO userVO);
    void login(UserVO userVO);
}
