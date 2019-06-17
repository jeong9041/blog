package com.kbkb.food.contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChocolateService {

	@Autowired
	ChocolateDAO mda;
	
	public int Test() {
		return mda.getTest();
	}
	
	public void doinsert() {
		mda.insert();
	}
	
}
