package com.starsports.dto;

public class BoardDTO {
	private int seq;
	private String title;
	private String content;
	private String bgimage;
	private String regdate;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBgimage() {
		return bgimage;
	}
	public void setBgimage(String bgimage) {
		this.bgimage = bgimage;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
}
