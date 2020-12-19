package com.hs.mytravel.user.model;

public class UserVO {
	private int u_no;
	private String u_id;
	private String u_pw;
	private String u_nm;
	private String salt;
	private String r_dt;
	
	
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_nm() {
		return u_nm;
	}
	public void setU_nm(String u_nm) {
		this.u_nm = u_nm;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getR_dt() {
		return r_dt;
	}
	public void setR_dt(String r_dt) {
		this.r_dt = r_dt;
	}
	
	
}
