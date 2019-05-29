package com.cafe.init.comment;

public class CommentDTO {

	private int idx;
	private String id;
	private String story;
	private String reg_date;
	private String email;
	private String name;
	private String image;
	
	
	
	@Override
	public String toString() {
		return "CommentDTO [idx=" + idx + ", id=" + id + ", story=" + story + ", reg_date=" + reg_date + ", email="
				+ email + ", name=" + name + ", image=" + image + "]";
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
