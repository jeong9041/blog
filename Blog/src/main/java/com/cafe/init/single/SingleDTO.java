package com.cafe.init.single;

public class SingleDTO {

	private int idx;
	private String name;
	private String image;
	private String message;
	private String reg_date;
	
	
	
	@Override
	public String toString() {
		return "SingleDTO [idx=" + idx + ", name=" + name + ", image=" + image + ", message=" + message + ", reg_date="
				+ reg_date + "]";
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
}
