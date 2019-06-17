package com.kbkb.food.comment;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kbkb.food.single.Page;
import com.kbkb.food.single.SingleDTO;
import com.kbkb.food.single.SingleService;



@Controller
public class FileUploadController {
	private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);
	@Autowired
	SqlSession sqlsession;
	
	@Autowired
	ServletContext sc;
	
	@Autowired
	SingleService ms;
	
		
	@RequestMapping(value = "/fileupload/ajax", method = RequestMethod.POST)
	@ResponseBody
	public String fileuploadpostAjax(Model model, 
									MultipartFile image,									
									@RequestParam(required = false) String message,
									@RequestParam String subscribe,
									@RequestParam String name,
									HttpSession session,
									SingleDTO mdto
									) {
		
		
		/*
		 * System.out.println("message"+message);
		 * System.out.println("subscribe"+subscribe); System.out.println("name"+name);
		 * System.out.println("테스트");
		 */
				
		String resource_path = sc.getRealPath("/resources/");
		
		System.out.println(resource_path);
		File file = new File(resource_path, System.currentTimeMillis()+".jpg");
		System.out.println(file.getAbsolutePath());
		System.out.println(image);

		try {
			FileCopyUtils.copy(image.getBytes(), file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mdto.setImageFileName(file.getName()); //MultipartFile image를 mdto의 파일이름 imagefilename로변환
		int temp = sqlsession.insert("single.insertsingle",mdto);
		if( temp ==1 ) {
//			System.out.println("insert 성공");
			session.setAttribute("db_md", mdto);
			List<SingleDTO> list = sqlsession.selectList("single.selectAll");
			model.addAttribute("singleListPage", list);
//			System.out.println("insert 성공");
			List<SingleDTO> al = sqlsession.selectList("single.selectpage", new Page(1, 10));
			int pageCnt = sqlsession.selectOne("single.selectcount");
			model.addAttribute("singleListPage", al);
			model.addAttribute("singleListCount", pageCnt);
//			System.out.println("insert 성공");
		}
		
		/*
		 * model.addAttribute("menu", "fileupload"); model.addAttribute("attribute",
		 * file.getName());
		 */
		return "sfsad";
	}
}
