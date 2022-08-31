package com.food.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class CommonController {
    protected final Logger log = LoggerFactory.getLogger(getClass());

    protected <T> void isLog(T vo){
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            log.debug("request: {}", objectMapper.writeValueAsString(vo));
        } catch (JsonProcessingException e){
            log.error("json parse error: {}", e.getMessage());
        }
    }

    protected void isLog(String str){
        log.debug("request: {}", str);
    }
}
