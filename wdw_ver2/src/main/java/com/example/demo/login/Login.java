package com.example.demo.login;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.MemberVO;

@Service("login")
public class Login implements Action {

	@Resource
	LoginMapper mapper;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("login/login execute() 실행");
	
		MemberVO vo = (MemberVO)map.get("mvo");
		String service = (String)map.get("service");
		Object res = null;
		HttpSession session = req.getSession();
				
		switch (service) {
		case "loginReg":
			res = mapper.login(vo);
			if(res!=null)
				session.setAttribute("member", res);
			break;
		case "logout":
			session.invalidate();
			break;
		case "sendEmail":
			String id = req.getParameter("member_id");
			MemberVO mvo = mapper.searchPW(id);
			try {
	            MimeMessage msg = mailSender.createMimeMessage();
	            MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
	             
	            messageHelper.setSubject(mvo.getMember_pname()+"님 비밀번호 찾기 메일입니다.");
	            messageHelper.setText("비밀번호는 "+mvo.getMember_pw()+" 입니다.");
	            messageHelper.setTo(id);
	            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(id));
	            mailSender.send(msg);
	             
	        }catch(MessagingException e) {
	            System.out.println("MessagingException");
	            e.printStackTrace();
	        }

			break;
		}
		
		return null;
	}

}
