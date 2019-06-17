package com.cafe.init;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AboutController {
	
	//2019-06-17 수정
		@RequestMapping(value="/about")
		public String AboutIndex() {
			System.out.println("수정함");
			System.out.println("수정함");
			System.out.println("수정함");
			System.out.println("수정함");
			
			return "about";
		}
	
}
