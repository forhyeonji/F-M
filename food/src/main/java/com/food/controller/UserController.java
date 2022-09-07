package com.food.controller;

import com.food.model.UserVO;
import com.food.service.UserService;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;

import javax.servlet.http.HttpSession;

@Controller
public class UserController{

    @Autowired
    UserService us;
    // private UserService userService;
    
    // 회원가입 
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String join() {
     
    	return "Main/insert";
    }
    
    //회원가입(insert 이루어짐)
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String joinPost(UserVO userVO) {
    	us.join(userVO);
    	return "redirect:/";
    }
    
    // 로그인
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(UserVO userVO) {
    	return "Main/login";
    }
    
    // 로그인 기능
    @RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(UserVO userVO, HttpSession session, RedirectAttributes rttr) {
    	boolean result = us.login(userVO, session);
    	if(result) {
    		rttr.addAttribute("msg", "success");
    		return "redirect:/";
    	}else {
    		rttr.addAttribute("msg", "fail");
    		return "redirect:/login";
    	}
    	
	}
    
}