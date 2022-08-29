package com.food.service;

import com.food.model.UserVO;

public interface UserService {

    int join(UserVO userVO);
    UserVO login(UserVO userVO);
}
