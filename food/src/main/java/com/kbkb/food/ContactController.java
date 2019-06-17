package com.kbkb.food;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kbkb.food.contact.ChocolateDTO;
import com.kbkb.food.contact.ChocolateService;

@Controller
public class ContactController {

	@Autowired
	ChocolateService ms;
	@Autowired
	SqlSession sqlsession;

	@RequestMapping(value = "/contact")
	public String doContactIndex() {

		return "contact";
	}

	@RequestMapping(value = "/contact/info")
	public String joinProc(Model model, HttpSession session, ChocolateDTO mdto,@RequestParam String email,@RequestParam String message) {
		naverMailSend(email,message);
		int temp = sqlsession.insert("members.insertmember", mdto);
		if (temp == 1) {
			System.out.println("insert 성공");
			session.setAttribute("db_md", mdto);
			List<ChocolateDTO> al = sqlsession.selectList("members.selectAll");
			model.addAttribute("memberList", al);
			return "contact";
		} else {
			System.out.println("insert 실패");
			model.addAttribute("joininfo", "피치못할사정에 insert실패했어요..");
			return "fail";
		}
	}

	public static void naverMailSend(String email,String content) {
		String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
		final String user = "jeong9041@naver.com"; // 패스워드
		final String password = "free7904##";

		// SMTP 서버 정보를 설정한다.
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.naver.com");
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("jeong9041@naver.com"));

			// 메일 제목
			message.setSubject("보내는사람 메일주소 : "+email);

			// 메일 내용
			message.setText(content);

			// send the message
			Transport.send(message);
			System.out.println("Success Message Send");
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}

}
