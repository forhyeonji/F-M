package com.food.controller;

import com.food.model.UserVO;
import com.food.service.UserService;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
@RequestMapping("/Main")
public class UserController extends CommonController{

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/insert", consumes = { MediaType.ALL_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE })
    public ResponseEntity<UserVO> joinPost(@RequestBody UserVO userVO) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            if(logger.isDebugEnabled())
                logger.debug("request: {}", objectMapper.writeValueAsString(userVO));
        } catch (JsonProcessingException e) {
            if(logger.isErrorEnabled()) logger.error("err: {}", e.getMessage());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        int result = userService.join(userVO);
            if(result==1){
                return new ResponseEntity<>( HttpStatus.OK);
            }else{
                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
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