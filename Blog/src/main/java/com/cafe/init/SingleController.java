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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.init.comment.CommentDTO;
import com.cafe.init.comment.CommentService;
import com.cafe.init.single.Page;
import com.cafe.init.single.SingleDTO;
import com.cafe.init.single.SingleService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class SingleController {
	private static final Logger logger = LoggerFactory.getLogger(SingleController.class);
	
	@Autowired
	SingleService ms;
	
	@Autowired
	SqlSession sqlsession;	
	
	/*
	 * @RequestMapping(value="/single", method = RequestMethod.GET) public String
	 * doSingleIndex(Model model,HttpSession session, SingleDTO mdto ) {
	 * 
	 * session.setAttribute("db_md", mdto); List<SingleDTO> al =
	 * sqlsession.selectList("single.selectAll");
	 * model.addAttribute("singleList",al); return "single"; }
	 */
	
		@RequestMapping(value = "/single/insert")
		public String insertProc(Model model, HttpSession session,
					SingleDTO mdto	) {
			int temp = sqlsession.insert("single.insertsingle",mdto);
			if( temp ==1 ) {
	//			System.out.println("insert 성공");
				session.setAttribute("db_md", mdto);
				List<SingleDTO> list = sqlsession.selectList("single.selectAll");
				model.addAttribute("singleListPage", list);
				
				List<SingleDTO> al = sqlsession.selectList("single.selectpage", new Page(1, 10));
				int pageCnt = sqlsession.selectOne("single.selectcount");
				model.addAttribute("singleListPage", al);
				model.addAttribute("singleListCount", pageCnt);
				
				return "single";
				
			}else {
//				System.out.println("insert 실패");
				model.addAttribute("joininfo","피치못할사정에 insert실패했어요..");
				return "single";
			}
		}
		
		@RequestMapping(value = "/single")
		public String home(Locale locale, Model model,HttpSession session,
				SingleDTO mdto) {		
		
			
			List<SingleDTO> list = sqlsession.selectList("single.selectpage", new Page(1, 10));
			int pageCnt = sqlsession.selectOne("single.selectcount");
//			logger.info("pageCnt = "+pageCnt);
			
			model.addAttribute("singleListPage", list);
			model.addAttribute("singleListCount", pageCnt);
			
			return "single";
		}

		@RequestMapping(value = "/single/{page}")
		public String home(Locale locale, Model model, HttpSession session,
				SingleDTO mdto,
				@PathVariable(value = "page") int page) {
//			logger.info("page = " + page);
			
			int pageCount = 10;
			Page pageobj = new Page(1, 10);
			
			if(page ==1) {
				pageobj.setStartrow(1);
				pageobj.setEndrow(10);
			}
			else {
				pageobj.setStartrow( (page-1) * pageCount);
				pageobj.setEndrow( page * pageCount);
			}
			
			List<SingleDTO> list = sqlsession.selectList("single.selectpage", pageobj);
			int pageCnt = sqlsession.selectOne("single.selectcount");
//			logger.info("pageCnt = "+pageCnt);

			model.addAttribute("page", page);
			model.addAttribute("singleListPage", list);
			model.addAttribute("singleListCount", pageCnt);
			

			return "single";
		}
}
