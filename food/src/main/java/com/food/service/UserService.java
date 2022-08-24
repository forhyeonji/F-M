package com.food.service;

import com.food.model.UserVO;

public interface UserService {

    String join(UserVO userVO);
    void login(UserVO userVO);
}
