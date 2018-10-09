package com.scb.bean;

import java.util.Date;

public class ApprovedBean {
	private int app_id = 0;
	private String account_number = "";
	private String ifsc_code = "";
	private String account_type = "";
	private String branch = "";
	private String city = "";
	private String state = "";
	private String aadhar_num = "";
	private String pan_num = "";
	private Date approved_on;
	
	public int getApp_id() {
		return app_id;
	}
	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getIfsc_code() {
		return ifsc_code;
	}
	public void setIfsc_code(String ifsc_code) {
		this.ifsc_code = ifsc_code;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAadhar_num() {
		return aadhar_num;
	}
	public void setAadhar_num(String aadhar_num) {
		this.aadhar_num = aadhar_num;
	}
	public String getPan_num() {
		return pan_num;
	}
	public void setPan_num(String pan_num) {
		this.pan_num = pan_num;
	}
	public Date getApproved_on() {
		return approved_on;
	}
	public void setApproved_on(Date approved_on) {
		this.approved_on = approved_on;
	}
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
}
