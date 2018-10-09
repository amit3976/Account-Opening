package com.scb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.scb.bean.AccountBean;
import com.scb.bean.ApprovedBean;
import com.scb.bean.KycBean;
import com.scb.bean.PersonalBean;
import com.scb.bean.RegisterBean;

@Repository
public class AccountDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int verifyLogin(RegisterBean rb) {
		String query = "SELECT count(*) from registration_table where email ='"+rb.getEmail()+"' AND password ='"+rb.getPassword()+"'";
		int result = (int)jdbcTemplate.queryForObject(query, Integer.class);
		return result;
	}
	
	public int registration(RegisterBean rb) {
		int a = 0;
		boolean flag = true;
		Random rnd = new Random();
		int app_id = 0;
		
		while(flag) {
			app_id = 100000 + rnd.nextInt(90000);
			String q = "Select count(*) from registration_table where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				flag = false;
			}
		}
		try {
			a = jdbcTemplate.update("INSERT into registration_table values("+app_id+",'"+rb.getFull_name()+"','"+rb.getPassword()+"','"+rb.getIs_adhar()+"','"+rb.getDob()+"','"+rb.getMobile()+"','"+rb.getEmail()+"')");
			jdbcTemplate.execute("commit");
		}
		catch(Exception e) {
			System.out.println("There is exception in registration : "+e);
		}
		return a;
	}
	
	public int generateOtp(String username) {
		int a = 0;
		Random rnd = new Random();
		int otp = 100000 + rnd.nextInt(90000);
		a = jdbcTemplate.update("Insert into otp_table values('"+username+"',"+otp+")");
		jdbcTemplate.execute("commit");
		return otp;
	}
	
	public int getOTP(String username) {
		return jdbcTemplate.queryForObject("SELECT otp from otp_table where username = '"+username+"'",Integer.class);
	}
	
	public void deleteOTP(String username) {
		jdbcTemplate.execute("Delete from otp_table where username = '"+username+"'");
	}
	
	public void deleteRegistration(String username){
		jdbcTemplate.execute("Delete from registration_table where email = '"+username+"'");
	}
	
	public int getAppId(String username) {
		String q = null;
		q = "Select app_id from registration_table where email = '"+username+"'";
		return (int)jdbcTemplate.queryForObject(q, Integer.class);
	}
	
	public String getUsername(int app_id) {
		return jdbcTemplate.queryForObject("Select email from registration_table where app_id = "+app_id, String.class);
	}
	
	public int verifyAppId(String username) {
		int app_id = getAppId(username);
		String q = null;
		q = "Select count(*) from personal_details where app_id = "+app_id;
		return (int)jdbcTemplate.queryForObject(q, Integer.class);
	}
	
	public int insertPersonalDetails(PersonalBean pb, String username) {
		int a = 0;
		try {
			int app_id = getAppId(username);
			concatSplitDetails(pb);
			String q = "Select count(*) from personal_details where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				a = jdbcTemplate.update("INSERT into personal_details values("+app_id+",'"+pb.getFull_name()+"','"+pb.getFather_name()+"','"+pb.getMother_name()+"','"+pb.getEmail()+"','"+pb.getMobile()+"','"+pb.getGender()+"','"+pb.getMarital_status()+"','"+pb.getNationality()+"','"+pb.getResidential_status()+"','"+pb.getIdentification_mark()+"','"+pb.getApplicant_type()+"','"+pb.getOccupation()+"','"+pb.getDate_of_birth()+"','"+pb.getAnnual_income()+"','"+pb.getHighest_qual()+"','"+pb.getSame_add()+"','"+pb.getPermanent_address()+"','"+pb.getCurrent_address()+"')");
				jdbcTemplate.execute("commit");
			}
		}
		catch(Exception e) {
			System.out.println("There is exception in insert Personal Details : "+e);
		}
		return a;
	}
	
	public void concatSplitDetails(PersonalBean pb) {
		String temp = "";
		temp = "_"+pb.getName_title()+" _"+pb.getFirst_name()+" _"+pb.getMiddle_name()+" _"+pb.getLast_name();
		pb.setFull_name(temp.trim());
		temp = "_"+pb.getFname_title()+" _"+pb.getFather_first_name()+" _"+pb.getFather_middle_name()+" _"+pb.getFather_last_name();
		pb.setFather_name(temp.trim());
		temp = "_"+pb.getMname_title()+" _"+pb.getMother_first_name()+" _"+pb.getMother_middle_name()+" _"+pb.getMother_last_name();
		pb.setMother_name(temp.trim());
		temp = "%"+pb.getPer_flat()+" %"+pb.getPer_locality()+" %"+pb.getPer_city()+" %"+pb.getPer_pincode()+" %"+pb.getPer_state()+" %"+pb.getPer_country();
		pb.setPermanent_address(temp.trim());
		if(pb.getSame_add().equalsIgnoreCase("yes")) {
			pb.setCurrent_address(pb.getPermanent_address());
		}
		else {
			temp = "%"+pb.getCur_flat()+" %"+pb.getCur_locality()+" %"+pb.getCur_city()+" %"+pb.getCur_pincode()+" %"+pb.getCur_state()+" %"+pb.getCur_country();
			pb.setCurrent_address(temp.trim());
		}
	}
	
	public List<PersonalBean> getPersonalDetailsUsingId(String username) {
		int app_id = getAppId(username);
		String qu = "SELECT * from personal_details where app_id = "+app_id;
		return jdbcTemplate.query(qu, new RowMapper<PersonalBean>() {
			@Override
			public PersonalBean mapRow(ResultSet rs, int rownumber)  throws SQLException {
				PersonalBean m = new PersonalBean();
				m.setFull_name(rs.getString(2));
				m.setFather_name(rs.getString(3));
				m.setMother_name(rs.getString(4));
				m.setEmail(rs.getString(5));
				m.setMobile(rs.getString(6));
				m.setGender(rs.getString(7));
				m.setMarital_status(rs.getString(8));
				m.setNationality(rs.getString(9));
				m.setResidential_status(rs.getString(10));
				m.setIdentification_mark(rs.getString(11));
				m.setApplicant_type(rs.getString(12));
				m.setOccupation(rs.getString(13));
				m.setDate_of_birth(rs.getString(14));
				m.setAnnual_income(rs.getString(15));
				m.setHighest_qual(rs.getString(16));
				m.setSame_add(rs.getString(17));
				m.setPermanent_address(rs.getString(18));
				m.setCurrent_address(rs.getString(19));
				return m;
			}
		});
	}
	
	public boolean updatePersonalDetails(PersonalBean pb, String username) {
		concatSplitDetails(pb);
		int app_id = getAppId(username);
		String q = "Update personal_details Set full_name = '"+pb.getFull_name()+"', father_name = '"+pb.getFather_name()+"', mother_name = '"+pb.getMother_name()+"',email = '"+pb.getEmail()+"',mobile = '"+pb.getMobile()+"',gender = '"+pb.getGender()+"',marital_status = '"+pb.getMarital_status()+"',nationality = '"+pb.getNationality()+"',residential_status = '"+pb.getResidential_status()+"',identification_mark = '"+pb.getIdentification_mark()+"',applicant_type = '"+pb.getApplicant_type()+"',occupation = '"+pb.getOccupation()+"',date_of_birth = '"+pb.getDate_of_birth()+"',annual_income = '"+pb.getAnnual_income()+"',highest_qual = '"+pb.getHighest_qual()+"',same_add = '"+pb.getSame_add()+"', permanent_address = '"+pb.getPermanent_address()+"',current_address = '"+pb.getCurrent_address()+"' where app_id = "+app_id;
		int a = jdbcTemplate.update(q);
		if(a == 1) {
			jdbcTemplate.execute("commit");
			return true;
		}
		return false;
	}
	
	public int insertAccountDetails(AccountBean ab, String username) {
		int a = 0;
		try {
			int app_id = getAppId(username);
			String q = "Select count(*) from account_details where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				a = jdbcTemplate.update("INSERT into account_details values("+app_id+",'"+ab.getAccount_type()+"','"+ab.getAccount_for()+"','"+ab.getAadhar_num()+"','"+ab.getPan_num()+"','"+ab.getState()+"','"+ab.getCity()+"','"+ab.getBranch()+"')");
				jdbcTemplate.execute("commit");
			}
		}
		catch(Exception e) {
			System.out.println("There is exception in insert Account Details : "+e);
		}
		return a;
	}
	
	public String updateAccountDetails(AccountBean ab, String username) {
		int app_id = getAppId(username);
		String q = "Update account_details Set account_type = '"+ab.getAccount_type()+"', account_for = '"+ab.getAccount_for()+"', aadhar_num = '"+ab.getAadhar_num()+"', pan_num = '"+ab.getPan_num()+"', state = '"+ab.getState()+"', city = '"+ab.getCity()+"', branch = '"+ab.getBranch()+"' where app_id = "+app_id;
		int a = jdbcTemplate.update(q);
		if(a == 1) {
			jdbcTemplate.execute("commit");
			return "<b>Data saved successfully</b>";
		}
		return "<b>Error while saving data</b>";
	}
	
	public String validateAadharAndPan(AccountBean ab, String username) {
		String q = "Select count(*) from account_details where aadhar_num ='"+ab.getAadhar_num()+"'";
		int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
		if(temp > 1) {
			return "Wrong Aadhar number entered";
		}
		q = "Select count(*) from account_details where pan_num ='"+ab.getPan_num()+"'";
		temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
		if(temp > 1) {
			return "Wrong Pan number entered";
		}
		return "ok";
	}
	
	public List<AccountBean> getAccountDetailsUsingId(String username) {
		int app_id = getAppId(username);
		String qu = "SELECT * from account_details where app_id = "+app_id;
		return jdbcTemplate.query(qu, new RowMapper<AccountBean>() {
			@Override
			public AccountBean mapRow(ResultSet rs, int rownumber)  throws SQLException {
				AccountBean m = new AccountBean();
				m.setAccount_type(rs.getString(2));
				m.setAccount_for(rs.getString(3));
				m.setAadhar_num(rs.getString(4));
				m.setPan_num(rs.getString(5));
				m.setState(rs.getString(6));
				m.setCity(rs.getString(7));
				m.setBranch(rs.getString(8));
				return m;
			}
		});
	}
	
	public List<KycBean> getKycDetailsUsingId(String username) {
		int app_id = getAppId(username);
		String qu = "SELECT * from kyc_details where app_id = "+app_id;
		return jdbcTemplate.query(qu, new RowMapper<KycBean>() {
			@Override
			public KycBean mapRow(ResultSet rs, int rownumber)  throws SQLException {
				KycBean m = new KycBean();
				m.setAddress_proof(rs.getString(2));
				m.setPan_card(rs.getString(3));
				m.setAadhar_card(rs.getString(4));
				m.setPhotograph(rs.getString(5));
				m.setSignature(rs.getString(6));
				return m;
			}
		});
	}
	
	public int insertKycDetails(KycBean kb, String username) {
		int a = 0;
		try {
			int app_id = getAppId(username);
			String q = "Select count(*) from kyc_details where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				a = jdbcTemplate.update("INSERT into kyc_details values("+app_id+",'"+kb.getAddress_proof()+"','"+kb.getPan_card()+"','"+kb.getAadhar_card()+"','"+kb.getPhotograph()+"','"+kb.getSignature()+"')");
				jdbcTemplate.execute("commit");
			}
		}
		catch(Exception e) {
			System.out.println("There is exception in insert kyc Details : "+e);
		}
		return a;
	}
	
	public boolean updateKycDetails(KycBean kb, String username) {
		int app_id = getAppId(username);
		String q = "Update kyc_details Set address_proof = '"+kb.getAddress_proof()+"', pan_card = '"+kb.getPan_card()+"', aadhar_card = '"+kb.getAadhar_card()+"', photograph = '"+kb.getPhotograph()+"', signature = '"+kb.getSignature()+"' where app_id = "+app_id;
		int a = jdbcTemplate.update(q);
		if(a == 1) {
			jdbcTemplate.execute("commit");
			return true;
		}
		return false;
	}
	
	public String finalSubmission(String username) {
		int a = 0;
		boolean flag = true;
		Random rnd = new Random();
		int app_id = getAppId(username);
		String urn = "SCB-OBA-000";
		String final_urn = "";
		
		while(flag) {
			int t = 10000 + rnd.nextInt(89999);
			urn += String.valueOf(t);
			String q = "Select count(*) from status_applications where urn = '"+urn+"'";
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				flag = false;
			}
		}
		try{
			String pattern = "yyyy-MM-dd";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			String date = simpleDateFormat.format(new Date());
			
			String q = "Select count(*) from status_applications where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				a = jdbcTemplate.update("INSERT into status_applications values("+app_id+",'"+urn+"','pending','"+date+"')");
				jdbcTemplate.execute("commit");
			}
			final_urn = finalURN(username);
		}
		catch (Exception e){
			final_urn = finalURN(username);
		}
		return final_urn;
	}
	
	public String finalURN(String username) {
		int app_id = getAppId(username);
		return jdbcTemplate.queryForObject("Select urn from status_applications where app_id = "+app_id,String.class);
	}
	
	public int checkStatus(String username) {
		int app_id = getAppId(username);
		String q = "Select count(*) from status_applications where app_id = "+app_id;
		int res = (int)jdbcTemplate.queryForObject(q, Integer.class);
		return res;
	}
	
	public String currentStatus(String username) {
		int app_id = getAppId(username);
		String q = "Select app_status from status_applications where app_id = "+app_id;
		return jdbcTemplate.queryForObject(q, String.class);
	}
	
	public List<Integer> viewAllAppId() {
		return (List<Integer>)jdbcTemplate.queryForList("Select app_id from status_applications where app_status = 'pending'",Integer.class);
	}
	
	public int approve(int app_id,String username) {
		int b = 0;
		int a = jdbcTemplate.update("Update status_applications set app_status = 'approved' where app_id = "+app_id);
		
		List<AccountBean> l = getAccountDetailsUsingId(username);
		AccountBean ab = new AccountBean();
		ab = l.get(0);
		
		boolean flag = true;
		Random rnd = new Random();
		String Account_Number = "";
		
		while(flag) {
			long t = 45000000000l + rnd.nextInt(999999999);
			Account_Number = String.valueOf(t);
			String q = "Select count(*) from approved_applications where account_number = '"+Account_Number+"'";
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				flag = false;
			}
		}
		
		try {
			String pattern = "yyyy-MM-dd";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			String date = simpleDateFormat.format(new Date());
			
			String ifsc = jdbcTemplate.queryForObject("Select ifsc from ifsc_code where branch = '"+ab.getBranch()+"'", String.class);
			
			String q = "Select count(*) from approved_applications where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				q = "Insert into approved_applications values ("+app_id+",'"+Account_Number+"','"+ifsc+"','"+ab.getAccount_type()+"','"+ab.getBranch()+"','"+ab.getCity()+"','"+ab.getState()+"','"+ab.getAadhar_num()+"','"+ab.getPan_num()+"','"+date+"')";
				b =jdbcTemplate.update(q);
				jdbcTemplate.execute("commit");
			}
		}
		catch(Exception e) {
			System.out.println("There is exception in approve admin : "+e);
		}
		return a+b;
	}
	
	public int reasonForRejection(int app_id, String reason) {
		int b = 0;
		int a = jdbcTemplate.update("Update status_applications set app_status = 'rejected' where app_id = "+app_id);
		
		try{
			String q = "Select count(*) from rejected_applications where app_id = "+app_id;
			int temp = (int)jdbcTemplate.queryForObject(q, Integer.class);
			if(temp == 0) {
				q = "Insert into rejected_applications values ("+app_id+",'"+reason+"')";
				b =jdbcTemplate.update(q);
				jdbcTemplate.execute("commit");
			}
		}
		catch(Exception e) {
			System.out.println("There is exception in reject admin : "+e);
		}
		return a+b;
	}
	
	public List<ApprovedBean> approvedApplications(String input) {
		String q = "";
		if(input.equalsIgnoreCase("all")){
			q = "Select * from approved_applications";
		}
		else {
			int app_id = getAppId(input);
			q = "Select * from approved_applications where app_id = "+app_id; 
		}
		return jdbcTemplate.query(q, new RowMapper<ApprovedBean>(){
			@Override
			public ApprovedBean mapRow(ResultSet rs, int rownumber) throws SQLException {
				ApprovedBean appb = new ApprovedBean();
				appb.setApp_id(rs.getInt(1));
				appb.setAccount_number(rs.getString(2));
				appb.setIfsc_code(rs.getString(3));
				appb.setAccount_type(rs.getString(4));
				appb.setBranch(rs.getString(5));
				appb.setCity(rs.getString(6));
				appb.setState(rs.getString(7));
				appb.setAadhar_num(rs.getString(8));
				appb.setPan_num(rs.getString(9));
				appb.setApproved_on(rs.getDate(10));
				return appb;
			}
		});
	}
	
	public String getRejectReason(String username) {
		int app_id = getAppId(username);
		String q = "Select reason from rejected_applications where app_id = "+app_id;
		return jdbcTemplate.queryForObject(q, String.class);
	}
	
	public void applyAgain(String username) {
		int app_id = getAppId(username);
		jdbcTemplate.update("Delete from personal_details where app_id ="+app_id);
		jdbcTemplate.update("Delete from account_details where app_id ="+app_id);
		jdbcTemplate.update("Delete from kyc_details where app_id ="+app_id);
		jdbcTemplate.update("Delete from status_applications where app_id ="+app_id);
		jdbcTemplate.update("Delete from rejected_applications where app_id ="+app_id);
		jdbcTemplate.execute("commit");
	}
}
