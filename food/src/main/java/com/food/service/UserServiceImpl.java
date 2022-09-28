package com.food.service;

import com.food.mapper.UserMapper;
import com.food.model.UserVO;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Inject
	private JavaMailSender mailSender;
	
	

    @Autowired 
    UserMapper um;
    

    public void join(UserVO userVO) {
        um.join(userVO);
    }

   
    public boolean login(UserVO userVO, HttpSession session) {
      	UserVO login=um.login(userVO);
      	boolean result=false;
      	if(login!=null) {
      		session.setAttribute("login", login);
      		System.out.println("세션값="+session.getAttribute("login"));
      		result=true;
      	}
      	return result;
    }
    
    public int idCheck(String user_id) throws Exception {
		
		return um.idCheck(user_id);
	}
    
    public int phoneCheck(String user_phone) throws Exception {
		
		return um.phoneCheck(user_phone);
	}
    
    // 아이디 찾기
 	@Override
 	public String find_id(String user_name, String user_phone) {
 			
 		String result = "";
 		
 		try {
 		 result= um.find_id(user_name, user_phone);
 		 
 		} catch(Exception e) {
 			
 			e.printStackTrace();
 		}
 		
 		return result ;
 	}
   
  
    
    
    /*
    @Transactional
	public void register(UserVO userVO) throws Exception{
		userdao.register(userVO);
		
		String key = new tempKey().getKey(50,false);
		userdao.createAuthKey (userVO.getUser_email(), key);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[ICEWATER 커뮤니티 이메일 인증메일 입니다.]"); //메일제목
		sendMail.setText(
				"<h1>메일인증</h1>" +
						"<br/>"+userVO.getUser_id()+"님 "+
						"<br/>ICEWATER에 회원가입해주셔서 감사합니다."+
						"<br/>아래 [이메일 인증 확인]을 눌러주세요."+
						"<a href='http://localhost:8080/insert/registerEmail?memberEmail=" + userVO.getUser_email() +
						"&key=" + key +
						"' target='_blenk'>이메일 인증 확인</a>");
		sendMail.setFrom("[발송 이메일 주소]", "[발송자 이름]");
		sendMail.setTo(userVO.getUser_email());
		sendMail.send();
		
	}
    
    @Override
	public void memberAuth(String user_email) throws Exception{
		um.memberAuth(user_email);
	}


	 
    */
 	
 	
    
    
  
}
