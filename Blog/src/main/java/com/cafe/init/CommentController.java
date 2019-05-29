package com.cafe.init;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.init.comment.CommentDTO;
import com.cafe.init.comment.CommentService;




@Controller
public class CommentController {
private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	@Autowired
	CommentService ms;
	
	@Autowired
	SqlSession sqlsession;
	
		@RequestMapping(value="/comment")
		public String AboutIndex() {			
			
			return "comment";
		}
		
		@RequestMapping(value = "/comment/reboot", method = RequestMethod.GET)
		public String home(Model model) {
			List<CommentDTO> list = sqlsession.selectList("comment.selectAll");
			
			model.addAttribute("list",list);
		
			return "comment";
		}
		
		@RequestMapping(value = "/save")
		public String save(Model model , 
						   @RequestParam String story) {
			logger.info(story);
			
			sqlsession.insert("comment.insertcomment",story);
			
			model.addAttribute("myresult","success");
			
//			List<CommentDTO> list = sqlsession.selectList("comment.selectAll");
//			model.addAttribute("list",list);
//			
			return "save";
		}
		
		@RequestMapping(value = "/comment/insert")
		public String insertProc(Model model, HttpSession session,
					CommentDTO mdto	) {
			int temp = sqlsession.insert("comment.insertcomment",mdto);
			if( temp ==1 ) {
				System.out.println("insert 성공");
				session.setAttribute("db_md", mdto);
				List<CommentDTO> al = sqlsession.selectList("comment.selectAll");
				model.addAttribute("memberList", al);
				return "single";
			}else {
//				System.out.println("insert 실패");
				model.addAttribute("joininfo","피치못할사정에 insert실패했어요..");
				return "single";
			}
		}
}
