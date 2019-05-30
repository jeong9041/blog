package com.cafe.init.single;

public class SingleDTO {

	private int idx;
	private String name;
	private String imageFileName;
	private String message;
	private String reg_date;
	
	
	
	@Override
	public String toString() {
		return "SingleDTO [idx=" + idx + ", name=" + name + ", imageFileName=" + imageFileName + ", message=" + message
				+ ", reg_date=" + reg_date + "]";
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	
}
