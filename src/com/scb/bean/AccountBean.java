package com.scb.bean;

public class AccountBean {
	String account_type = "";
	String account_for = "";
	String aadhar_num = "";
	String pan_num = "";
	String state = "";
	String city = "";
	String branch = "";
	
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	public String getAccount_for() {
		return account_for;
	}
	public void setAccount_for(String account_for) {
		this.account_for = account_for;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public String toString() {
		String result = this.account_type+" "+this.account_for+" "+this.aadhar_num+" "+this.pan_num+" "+this.state+" "+this.city+" "+this.branch;
		return result;
	}
}
