package com.cafe.init.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {

	@Autowired
	CommentDAO mda;
	
	public int Test() {
		return mda.getTest();
	}
	
	public void doinsert() {
		mda.insert();
	}
	
}
