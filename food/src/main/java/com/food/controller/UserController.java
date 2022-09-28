package com.food.controller;

import com.food.model.UserVO;
import com.food.service.MailSendService;
import com.food.service.UserService;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class UserController{

    @Autowired
    UserService us;
    // private UserService userService;

    @Autowired
	private MailSendService mailService;
    
    @Autowired
	private JavaMailSender mailSender;
    
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
 	
 	
 	// 폰번호 중복 검사
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
  	
  //아이디 찾기 기능
  	@RequestMapping(value = "/find_id", method = RequestMethod.GET)
  	public String find_id() {
  		
  	return "Main/find_idpw";
  	
  	}
  	 
  	//아이디 찾기 기능
  	@RequestMapping(value = "/find_id", method = RequestMethod.POST)
  	@ResponseBody
  	public String find_id(@RequestParam(value="user_name", required = false) String user_name,
  							@RequestParam(value="user_phone", required = false) String user_phone) {
  		
  	String result = us.find_id(user_name, user_phone);
  		
  	return result;
  	
  	}
  	
  	
  	/*
	@RequestMapping(value = "/emailCheck", method=RequestMethod.POST)
	public String register(UserVO userVO, RedirectAttributes rttr, Model model)throws Exception{
		UserService.register(userVO);
		model.addAttribute("user", userVO);
		
		
		rttr.addFlashAttribute("msg", "가입이 완료되었습니다");
		rttr.addAttribute("memberEmail", userVO.getUser_email());
		rttr.addAttribute("memberId", userVO.getUser_id());
		
		return "redirect:/insert";
		
		
	}
	
	@RequestMapping(value="/emailCheck", method=RequestMethod.GET)
	public String emailConfirm(String user_email,Model model)throws Exception{
		us.memberAuth(user_email);
		model.addAttribute("memberEmail", user_email);
		
		return "/insert";
	}
	
	
	*/
 

	
  
        
}
