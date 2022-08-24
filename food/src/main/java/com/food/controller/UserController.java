package com.food.controller;

import com.food.model.UserVO;
import com.food.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Main")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/insert", consumes = { MediaType.ALL_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE })
    public String joinPost(@RequestBody UserVO userVO) {
        return userService.join(userVO);
    }
//    @RequestMapping(value = "/insert", method = RequestMethod.GET)
//    public void join() {
//
//    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public void login(UserVO userVO) {
        userService.login(userVO);
    }


}