package com.kbkb.food;

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

import com.kbkb.food.single.SingleService;
import com.kbkb.food.single.Page;
import com.kbkb.food.single.SingleDTO;
import com.kbkb.food.single.SingleDAO;

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

	@RequestMapping(value = "/single")
	public String home(Locale locale, Model model, HttpSession session, SingleDTO mdto) {

		List<SingleDTO> list = sqlsession.selectList("single.selectpage", new Page(1, 10));
		int pageCnt = sqlsession.selectOne("single.selectcount");
//		logger.info("pageCnt = "+pageCnt);

		model.addAttribute("singleListPage", list);
		model.addAttribute("singleListCount", pageCnt);

		return "single";
	}

	@RequestMapping(value = "/single/{page}")
	public String home(Locale locale, Model model, HttpSession session, SingleDAO mdto,
			@PathVariable(value = "page") int page) {

//		logger.info("page = " + page);

		int pageCount = 5;
		Page pageobj = new Page(0, 5);

		if (page == 1) {
			pageobj.setStartrow(0);
			pageobj.setEndrow(5);
		} else {
			pageobj.setStartrow( pageCount * (page-1) );
//			pageobj.setEndrow(page * pageCount);
		}
		

		List<SingleDTO> list = sqlsession.selectList("single.selectpage", pageobj);
		int pageCnt = sqlsession.selectOne("single.selectcount");
//			logger.info("pageCnt = "+pageCnt);
		
//		for (SingleDTO singleDTO : list) {
//			System.out.println(singleDTO);
//		}

		model.addAttribute("page", page);
		model.addAttribute("singleListPage", list);
		model.addAttribute("singleListCount", pageCnt);

		return "single";
	}
}
