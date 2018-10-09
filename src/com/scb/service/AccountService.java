package com.scb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.scb.bean.AccountBean;
import com.scb.bean.ApprovedBean;
import com.scb.bean.KycBean;
import com.scb.bean.PersonalBean;
import com.scb.bean.RegisterBean;
import com.scb.dao.AccountDao;

@Service
public class AccountService {
	@Autowired
	private AccountDao myDao;
	@Autowired
	private JavaMailSender mailSender;
	
	@Transactional
	public int verifyLogin(RegisterBean rb) {
		return myDao.verifyLogin(rb);
	}
	
	@Transactional
	public int registration(RegisterBean rb) {
		return myDao.registration(rb);
	}
	
	@Transactional
	public int verifyAppId(String username) {
		return myDao.verifyAppId(username);
	}
	
	@Transactional
	public int insertPersonalDetails(PersonalBean pb, String username){
		return myDao.insertPersonalDetails(pb, username);
	}
	
	@Transactional
	public PersonalBean getPersonalDetailsUsingId(String username) {
		List<PersonalBean> l = myDao.getPersonalDetailsUsingId(username);
		PersonalBean s = new PersonalBean();
		if(l.size() == 1) {
			s = l.get(0);
			return s;
		}
		else {
			return s;
		}
	}
	
	@Transactional
	public String updatePersonalDetails(PersonalBean pb, String username) {
		boolean result = myDao.updatePersonalDetails(pb, username);
		if(result) {
			return "<b> Data saved successfully </b>";
		}
		else {
			return "<b> Error while saving </b>";
		}
	}
	
	@Transactional
	public int insertAccountDetails(AccountBean ab, String username) {
		return myDao.insertAccountDetails(ab, username);
	}
	
	@Transactional
	public String updateAccountDetails(AccountBean ab, String username) {
		return myDao.updateAccountDetails(ab, username);
	}
	
	@Transactional
	public String validateAadharAndPan(AccountBean ab, String username) {
		return myDao.validateAadharAndPan(ab, username);
	}
	
	@Transactional
	public AccountBean getAccountDetailsUsingId(String username) {
		List<AccountBean> l = myDao.getAccountDetailsUsingId(username);
		AccountBean s = new AccountBean();
		if(l.size() == 1) {
			s = l.get(0);
			return s;
		}
		else {
			return s;
		}
	}
	
	@Transactional
	public KycBean getKycDetailsUsingId(String username) {
		List<KycBean> l = myDao.getKycDetailsUsingId(username);
		KycBean s = new KycBean();
		if(l.size() == 1) {
			s = l.get(0);
			return s;
		}
		else {
			return s;
		}
	}
	
	@Transactional
	public int insertKycDetails(KycBean kb, String username) {
		return myDao.insertKycDetails(kb, username);
	}
	
	@Transactional
	public String updateKycDetails(KycBean kb, String username) {
		boolean result = myDao.updateKycDetails(kb, username);
		if(result) {
			return "<b> Data saved successfully </b>";
		}
		else {
			return "<b> Error while saving </b>";
		}
	}
	
	@Transactional
	public int getAppId(String username) {
		return myDao.getAppId(username);
	}
	
	@Transactional
	public String finalSubmission(String username) {
		return myDao.finalSubmission(username);
	}
	
	@Transactional
	public int checkStatus(String username) {
		return myDao.checkStatus(username);
	}
	
	@Transactional
	public String currentStatus(String username) {
		return myDao.currentStatus(username);
	}
	
	@Transactional
	public String finalURN(String username){
		return myDao.finalURN(username);
	}
	
	@Transactional
	public List<Integer> viewAllAppId(){
		return myDao.viewAllAppId();
	}
	
	@Transactional
	public String getUsername(int app_id){
		return myDao.getUsername(app_id);
	}
	
	@Transactional
	public String approve(int app_id,String username){
		int a = myDao.approve(app_id, username);
		if(a == 2) {
			return "Application id <strong>"+app_id+"</strong> has been approved";
		}
		else {
			return "Application id <strong>"+app_id+"</strong> already approved. Check Approved Applications.";
		}
	}
	
	@Transactional
	public String reasonForRejection(int app_id,String reason){
		int a = myDao.reasonForRejection(app_id, reason);
		if(a == 2) {
			return "<h3>Application id <strong>"+app_id+"</strong> has been rejected.</h3><br>";
		}
		else {
			return "<h3>Application id <strong>"+app_id+"</strong> already rejected.</h3><br>";
		}
	}
	
	@Transactional
	public List<ApprovedBean> allApprovedApplications(String input) {
		return myDao.approvedApplications(input);
	}
	
	@Transactional
	public String getRejectReason(String username) {
		return myDao.getRejectReason(username);
	}
	
	@Transactional
	public void applyAgain(String username) {
		myDao.applyAgain(username);
	}
	
	@Transactional
	public int generateOtp(String username) {
		return myDao.generateOtp(username);
	}
	
	@Transactional
	public boolean validateOTP(int entered_otp, String username) {
		int otp = myDao.getOTP(username);
		if(otp == entered_otp){
			return true;
		}
		else{
			return false;
		}
	}
	
	@Transactional
	public void deleteOTP(String username){
		myDao.deleteOTP(username);
	}
	
	@Transactional
	public void deleteRegistration(String username){
		myDao.deleteRegistration(username);
	}
	
	@Transactional
	public void emailOTP(int real_otp, String to){
		String subject = "Email Address Verification";
		String message = "Dear Customer,\n\nYour one time password (OTP) for email verification is "+real_otp+"\n\n"
				+ "Warm sincerely,\nThe A team";
		
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(to);
		email.setSubject(subject);
		email.setText(message);
		
		mailSender.send(email);
		System.out.println("otp mail sent");
	}
}
