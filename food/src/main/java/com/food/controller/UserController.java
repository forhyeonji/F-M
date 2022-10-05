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
    
    // �쉶�썝媛��엯 
    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String join() {
    	return "Main/insert";
    }
    
    //�쉶�썝媛��엯(insert �씠猷⑥뼱吏�)
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String joinPost(UserVO userVO) {
    	us.join(userVO);
    	return "redirect:/login";
    }
    
    // 濡쒓렇�씤
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(UserVO userVO) {
		return "Main/login";
    }
    
    // 濡쒓렇�씤 湲곕뒫
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
    
    
    //濡쒓렇�븘�썐
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addAttribute("logout");
		return "redirect:/";
	}
    

    // �븘�씠�뵒 以묐났 寃��궗
 	@RequestMapping(value = "/insertIdChk", method = RequestMethod.POST)
 	@ResponseBody
 	public String insertIdChkPOST(String user_id) throws Exception{
 		System.out.println("user_id="+user_id);
 		int result = us.idCheck(user_id);
		logger.info("寃곌낵媛� = " + result);
		if(result != 0) {
			return "fail";	// 以묐났 �븘�씠�뵒媛� 議댁옱
		} else {
			return "success";	// 以묐났 �븘�씠�뵒 x
		}	
 	} 
 	
 	
 	// �룿踰덊샇 以묐났 寃��궗
  	@RequestMapping(value = "/insertphoneChk", method = RequestMethod.POST)
  	@ResponseBody
  	public String insertphoneChkPOST(String user_phone) throws Exception{
  		int result = us.phoneCheck(user_phone);
 		logger.info("寃곌낵媛� = " + result);
 		if(result != 0) {			
 			return "fail";	// 以묐났 �븘�씠�뵒媛� 議댁옱		
 		} else {		
 			return "success";	// 以묐났 �븘�씠�뵒 x			
 		}	
	}   	
  	
  	/* �씠硫붿씪 �씤利� */
	@RequestMapping(value="/emailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String emailCheckGET(String user_email) throws Exception{

		/* 酉�(View)濡쒕��꽣 �꽆�뼱�삩 �뜲�씠�꽣 �솗�씤 */
		logger.info("�씠硫붿씪 �뜲�씠�꽣 �쟾�넚 �솗�씤");
		logger.info("�씤利앸쾲�샇 : " + user_email);
		
		/* �씤利앸쾲�샇(�궃�닔) �깮�꽦 */
        Random random = new Random();
        int checkAuthKey = random.nextInt(888888) + 111111;
        logger.info("�씤利앸쾲�샇 " + checkAuthKey);
        
        /* �씠硫붿씪 蹂대궡湲� */
        String setFrom = "ssnow000@daum.net";
        String toMail = user_email;
        String title = "[�뫖�젋利�] �쉶�썝媛��엯 �씤利� �씠硫붿씪 �엯�땲�떎.";
        String content = 
                "�솃�럹�씠吏�瑜� 諛⑸Ц�빐二쇱뀛�꽌 媛먯궗�빀�땲�떎." +
                "<br><br>" + 
                "�씤利� 踰덊샇�뒗 " + checkAuthKey + "�엯�땲�떎." + 
                "<br>" + 
                "�빐�떦 �씤利앸쾲�샇瑜� �씤利앸쾲�샇 �솗�씤���뿉 湲곗엯�븯�뿬 二쇱꽭�슂.";
        
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
	
	
	
	// �븘�씠�뵒 李얘린
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
	
	
	
	
	
	
	

	
	
	//鍮꾨�踰덊샇 李얘린 �뤌
	@RequestMapping(value = "/find_pw", method=RequestMethod.GET)
	public String find_pw() throws Exception{
		return "Main/find_pw";	
	}
		
		
	@RequestMapping(value = "/find_pw", method=RequestMethod.POST)
	public String find_pwPost(String user_email, String user_id){
		
		//us.find_pw(user_email, user_id);
		
		/* �씤利앸쾲�샇(�궃�닔) �깮�꽦 */
		Random random = new Random();
		StringBuffer randomBuf = new StringBuffer();
		for (int i = 0; i < 15; i++) {
			// Random.nextBoolean() : �옖�뜡�쑝濡� true, false 由ы꽩 (true : �옖�뜡 �냼臾몄옄 �쁺�뼱, false : �옖�뜡 �닽�옄)
			if (random.nextBoolean()) {
				// 26 : a-z �븣�뙆踰� 媛쒖닔
				// 97 : letter 'a' �븘�뒪�궎肄붾뱶
				// (int)(random.nextInt(26)) + 97 : �옖�뜡 �냼臾몄옄 �븘�뒪�궎肄붾뱶
				randomBuf.append((char)((int)(random.nextInt(26)) + 97));
			} else {
				randomBuf.append(random.nextInt(10));
			}
		}
		String randomStr = randomBuf.toString();
		System.out.println("[createRandomStrUsingRandomBoolean] randomStr : " + randomStr);
	    // [createRandomStrUsingRandomBoolean] randomStr : iok887yt6sa31m99e4d6
 
		
        /* �씠硫붿씪 蹂대궡湲� */
        String setFrom = "ssnow000@daum.net";
        String toMail = user_email;
        String title = "[�뫖�젋利�] 鍮꾨�踰덊샇 李얘린瑜� �쐞�븳 �엫�떆 �씠硫붿씪 �엯�땲�떎.";
        String content = 
                "�솃�럹�씠吏�瑜� �씠�슜�빐二쇱뀛�꽌 媛먯궗�빀�땲�떎." + user_id + "�떂." +
                "<br><br>" + 
                " �엫�떆 鍮꾨�踰덊샇�뒗 " + randomStr + "�엯�땲�떎." + 
                "<br>" + 
                "�빐�떦 �씤利앸쾲�샇瑜� �씤利앸쾲�샇 �솗�씤���뿉 湲곗엯�븯�뿬 二쇱꽭�슂.";
        
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
        
        return randomStr;


	}
	
	
	

	
	
	
	
	/*
	@RequestMapping (value="/", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<byte[]> main_display(String fileName)throws Exception{
		ResponseEntity<byte[]> result=null;
		//display fileName이 있는 경우
		if(!fileName.equals("")) {
			File file=new File(File.separator + fileName);
			HttpHeaders header=new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result=new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			}
			return result;
		}
	*/
	
	// 硫붿씤 �럹�씠吏� �씠�룞
		@RequestMapping(value = "/main", method = RequestMethod.GET)
		public String main_shop(Model model) {

			System.out.println("");
			// System.out.println("shop.ShopSelect() = "+shop.ShopSelect());
			// model.addAttribute("prodnum",shop.Shopattachlist(0));
			model.addAttribute("ArrayList", shopservice.ShopSelect());

			return "Main/main";
		}
		

	
	
	

	

	
   
}
