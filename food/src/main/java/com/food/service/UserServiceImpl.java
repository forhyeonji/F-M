
package com.food.service;
import com.food.mapper.ShopAttachMapper;
import com.food.mapper.UserMapper;
import com.food.model.ShopAttachVO;
import com.food.model.UserVO;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserServiceImpl implements UserService {
	
	
	@Inject
	private JavaMailSender mailSender;
	
	
	@Autowired
	ShopAttachMapper sam;
	
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
    
    /*
    public String find_id(@Param("user_name") String user_name, @Param("user_phone") String user_phone) throws Exception{
    	return "";
    	response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = manager.find_id(user_name);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
		
    }
    */
    
    
    public UserVO find_id(UserVO userVO) {
		return um.find_id(userVO);
	}

	
	






}
