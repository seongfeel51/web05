package com.starsports.dto;

import java.util.Date;

public class FAQDTO {
	private int qno;
	private String tag;
	private String qcon;
	private String acon;
	private Date regdate;
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getQcon() {
		return qcon;
	}
	public void setQcon(String qcon) {
		this.qcon = qcon;
	}
	public String getAcon() {
		return acon;
	}
	public void setAcon(String acon) {
		this.acon = acon;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
