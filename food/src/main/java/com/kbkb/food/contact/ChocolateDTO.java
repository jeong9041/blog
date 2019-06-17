package com.kbkb.food.contact;

public class ChocolateDTO {

	private int idx;
	private String phone;	
	private String name;
	private String email;
	private String message;
	
	
	
	
	@Override
	public String toString() {
		return "ChocolateDTO [idx=" + idx + ", phone=" + phone + ", name=" + name + ", email=" + email + ", message="
				+ message + "]";
	}	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
	
	
}
