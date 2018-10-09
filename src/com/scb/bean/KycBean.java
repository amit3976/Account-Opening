package com.scb.bean;

public class KycBean {
	private String address_proof ="";
	private String pan_card = "";
	private String aadhar_card = "";
	private String photograph = "";
	private String signature = "";
	
	public String getAddress_proof() {
		return address_proof;
	}
	public void setAddress_proof(String address_proof) {
		this.address_proof = address_proof;
	}
	public String getPan_card() {
		return pan_card;
	}
	public void setPan_card(String pan_card) {
		this.pan_card = pan_card;
	}
	public String getAadhar_card() {
		return aadhar_card;
	}
	public void setAadhar_card(String aadhar_card) {
		this.aadhar_card = aadhar_card;
	}
	public String getPhotograph() {
		return photograph;
	}
	public void setPhotograph(String photograph) {
		this.photograph = photograph;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	
	public String toString(){
		return this.address_proof+" "+this.pan_card+" "+this.aadhar_card+" "+this.photograph+" "+this.signature;
	}
}
