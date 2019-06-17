package com.kbkb.food.single;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SingleService {

	@Autowired
	SingleDAO mda;
	
	public int Test() {
		return mda.getTest();
	}
	
	public void doinsert() {
		mda.insert();
	}
	
}
