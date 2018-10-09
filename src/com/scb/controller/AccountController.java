package com.scb.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.scb.bean.AccountBean;
import com.scb.bean.ApprovedBean;
import com.scb.bean.KycBean;
import com.scb.bean.PersonalBean;
import com.scb.bean.RegisterBean;
import com.scb.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService myService;
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("visitLogin")
	public ModelAndView visitLogin(){
		return new ModelAndView("login_page");
	}
	
	@RequestMapping("/login")
	public ModelAndView loginFunction(HttpServletRequest req, RegisterBean rb, HttpSession session) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		if(username.equals("admin") && password.equals("admin@123")){
			return new ModelAndView("admin_dashboard");
		}
		else {
			rb.setEmail(username);
			rb.setPassword(password);
			int res = myService.verifyLogin(rb);
			String result = null;
			if(res == 1) {
				session.setAttribute("sess_user", username);
				buttonDisable(session);
				return new ModelAndView("home");
			}
			else {
				result = "<div class = 'alert alert-danger alert-dismissable' style='width: 500px;'><button type = 'button' class = 'close' data-dismiss = 'alert' aria-hidden = 'true'>&times;</button>Error! Invalid Username or password.</div>";
				return new ModelAndView("login_page","res",result);
			}
		}
	}
	
	public void buttonDisable(HttpSession session) {
		int ans = myService.verifyAppId((String)session.getAttribute("sess_user"));
		if(ans == 0) {
			session.setAttribute("is_disable_1","");
			session.setAttribute("is_disable_2", "disabled");
			session.setAttribute("is_disable_3", "disabled");
		}
		else {
			session.setAttribute("is_disable_1", "disabled");
			session.setAttribute("is_disable_2", "");
			session.setAttribute("is_disable_3", "disabled");
		}
		int cs = myService.checkStatus((String)session.getAttribute("sess_user"));
		if(cs == 1) {
			session.setAttribute("is_disable_1", "disabled");
			session.setAttribute("is_disable_2", "disabled");
			session.setAttribute("is_disable_3", "");
		}
	}
	
	@RequestMapping("/signup")
	public ModelAndView signupFunction(HttpServletRequest req) {
		return new ModelAndView("signup_page");
	}
	
	@RequestMapping("/backToLogin")
	public ModelAndView backToLogin(HttpServletRequest req) {
		return new ModelAndView("login_page");
	}
	
	@RequestMapping("register")
	public ModelAndView newRegistration(@ModelAttribute("rb") RegisterBean rb, HttpSession session) {
		String result = null;
		int a = myService.registration(rb);
		if(a != 0) {
			session.setAttribute("signup_user", rb.getEmail());
			myService.deleteOTP((String)session.getAttribute("signup_user"));
			int otp = myService.generateOtp((String)session.getAttribute("signup_user"));
			String user = (String)session.getAttribute("signup_user");
			myService.emailOTP(otp, user);
			return new ModelAndView("otp");
		}
		else {
			result = "<div class = 'alert alert-danger alert-dismissable' style='width: 300px;'><button type = 'button' class = 'close' data-dismiss = 'alert' aria-hidden = 'true'>&times;</button>User already exists.</div>";
			return new ModelAndView("signup_page","res",result);
		}
	}
	
	@RequestMapping("validateOTP")
	public ModelAndView validateOTP(HttpSession session, HttpServletRequest req){
		int entered_otp = Integer.parseInt(req.getParameter("entered_otp"));
		boolean flag = myService.validateOTP(entered_otp, (String)session.getAttribute("signup_user"));
		if(flag){
			myService.deleteOTP((String)session.getAttribute("signup_user"));
			String result = "<div class = 'alert alert-success alert-dismissable' style='width: 500px;'><button type = 'button' class = 'close' data-dismiss = 'alert' aria-hidden = 'true'>&times;</button>Success! Registered Successfully</div>";
			return new ModelAndView("login_page","res",result);
		}
		else {
			myService.deleteOTP((String)session.getAttribute("signup_user"));
			myService.deleteRegistration((String)session.getAttribute("signup_user"));
			String result = "<div class = 'alert alert-danger alert-dismissable' style='width: 300px;'><button type = 'button' class = 'close' data-dismiss = 'alert' aria-hidden = 'true'>&times;</button>Invalid OTP entered.</div>";
			return new ModelAndView("signup_page","res",result);
		}
	}
	
	@RequestMapping("resendOTP")
	public ModelAndView resendOTP(HttpSession session){
		myService.deleteOTP((String)session.getAttribute("signup_user"));
		int otp = myService.generateOtp((String)session.getAttribute("signup_user"));
		String user = (String)session.getAttribute("signup_user");
		myService.emailOTP(otp, user);
		return new ModelAndView("otp");
	}
	
	@RequestMapping("/create")
	public ModelAndView createNewBankAccount(PersonalBean pb, HttpSession session) {
		int b = myService.insertPersonalDetails(pb, (String)session.getAttribute("sess_user"));
		return new ModelAndView("personal_details","pb",pb);
	}
	
	@RequestMapping("/save_personal_details")
	public ModelAndView savePersonalDetails(@ModelAttribute PersonalBean pb, HttpSession session) {
		String str = myService.updatePersonalDetails(pb, (String)session.getAttribute("sess_user"));
		String result = "<div align ='center'><font color='#42f4f1'>"+str+"</font></div><br>";
		ModelAndView m = new ModelAndView("personal_details");
		m.addObject("result", result);
		m.addObject("pb", pb);
		return m;
	}
	
	@RequestMapping("/backToHome")
	public ModelAndView backToHome(HttpServletRequest req, HttpSession session) {
		buttonDisable(session);
		return new ModelAndView("home");
	}
	
	@RequestMapping("/insert_personal_details")
	public ModelAndView insertPersonalDetails(@ModelAttribute PersonalBean pb,HttpServletRequest req, HttpSession session) {
		String str = myService.updatePersonalDetails(pb, (String)session.getAttribute("sess_user"));
		session.setAttribute("form_email",pb.getEmail());
		myService.deleteOTP(pb.getEmail());
		int otp = myService.generateOtp(pb.getEmail());
		String user = pb.getEmail();
		myService.emailOTP(otp, user);
		return new ModelAndView("form_otp");
	}
	
	@RequestMapping("validateFormOTP")
	public ModelAndView validateFormOTP(HttpSession session, HttpServletRequest req){
		int entered_otp = Integer.parseInt(req.getParameter("entered_otp"));
		boolean flag = myService.validateOTP(entered_otp, (String)session.getAttribute("form_email"));
		if(flag){
			myService.deleteOTP((String)session.getAttribute("form_email"));
			AccountBean ab = new AccountBean();
			ab = myService.getAccountDetailsUsingId((String)session.getAttribute("sess_user"));
			String temp = ab.toString();
			if(temp.trim().length() != 0) {
				return new ModelAndView("account_details","ab",ab);
			}
			else {
				int b = myService.insertAccountDetails(ab, (String)session.getAttribute("sess_user"));
				return new ModelAndView("account_details","ab",ab);
			}
		}
		else {
			myService.deleteOTP((String)session.getAttribute("form_email"));
			String result = "<div align ='center'><font color='#42f4f1'><b>Invalid OTP entered.</b></font></div><br>";
			PersonalBean pb = new PersonalBean();
			pb = myService.getPersonalDetailsUsingId((String)session.getAttribute("sess_user"));
			ModelAndView m = new ModelAndView("personal_details");
			m.addObject("result", result);
			m.addObject("pb",pb);
			return m;
		}
	}
	
	@RequestMapping("resendFormOTP")
	public ModelAndView resendFormOTP(HttpSession session){
		myService.deleteOTP((String)session.getAttribute("form_email"));
		int otp = myService.generateOtp((String)session.getAttribute("form_email"));
		String user = (String)session.getAttribute("form_email");
		myService.emailOTP(otp, user);
		return new ModelAndView("form_otp");
	}
	
	@RequestMapping("/restore_personal_details")
	public ModelAndView restorePersonalDetails(HttpServletRequest req, HttpSession session) {
		PersonalBean pb = new PersonalBean();
		pb = myService.getPersonalDetailsUsingId((String)session.getAttribute("sess_user"));
		return new ModelAndView("personal_details","pb",pb);
	}
	
	@RequestMapping("/save_account_details")
	public ModelAndView saveAccountDetails(HttpServletRequest req ,@ModelAttribute AccountBean ab, HttpSession session) {
		String str = myService.updateAccountDetails(ab, (String)session.getAttribute("sess_user"));
		String result = "<div align ='center'><font color='#42f4f1'>"+str+"</font></div><br>";
		ModelAndView m = new ModelAndView("account_details");
		m.addObject("result", result);
		m.addObject("ab", ab);
		return m;
	}
	
	@RequestMapping("/insert_account_details")
	public ModelAndView insertAccountDetails(@ModelAttribute AccountBean ab,HttpServletRequest req, HttpSession session) {
		String str = myService.updateAccountDetails(ab, (String)session.getAttribute("sess_user"));
		str = myService.validateAadharAndPan(ab, (String)session.getAttribute("sess_user"));
		if(str.equals("ok")) {
			KycBean kb = new KycBean();
			kb = myService.getKycDetailsUsingId((String)session.getAttribute("sess_user"));
			String temp = kb.toString();
			if(temp.trim().length() != 0) {
				return new ModelAndView("kyc_details","kb",kb);
			}
			else {
				int b = myService.insertKycDetails(kb, (String)session.getAttribute("sess_user"));
				return new ModelAndView("kyc_details","kb",kb);
			}
		}
		else {
			ModelAndView m = new ModelAndView("account_details");
			m.addObject("error", str);
			m.addObject("ab", ab);
			return m;
		}
	}
	
	@RequestMapping("/restore_account_details")
	public ModelAndView restoreAccountDetails(HttpServletRequest req, HttpSession session) {
		AccountBean ab = new AccountBean();
		ab = myService.getAccountDetailsUsingId((String)session.getAttribute("sess_user"));
		return new ModelAndView("account_details","ab",ab);
	}
	
	@RequestMapping("/save_kyc_details")
	public ModelAndView saveKycDetails(@RequestParam("uploads") MultipartFile files[],KycBean kb, HttpServletRequest req, HttpSession session) {
		String message = "";
		String finalFilePath = "";
		String id = String.valueOf(myService.getAppId((String)session.getAttribute("sess_user")));
		kb = myService.getKycDetailsUsingId((String)session.getAttribute("sess_user"));
		
		for(int i=0; i<files.length; i++) {
			MultipartFile file = files[i];
			String filename=file.getOriginalFilename();  
			
			if(file != null) {
				try {
					String path = req.getServletContext().getRealPath("resources/kyc_uploads/");
					path = path.substring(0, path.indexOf("."));
					String dirPath = path+"Account_Opening\\WebContent\\resources\\kyc_uploads\\"+id;
				
					File dir = new File(dirPath);
					if(!dir.exists())
						dir.mkdir();
				
					finalFilePath = dirPath+"\\"+filename;
					byte[] bytes = file.getBytes();
				
					File serverFile = new File(finalFilePath);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.flush();
					stream.close();
					message = "Suucessfully uploaded file - "+filename;
				
					finalFilePath = finalFilePath.replace("\\", "/");
					String ar[] = finalFilePath.split("WebContent/");
					if(i==0) {
						kb.setAddress_proof(ar[1]);	
					}
					else if(i==1) {
						kb.setPan_card(ar[1]);	
					}
					else if(i==2) {
						kb.setAadhar_card(ar[1]);	
					}
					else if(i==3) {
						kb.setPhotograph(ar[1]);	
					}
					else if(i==4) {
						kb.setSignature(ar[1]);	
					}
				}
				catch(Exception e) {
					message = "Failed to upload "+filename;
				}
			}
		}
		String str = myService.updateKycDetails(kb, (String)session.getAttribute("sess_user"));
		String result = "<div align ='center'><font color='#42f4f1'>"+str+"</font></div><br>";
		ModelAndView m = new ModelAndView("kyc_details");
		m.addObject("result", result);
		m.addObject("kb", kb);
		return m;
	}
	
	@RequestMapping("/insert_kyc_details")
	public ModelAndView insertKycDetails(@RequestParam("uploads") MultipartFile files[],KycBean kb, HttpServletRequest req, HttpSession session) {
		String message = "";
		String finalFilePath = "";
		String id = String.valueOf(myService.getAppId((String)session.getAttribute("sess_user")));
		kb = myService.getKycDetailsUsingId((String)session.getAttribute("sess_user"));
		
		for(int i=0; i<files.length; i++) {
			MultipartFile file = files[i];
			String filename=file.getOriginalFilename();  
			
			if(file != null) {
				try {
					String path = req.getServletContext().getRealPath("resources/kyc_uploads/");
					path = path.substring(0, path.indexOf("."));
					String dirPath = path+"Account_Opening\\WebContent\\resources\\kyc_uploads\\"+id;
				
					File dir = new File(dirPath);
					if(!dir.exists())
						dir.mkdir();
				
					finalFilePath = dirPath+"\\"+filename;
					byte[] bytes = file.getBytes();
				
					File serverFile = new File(finalFilePath);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.flush();
					stream.close();
					message = "Suucessfully uploaded file - "+filename;
				
					finalFilePath = finalFilePath.replace("\\", "/");
					String ar[] = finalFilePath.split("WebContent/");
					if(i==0) {
						kb.setAddress_proof(ar[1]);	
					}
					else if(i==1) {
						kb.setPan_card(ar[1]);	
					}
					else if(i==2) {
						kb.setAadhar_card(ar[1]);	
					}
					else if(i==3) {
						kb.setPhotograph(ar[1]);	
					}
					else if(i==4) {
						kb.setSignature(ar[1]);	
					}
				}
				catch(Exception e) {
					message = "Failed to upload "+filename;
				}
			}
		}
		String str = myService.updateKycDetails(kb, (String)session.getAttribute("sess_user"));
		return new ModelAndView("complete_details");
	}
	
	@RequestMapping("/restore_kyc_details")
	public ModelAndView restoreKycDetails(HttpServletRequest req, HttpSession session) {
		KycBean kb = new KycBean();
		kb = myService.getKycDetailsUsingId((String)session.getAttribute("sess_user"));
		return new ModelAndView("kyc_details","kb",kb);
	}
	
	@RequestMapping("final_submit")
	public ModelAndView finalSubmit(HttpSession session) {
		String urn = myService.finalSubmission((String)session.getAttribute("sess_user"));
		return new ModelAndView("finished","urn",urn);
	}

	@RequestMapping("status")
	@ModelAttribute
	public ModelAndView applicationStatus(HttpSession session) {
		String status = myService.currentStatus((String)session.getAttribute("sess_user"));
		String urn = myService.finalURN((String)session.getAttribute("sess_user"));
		ModelAndView m = new ModelAndView("status");
		m.addObject("status", status);
		m.addObject("urn", urn);
		return m;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletResponse response, HttpSession session)  {
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Expires", "0");
		response.setDateHeader("Expires",-1);
		session.invalidate();
		return new ModelAndView("login_page");
	}
	
	@RequestMapping("view_applications")
	public ModelAndView viewApplications() {
		List<Integer> l = myService.viewAllAppId();
		return new ModelAndView("admin_viewAll","list",l);
	}
	
	@RequestMapping("/backToAdminHome")
	public ModelAndView backToAdminHome(){
		return new ModelAndView("admin_dashboard");
	}
	
	@RequestMapping("view")
	public ModelAndView viewAppIdDetails(HttpServletRequest req, HttpSession session){
		PersonalBean p = new PersonalBean();
		int app_id = Integer.parseInt(req.getParameter("id"));
		session.setAttribute("app_id", app_id);
		String username = myService.getUsername(app_id);
		session.setAttribute("username", username);
		p = myService.getPersonalDetailsUsingId(username);
		ModelAndView m = new ModelAndView("view");
		m.addObject("personalDetails", p);
		return m;
	}
	
	@RequestMapping("account")
	public ModelAndView viewAppIdAccount(HttpServletRequest req, HttpSession session){
		AccountBean a = new AccountBean();
		a = myService.getAccountDetailsUsingId((String)session.getAttribute("username"));
		ModelAndView m = new ModelAndView("view");
		m.addObject("accountDetails",a);
		return m;
	}
	
	@RequestMapping("docs")
	public ModelAndView viewAppIdKycImages(HttpServletRequest req, HttpSession session){
		KycBean k = new KycBean();
		k = myService.getKycDetailsUsingId((String)session.getAttribute("username"));
		String doc = k.getAddress_proof()+","+k.getPan_card()+","+k.getAadhar_card()+","+k.getPhotograph()+","+k.getSignature();
		ModelAndView m = new ModelAndView("image_viewer");
		m.addObject("doc", doc);
		return m;
	}
	
	@RequestMapping("accept")
	public ModelAndView approveApplication(HttpSession session) {
		String res = myService.approve((Integer)session.getAttribute("app_id"), (String)session.getAttribute("username"));
		ModelAndView m = new ModelAndView("approved");
		m.addObject("res", res);
		
		String to = myService.getPersonalDetailsUsingId((String)session.getAttribute("username")).getEmail();
		String subject = "Status of Application No : "+myService.finalURN((String)session.getAttribute("username"));
		List<ApprovedBean> l =  myService.allApprovedApplications((String)session.getAttribute("username"));
		String message = "Dear Customer,\n\nThank you for applying for Standard Chartered "+l.get(0).getAccount_type()+" Account.\n" 
				+ "We are pleased to inform you that your "+l.get(0).getAccount_type()+" bank accont has been activated and your account number is "+l.get(0).getAccount_number()+". \n"
				+ "For any further inquiries, please feel free to contact our 24 hour Phone Banking team.\n\n"
				+ "Warm sincerely,\nThe A team";
		
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(to);
		email.setSubject(subject);
		email.setText(message);
		
		mailSender.send(email);
		System.out.println("mail sent");
		
		return m;
	}
	
	@RequestMapping("reject")
	public ModelAndView rejectApplication(HttpSession session){
		String res = "<br><b>Please provide reason for rejection.</b><br><br>"
					+"<form method='post'> <input type = 'hidden' value = '"+session.getAttribute("app_id")+"' name = 'id'>" 
					+"<textarea rows='4' cols='50' name = 'fullreason' maxlength='200' placeholder='Enter reason here..' required></textarea><br><br>"
					+"<button type='submit' class='btn btn-success' formaction='reason'><i class='glyphicon glyphicon-ok-circle'></i>&nbsp;Submit</button>"
					+"</form>";
		ModelAndView m = new ModelAndView("rejected");
		m.addObject("res", res);
		
		String to = myService.getPersonalDetailsUsingId((String)session.getAttribute("username")).getEmail();
		String subject = "Status of Application No : "+myService.finalURN((String)session.getAttribute("username"));
		String message = "Dear Customer,\n\nYour application to open a bank account in Standard Chartered Bank has been rejected.\n"
				+ "For re-applying visit our website for opening online bank account.\n\n"
				+ "Warm sincerely,\nThe A team";
		
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(to);
		email.setSubject(subject);
		email.setText(message);
		
		mailSender.send(email);
		System.out.println("mail sent");
		return m;
	}
	
	@RequestMapping("reason")
	public ModelAndView rejectWithReason(HttpServletRequest req, HttpSession session) {
		String res = myService.reasonForRejection((Integer)session.getAttribute("app_id"), req.getParameter("fullreason"));
		ModelAndView m = new ModelAndView("rejected");
		m.addObject("res",res);
		return m;
	}
	
	@RequestMapping("approved_applications")
	public ModelAndView allApprovedApplications() {
		List<ApprovedBean> l = myService.allApprovedApplications("all");
		return new ModelAndView("admin_approved","list",l);
	}
	
	@RequestMapping("newBankAccount")
	public ModelAndView newBankAccount(HttpSession session) {
		List<ApprovedBean> l = myService.allApprovedApplications((String)session.getAttribute("sess_user"));
		return new ModelAndView("status_details","list",l);
	}
	
	@RequestMapping("rejectDetails")
	public ModelAndView rejectDetails(HttpSession session) {
		String reason = myService.getRejectReason((String)session.getAttribute("sess_user"));
		return new ModelAndView("status_details","reason",reason);
	}
	
	@RequestMapping("applyAgain")
	public ModelAndView applyAgain(HttpSession session, HttpServletRequest req) {
		String id = String.valueOf(myService.getAppId((String)session.getAttribute("sess_user")));
		String path = req.getServletContext().getRealPath("resources/kyc_uploads/");
		path = path.substring(0, path.indexOf("."));
		String dirPath = path+"Account_Opening\\WebContent\\resources\\kyc_uploads\\"+id;
		File dir = new File(dirPath);

		File[] listFiles = dir.listFiles();
		for(File file : listFiles){
			System.out.println("Deleting "+file.getName());
			file.delete();
		}
		//now directory is empty, so we can delete it
		System.out.println("Deleting Directory. Success = "+dir.delete());
		
		myService.applyAgain((String)session.getAttribute("sess_user"));
		buttonDisable(session);
		return new ModelAndView("home"); 
	}
}
