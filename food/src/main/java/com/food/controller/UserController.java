package com.food.controller;

import com.food.model.UserVO;
import com.food.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public void join(UserVO userVO) {
        userService.join(userVO);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public void login(UserVO userVO) {
        userService.login(userVO);
    }
}
