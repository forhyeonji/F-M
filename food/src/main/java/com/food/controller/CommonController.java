package com.food.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class CommonController {
    protected final Logger logger = LoggerFactory.getLogger(getClass());
}
