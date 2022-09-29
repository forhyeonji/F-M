package com.food.controller;

import com.food.model.ShopAttachVO;
import com.food.model.UserVO;
//import com.food.service.MailSendService;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class UserController{

    @Autowired
    UserService us;
    
    

    //@Autowired
	//private MailSendService mailService;
    
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
  	
  	/* 이메일 인증 */
	@RequestMapping(value="/emailCheck", method=RequestMethod.GET)
	@ResponseBody
	public String emailCheckGET(String user_email) throws Exception{

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + user_email);
		
		/* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkAuthKey = random.nextInt(888888) + 111111;
        logger.info("인증번호 " + checkAuthKey);
        
        /* 이메일 보내기 */
        String setFrom = "ssnow000@daum.net";
        String toMail = user_email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkAuthKey + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
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
	
	
	/*
	//아이디 찾기 
  	@RequestMapping(value = "/find_id", method = RequestMethod.GET)
  	public String find_id() {
  		
  	return "Main/find_id";
  	
  	}
  	 
  	//아이디 찾기 기능
  	@RequestMapping(value = "/find_id", method = RequestMethod.POST)
  	@ResponseBody
  	public String find_id(@RequestParam(value="user_name", required = false) String user_name,
  							@RequestParam(value="user_phone", required = false) String user_phone) {
  		
  	//String result = us.find_id(user_name, user_phone);	
  	//return result;
  		System.out.println("user의 이름="+user_name);
		System.out.println("user의 번호="+user_phone);
		if(us.find_id(user_name, user_phone)==null) {
			return null; 
		}else {
			return "/find_id";
			//return us.find_id(user_name, user_phone).getMemEmail();
		}
  	
  	}
  	*/
	
	
	
	// 아이디 찾기 페이지 이동
		@RequestMapping(value="find_id", method=RequestMethod.GET)
		public String find_id() {
			return "Main/find_id";
		}
		
	    // 아이디 찾기 실행
		@RequestMapping(value="find_id", method=RequestMethod.POST)
		public String find_idAction(UserVO userVO, Model model) {
			UserVO user = us.find_id(userVO);
			
			if(user == null) { 
				model.addAttribute("check", 1);
			} else { 
				model.addAttribute("check", 0);
				model.addAttribute("id", userVO.getUser_id());
			}
			
			return "Main/find_id";
		}
		
	    // 비밀번호 찾기 페이지로 이동
		@RequestMapping(value="find_pw", method=RequestMethod.GET)
		public String find_pw() {
			return "Main/find_pw";
		}
		
	    // 비밀번호 찾기 실행
		@RequestMapping(value="find_pw", method=RequestMethod.POST)
		public String find_pwAction(UserVO userVO, Model model) {
			UserVO user = us.find_pw(userVO);
			
			if(user == null) { 
				model.addAttribute("check", 1);
			} else { 
				model.addAttribute("check", 0);
				model.addAttribute("updateid", userVO.getUser_id());
			}
			
			return "Main/find_pw";
		}
		
		
	    // 비밀번호 바꾸기 실행
		@RequestMapping(value="update_password", method=RequestMethod.POST)
		public String updatePasswordAction(@RequestParam(value="updateid", defaultValue="", required=false) 
		String user_id, UserVO userVO) {
			userVO.setUser_id(user_id);
			System.out.println(userVO);
			us.updatePassword(userVO);
			return "Main/login";
		}
		
	    // 비밀번호 바꾸기할 경우 성공 페이지 이동
		@RequestMapping(value="check_password_view")
		public String checkPasswordForModify(HttpSession session, Model model) {
			UserVO loginUser = (UserVO) session.getAttribute("loginUser");
			
			if(loginUser == null) {
				return "member/login";
			} else {
				return "mypage/checkformodify";
			}
		}
	
	
	
	 

		
		// 내가 올리고자 하는 파일이 이미지 파일인지 아닌지 구분하는 메서드 선언
		// 반환타입 메소드명 타입 변수명
		private boolean u_checkImageType(File file) {
			// probeContentType(파일경로): 파일경로에 있는 파일타입을 알아내는 메서드
			try {
				String contentType = Files.probeContentType(file.toPath());
				System.out.println("contentType=" + contentType);
				// 파일타입이 image이면 true, 그 이외는 false
				return contentType.startsWith("image");

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
		
		// 년 , 월 , 일 폴더 생성하는 메서드 선언
		private String getFolder() {
			// 현재 날짜 추출(Thu Aug 24 09:23:12 KST 2022)
			Date date = new Date();
			System.out.println("No Format 현재날짜:" + date);
			// Thu Aug 24 09:23:12 KST 2022 -> 2022-08-24
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			// 현재날짜와 날짜 형식을 연결
			String str = sdf.format(date); // 2022-08-24
			// 2022-08-24 -> 2022\08\24로 변경
			System.out.println("Format 적용 현재 날짜:" + str);
			return str.replace("-", "\\");
		}
		
		
		
		
		// 상품이미지(메인)
		@RequestMapping(value = "/u_ShopuploadMain", method = RequestMethod.POST)
		public ResponseEntity<ShopAttachVO> uploadAjaxPost1(MultipartFile imagemain) {
			// AttachFileVO
			ShopAttachVO shopattachvo = new ShopAttachVO();
			// 폴더 경로
			String uploadFolder = "D:\\upload";

			// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
			File uploadPath = new File(uploadFolder, getFolder());

			// 폴더생성(D:\\upload\\현재날짜)
			if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
				uploadPath.mkdirs();
			}
			// for(변수명:배열명)

				System.out.println(imagemain.getOriginalFilename());
				System.out.println(imagemain.getSize());
				// 실제 파일명( multiparFile.getOriginalFilename())
				// UUID 적용(UUID_ multiparFile.getOriginalFilename());
				UUID uuid = UUID.randomUUID();
				System.out.println("UUID=" + uuid.toString());

				// ShopAttachVO의 uploadPath 변수에 저장()
				shopattachvo.setUploadPath(getFolder());
				// ShopAttachVO의 fileName 변수에 저장()
				shopattachvo.setFileName(imagemain.getOriginalFilename());
				// ShopAttachVO의 uuid 변수에 저장()
				shopattachvo.setUuid(uuid.toString());
				// ShopAttachVO의 division 변수에 저장
				shopattachvo.setDivision("m");

				// 파일 저장 어느폴더에( D:\\upload\\ 현재날짜) ,어떤 파일이름으로 (비정규식.png)
				File saveFile = new File(uploadPath, uuid.toString() + "-" + imagemain.getOriginalFilename());

				// D:\\upload\\비정규식.png에 파일을 전송(transferTo)

				try {// transferTo() 메소드에 예외가 있으면
					imagemain.transferTo(saveFile); // 서버로 원본파일 전송
					// 내가 서버에 올리고자 하는 파일이 이미지이면,
					if (u_checkImageType(saveFile)) {

						// ShopAttachVO의 image 변수에 true값 저장()
						shopattachvo.setImage(true);

					
					} // checkImageType메서드 끝


				} catch (Exception e) {// 예외를 처리하라.
					System.out.println(e.getMessage());
				}

			//} // for문 끝
			return new ResponseEntity<>(shopattachvo,HttpStatus.OK);
		}// uploadAjax 끝
		
		
		// 상품이미지(서브)
		@RequestMapping(value = "/u_ShopuploadSub", method = RequestMethod.POST)
		public ResponseEntity<ArrayList<ShopAttachVO>> uploadAjaxPost(MultipartFile[] imagesub) {
			// AttachFileVO
			ArrayList<ShopAttachVO> list = new ArrayList<>();
			// 폴더 경로
			String uploadFolder = "D:\\upload";

			// 서버 업로드 경로와 getFolder 메서드의 날짜문자열을 이어서 하나의 폴더 생성
			File uploadPath = new File(uploadFolder, getFolder());

			// 폴더생성(D:\\upload\\현재날짜)
			if (uploadPath.exists() == false) {// uploadPath가 존재하지 않으면,
				uploadPath.mkdirs();
			}
			// for(변수명:배열명)

			for (MultipartFile multipartFile : imagesub) {
				// ShopAttachVO클래스의 새로운 주소를 반복적으로 생성하여
				// ArrayList에 저장
				ShopAttachVO shopattachvo = new ShopAttachVO();

				System.out.println(multipartFile.getOriginalFilename());
				System.out.println(multipartFile.getSize());
				// 실제 파일명( multiparFile.getOriginalFilename())
				// UUID 적용(UUID_ multiparFile.getOriginalFilename());
				UUID uuid = UUID.randomUUID();
				System.out.println("UUID=" + uuid.toString());

				// ShopAttachVO의 uploadPath 변수에 저장()
				shopattachvo.setUploadPath(getFolder());
				// ShopAttachVO의 fileName 변수에 저장()
				shopattachvo.setFileName(multipartFile.getOriginalFilename());
				// ShopAttachVO의 uuid 변수에 저장()
				shopattachvo.setUuid(uuid.toString());
				// ShopAttachVO의 division 변수에 저장
				shopattachvo.setDivision("s");

				// 파일 저장 어느폴더에( D:\\upload\\ 현재날짜) ,어떤 파일이름으로 (비정규식.png)
				File saveFile = new File(uploadPath, uuid.toString() + "-" + multipartFile.getOriginalFilename());

				// D:\\upload\\비정규식.png에 파일을 전송(transferTo)

				try {// transferTo() 메소드에 예외가 있으면
					multipartFile.transferTo(saveFile); // 서버로 원본파일 전송
					// 내가 서버에 올리고자 하는 파일이 이미지이면,
					if (u_checkImageType(saveFile)) {

						// ShopAttachVO의 image 변수에 true값 저장()
						shopattachvo.setImage(true);

					} // checkImageType메서드 끝

					// AttachFileVO에 저장된 데이터를 배열의 추가
					list.add(shopattachvo);

				} catch (Exception e) {// 예외를 처리하라.
					System.out.println(e.getMessage());
				}

			} // for문 끝
			return new ResponseEntity<>(list,HttpStatus.OK);
		}// uploadAjax 끝
			// 이미지 주소 생성

		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
  
}
