package com.food.controller;

import com.food.model.UserVO;
import com.food.service.UserService;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class UserController{

    @Autowired
    UserService us;
    // private UserService userService;
    
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    
    // 회원가입 
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String join() {
    	return "Main/insert";
    }
    
    //회원가입(insert 이루어짐)
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String joinPost(UserVO userVO) {
    	us.join(userVO);
    	return "redirect:/login";
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
         session.setAttribute("user_id", userVO.getUser_id());
         session.setAttribute("user_pw", userVO.getUser_pw());
         rttr.addAttribute("loginsuccess");
         return "redirect:/";
        }else {
         rttr.addAttribute("loginfail");
         return "redirect:/login";
        }
        
    }
    
    
    //로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addAttribute("logout");
		return "redirect:/";
	}
    

    // 아이디 중복 검사
 	@RequestMapping(value = "/insertIdChk", method = RequestMethod.POST)
 	@ResponseBody
 	public String insertIdChkPOST(String user_id) throws Exception{
 		System.out.println("user_id="+user_id);
 		int result = us.idCheck(user_id);
		logger.info("결과값 = " + result);
		if(result != 0) {
			return "fail";	// 중복 아이디가 존재
		} else {
			return "success";	// 중복 아이디 x
		}	
 	} 
 	
 	
 	// 이메일 중복 검사
  	@RequestMapping(value = "/insertphoneChk", method = RequestMethod.POST)
  	@ResponseBody
  	public String insertphoneChkPOST(String user_phone) throws Exception{
  		int result = us.phoneCheck(user_phone);
 		logger.info("결과값 = " + result);
 		if(result != 0) {			
 			return "fail";	// 중복 아이디가 존재		
 		} else {		
 			return "success";	// 중복 아이디 x			
 		}	
	} 
  	
 
  	/*
 // 아이디 찾기
 	@RequestMapping(value = "/user/userSearch", method = RequestMethod.POST)
 	@ResponseBody
 	public String userIdSearch(@RequestParam("inputName_1") String user_name, 
 			@RequestParam("inputPhone_1") String user_phone) {
 		
 		String result = us.get_searchId(user_name, user_phone);

 		return result;
 	}
 	
 	// 비밀번호 찾기
 	@RequestMapping(value = "/user/searchPassword", method = RequestMethod.GET)
 	@ResponseBody
 	public String passwordSearch(@RequestParam("userId")String user_id,
 			@RequestParam("userEmail")String user_email,
 			HttpServletRequest request) {

 		mailsender.mailSendWithPassword(user_id, user_email, request);
 		
 		return "user/userSearchPassword";
 	}
 	
 }
 */
  	
  
        
}
    