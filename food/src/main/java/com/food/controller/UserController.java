package com.food.controller;

import com.food.mapper.ShopMapper;
import com.food.model.CartVO;
import com.food.model.CriteriaVO;
import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.UserVO;
import com.food.service.ShopService;
//import com.food.service.MailSendService;
import com.food.service.UserService;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class UserController{
	
	

    @Autowired
    UserService us;
    
    @Autowired
	private ShopService shopservice;
     
    

    //@Autowired
	//private MailSendService mailService;
    
    @Autowired
	private JavaMailSender mailSender;
    
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    
    // ???????????? 
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String join() {
    	return "Main/insert";
    }
    
	//????????????(insert ????????????)
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String joinPost(UserVO userVO) {
    	us.join(userVO);
    	return "redirect:/login";
    }
    
	// ?????????
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(UserVO userVO) {
		return "Main/login";
    }
    
	// ????????? ??????
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginPost(UserVO userVO, HttpSession session, RedirectAttributes rttr) {
    	
        boolean result = us.login(userVO, session);
        
        if(result) {
         session.setAttribute("user_id", userVO.getUser_id());
         session.setAttribute("user_pw", userVO.getUser_pw());
         rttr.addAttribute("loginsuccess");
         
         logger.info("????????????"+userVO+session);
         
         return "redirect:/";
        }else {
         rttr.addAttribute("loginfail");
         return "redirect:/login";
        }
        
    }
    
    
	//????????????
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addAttribute("logout");
		return "redirect:/";
	}
    

    // ????????? ?????? ??????
 	@RequestMapping(value = "/insertIdChk", method = RequestMethod.POST)
 	@ResponseBody
 	public String insertIdChkPOST(String user_id) throws Exception{
 		System.out.println("user_id="+user_id);
 		int result = us.idCheck(user_id);
		logger.info("????????? = " + result);
		if(result != 0) {
			return "fail";	// ?????? ???????????? ??????
		} else {
			return "success";	// ?????? ????????? x
		}	
 	} 
 	
 	
	// ????????? ?????? ??????
  	@RequestMapping(value = "/insertphoneChk", method = RequestMethod.POST)
  	@ResponseBody
  	public String insertphoneChkPOST(String user_phone) throws Exception{
  		int result = us.phoneCheck(user_phone);
 		logger.info("????????? = " + result);
 		if(result != 0) {			
 			return "fail";	// ?????? ????????? ??????		
 		} else {		
 			return "success";	// ?????? ?????? x			
 		}	
	}   	
  	
  	// ????????? ??????
	@RequestMapping(value="/emailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String emailCheckGET(String user_email) throws Exception{

		/* ???(View)????????? ????????? ????????? ?????? */
		logger.info("????????? ????????? ?????? ??????");
		logger.info("???????????? : " + user_email);
		
		/* ????????????(??????) ?????? */
        Random random = new Random();
        int checkAuthKey = random.nextInt(888888) + 111111;
        logger.info("???????????? " + checkAuthKey);
        
        /* ????????? ????????? */
        String setFrom = "ssnow000@daum.net";
        String toMail = user_email;
        String title =  "[?????????] ???????????? ?????? ????????? ?????????.";
        String content = 
        		 "??????????????? ?????????????????? ???????????????." +
        	     "<br><br>" + 
        	     "?????? ????????? " + checkAuthKey + "?????????." + 
        	     "<br>" + 
        	     "?????? ??????????????? ???????????? ???????????? ???????????? ?????????.";
        
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String AuthKey = Integer.toString(checkAuthKey);
        
        return AuthKey;
	}	
	
	
	
	//????????? ?????? 
	@RequestMapping(value = "/find_id", method=RequestMethod.GET)
	public String find_id() throws Exception{
		return "Main/find_id";
	}
	
	@RequestMapping(value = "/find_id", method=RequestMethod.POST)
	public String find_idPost(UserVO userVO, Model model){
		UserVO user = us.find_id(userVO);
	
		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("user", user);
		}
		
		return "Main/find_id";
	}
	
	
	//???????????? ?????? 
		@RequestMapping(value = "/find_pw", method=RequestMethod.GET)
		public String find_pw() throws Exception{
			return "Main/find_pw";
		}
		
		@RequestMapping(value = "/find_pw", method=RequestMethod.POST)
		public String find_pwPost(UserVO userVO, Model model) throws Exception{
			UserVO user = us.find_pw(userVO);
		
			if(user == null) { 
				model.addAttribute("check", 1);
			} else { 
				model.addAttribute("check", 0);
				model.addAttribute("user", user);
			}
			
			return "Main/find_pw";
		}
	
	
	
	// ??? ?????? ?????? ??????
		@RequestMapping(value = "/main", method = RequestMethod.GET)
				public String main_shop(Model model) {

					//System.out.println("");
					// System.out.println("shop.ShopSelect() = "+shop.ShopSelect());
					// model.addAttribute("prodnum",shop.Shopattachlist(0));
					//model.addAttribute("ArrayList", shopservice.ShopSelect());

					//return "Main/main";
			
			System.out.println("");
			model.addAttribute("recom", shopservice.recoItem());	// ????????????????????? select
			model.addAttribute("newItem", shopservice.newItem());// ?????????????????? select
			
			return "Main/main";
		}
	
		
	

	
	
	

	

	
   
}
