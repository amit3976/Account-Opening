<html>
	<head>
		<title>Personal Details</title>
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/AccountFormResources/anothersample.css"> 
  		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<link rel="stylesheet" href="resources/AccountFormResources/help.css">
	</head>
	
	<body>
	
	<%@ include file = "ModelPersonalDetails.jsp" %>
	
		<header id="head" style="background: white;height: 70px;">
	   		<img src="resources/images/l2.png" style="width:160px; height: 60px;padding: 0px;float:left;transform: translate(10px,6px);"></img><br></div>
	  		<p><a href="#popup1"  onclick="document.getElementById("f1").visibility='hidden'"><i style="width:70px; height: 70px;padding: 0px;float:right;transform: translateX(-80px);" class="far fa-question-circle fa-2x"></i></a></p>
 		</header>
   
    	<div style="height: 50px;width: 100%;" >
  			<div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  			<div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  			<div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  			<div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  			<div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(-19px);"></div>  
		</div>
		<!-- multistep form -->
		<form id="msform" method="post">
			<!-- progressbar -->
			<ul id="progressbar">
			<li class="active">Personal Details Form</li>
			<li>Account Details Form</li>
			<li>KYC Documents Upload</li>
			<li>Completion</li>
		</ul>
		<!-- fieldsets -->
		${result }
		<fieldset>
			<h2 class="fs-title">Personal Details Form</h2>
			<!--<h3 class="fs-subtitle">This is step 1</h3>-->
		
			<div  id="da"  ><span id="username" style="color: red;" class="alert alert-danger alert-dismissable"> </span></div>
		 	<p style="text-align:justify">
		 	<br> 
			<b>Applicant Name</b>  
			<div class="cols" id="a"><br/>
			<select name="name_title" id="name_title" style="padding:0px;height:48px;" onchange="Title()">
          		<option id="name_title" value="" disabled selected><a style="color: #cccccc;">Title</a></option>
				<option <%= selectedTitle(p.getFull_name(),"Ms") %> value="Ms" >Ms</option>
				<option <%= selectedTitle(p.getFull_name(),"Mr") %> value="Mr">Mr</option>
				<option <%= selectedTitle(p.getFull_name(),"Mrs") %> value="Mrs">Mrs</option>
			</select>
			</div>	
			<div class="cols"><input type="text" name="first_name" id="first_name" minlength="2" <%= savedName(p.getFull_name(),1,"First Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="middle_name" id="middle_name" <%= savedName(p.getFull_name(),2,"Middle Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="last_name" id="last_name" minlength="2" <%= savedName(p.getFull_name(),3,"Last Name")%> size="20" autocomplete="off"></div><br/>

		 	<p style="text-align:justify"> 
			<b>Father Name</b> 
			<div class="cols" id="a"><br/>
			<select name="fname_title" id="fname_title" style="padding:0px;height:48px;" >
          		<option id="fname_title" value="" disabled selected><a style="color: #cccccc;">Title</a></option>
				<option <%= selectedTitle(p.getFather_name(),"Mr") %> value="Mr">Mr</option>
			</select>
			</div>
			<div class="cols"><input type="text" name="father_first_name" id="father_first_name" minlength="2" <%= savedName(p.getFather_name(),1,"First Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="father_middle_name" id="father_middle_name" <%= savedName(p.getFather_name(),2,"Middle Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="father_last_name" id="father_last_name" minlength="2" <%= savedName(p.getFather_name(),3,"Last Name")%> size="20" autocomplete="off"></div>
			<br>
		 	
		 	<p style="text-align:justify"> 
			<b> Mother Name</b>
        	<div class="cols" id="a"><br/>
			<select name="mname_title" id="mname_title" style="padding:0px;height:48px;" >
          		<option name="mname_title" value="" disabled selected><a style="color: #cccccc;">Title</a></option>
				<option value="Ms" <%= selectedTitle(p.getMother_name(),"Ms") %>>Ms</option>
				<option value="Mrs" <%= selectedTitle(p.getMother_name(),"Mrs") %>>Mrs</option>
			</select>
			</div>
			<div class="cols"><input type="text" name="mother_first_name" id="mother_first_name" minlength="2" <%= savedName(p.getMother_name(),1,"First Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="mother_middle_name" id="mother_middle_name" <%= savedName(p.getMother_name(),2,"Middle Name")%> size="20" autocomplete="off"></div>
			<div class="cols"><input type="text" name="mother_last_name" id="mother_last_name" minlength="2" <%= savedName(p.getMother_name(),3,"Last Name")%> size="20" autocomplete="off"></div>
		
			<table style="transform:translate(0px,-90px);">
				<tr>
					<td>
					<p style="text-align:justify"> 
					<b>Date Of Birth</b>
					</td>
					<td>
					<div class="cols2"><input type="date" name="date_of_birth" id="date_of_birth" <%= savedTextData(p.getDate_of_birth(), "DOB") %> min="1900-01-01" max="2005-12-31" style="width:200px;margin-left:100px;" ></div> </td>
					<br>
				</tr>
				<tr>
					<td>
					<p style="text-align:justify"> 
					<b>Nationality</b></td>
					<td><div class="cols2"><input type="text" name="nationality" id="nationality" <%= savedTextData(p.getNationality(), "Nationality") %> style="padding:15px;width:200px;margin-left:100px;" size="30" autocomplete="off"></div></td>
					<br>
				</tr>	
				<tr style="transform: translateY(21px)">
					<td><p style="text-align:justify">  
					<b>Gender</b></p></td>	
		 			<td>
		 			<div class="colsr"> 
					<select name="gender" id="gender" style="padding:15px;width:200px;margin-left:100px;" >
						<option id="gender" value="" disabled selected><a style="color: #cccccc;">Gender</a></option>	
						<option value="Male" <%= savedDropDownData(p.getGender(),"Male") %> >Male</option>
						<option value="Female" <%= savedDropDownData(p.getGender(),"Female") %> >Female</option>
						<option value="Other" <%= savedDropDownData(p.getGender(),"Other") %> >Other</option>
					</select>
		  			</td>	
		 			<br>
				</tr>
				<tr style="transform: translateY(21px)">
					<td><p style="text-align:justify"> 
					<b>Mobile Number</b></td>
					<td><div class="cols2"><input type="text" name="mobile" id="mobile" <%= savedTextData(p.getMobile(), "10-digit Number") %> maxlength="10" style="padding:15px;width:200px;margin-left:100px;" size="10" autocomplete="off"></div></td>
					</td>
				</tr>
				<tr style="transform: translateY(21px)">
					<td><p style="text-align:justify"> 
					<b>Email Address</b></td>
					<td><div class="cols2"><input type="email" name="email" id="email" <%= savedTextData(p.getEmail(), "abcd@xyz.com") %> style="padding:15px;width:300px;margin-left:100px;" autocomplete="off"></div></td>
					</td>
				</tr>
				<tr style="transform: translateY(40px)">
					<td>
					<p style="text-align:justify"> 
					<b>Marital Status</b></td>
					<td>
					<div class="cols3" style="width:200px;margin-left:100px;">
					<select name="marital_status" id="marital_status" >
           				<option id="marital_status" value="" disabled selected><a style="color: #cccccc;">Marital Status</a></option>	
						<option value="married" <%= savedDropDownData(p.getMarital_status(),"married") %>>Married</option>
						<option value="single" <%= savedDropDownData(p.getMarital_status(),"single") %>>Single</option>
						</select></div>
					</td>
					<br>
				</tr>
				<tr style="transform: translateY(60px)">
					<td> <p style="text-align:justify"> 
					<b>Applicant Type</b></td>	
					<td><div class="cols3" style="width:300px;margin-left:100px;">
					<select name="applicant_type" id="applicant_type" onchange="yesnoCheck()">
            			<option id="applicant_type" value="" disabled selected><a style="color: #cccccc;">Applicant type</a></option>
			  			<option value="Self-employed/Business Owner" <%= savedDropDownData(p.getApplicant_type(), "Self-employed/Business Owner") %>>Self-employed/Business Owner</option>
			   			<option value="Employee" id="yesCheck" <%= savedDropDownData(p.getApplicant_type(), "Employee") %>>Employee</option>
			  			<option value="Unemployed" <%= savedDropDownData(p.getApplicant_type(), "Unemployed") %>>Unemployed</option>
			  			<option value="Retired" <%= savedDropDownData(p.getApplicant_type(), "Retired") %>>Retired</option>
			  			<option value="Student" <%= savedDropDownData(p.getApplicant_type(), "Student") %>>Student</option>
			  			<option value="Homemaker" <%= savedDropDownData(p.getApplicant_type(), "Homemaker") %>>Homemaker</option>
					</select>
					</div>
					</td>
					<br>
				</tr>
				<tr style="transform: translateY(70px)">
					<td><p style="text-align:justify"> 
					<b>Occupation</b></td>
					<td><div class="cols2" style="margin-left:100px;width:300px;">
					<select name="occupation" id="occupation" onclick="selectap()">
           				<option id="a" value="" disabled selected><a style="color: #cccccc;">Occupation</a></option>	
						<option value="Engineering/Architect" <%= savedDropDownData(p.getOccupation(),"Engineering/Architect") %>>Engineering/Architect</option>
						<option value="Industrialist" <%= savedDropDownData(p.getOccupation(),"Industrialist") %>>Industrialist</option>
						<option value="Journalists" <%= savedDropDownData(p.getOccupation(),"Journalists") %>>Journalists</option>
						<option value="Legal Profession" <%= savedDropDownData(p.getOccupation(),"Legal Profession") %>>Legal Profession</option>
						<option value="Medical Profession" <%= savedDropDownData(p.getOccupation(),"Medical Profession") %>>Medical Profession</option>
						<option value="Central Govt. Services" <%= savedDropDownData(p.getOccupation(),"Central Govt. Services") %>>Central Govt. Services</option>
						<option value="State Govt. Services" <%= savedDropDownData(p.getOccupation(),"State Govt. Services") %>>State Govt. Services</option>
						<option value="Business In Service Sector" <%= savedDropDownData(p.getOccupation(),"Business In Service Sector") %>>Business In Service Sector</option>
						<option value="Business In Trade Sector" <%= savedDropDownData(p.getOccupation(),"Business In Trade Sector") %>>Business In Trade Sector</option>
						<option value="CA/ICWA/Taxation/Finance" <%= savedDropDownData(p.getOccupation(),"CA/ICWA/Taxation/Finance") %>>CA/ICWA/Taxation/Finance</option>
						<option value="Capital Market Marker" <%= savedDropDownData(p.getOccupation(),"Capital Market Marker") %>>Capital Market Marker</option>
						<option value="Others" <%= savedDropDownData(p.getOccupation(),"Others") %>>Others</option>
					</select>
					</td>
				</tr>
				<tr style="transform: translateY(75px)">
					<td><p style="text-align:justify"> 
					<b>Highest Qualification</b></td>
					<td><div class="cols2">
					<select name="highest_qual" id="highest_qual" style="padding:15px;width:300px;margin-left:100px;">
            			<option id="highest_qual" value="" disabled selected><a style="color: #cccccc;">Highest Qualification</a></option>
						<option value="Non-Matric" <%= savedDropDownData(p.getHighest_qual(), "Non-Matric") %>>Non-Matric</option>
						<option value="SSC" <%= savedDropDownData(p.getHighest_qual(), "SSC") %>>SSC</option>
						<option value="Graduate" <%= savedDropDownData(p.getHighest_qual(), "Graduate") %>>Graduate</option>
						<option value="Postgraduate & Above" <%= savedDropDownData(p.getHighest_qual(), "Postgraduate & Above") %>>Postgraduate & Above</option>
					</select></div>
					</td>
				</tr>
				<tr style="transform: translateY(59px)">
					<td><p style="text-align:justify"> 
					<b>Identification Mark</b></td>
					<td><div class="cols2"><input type="text" name="identification_mark" id="identification_mark" <%= savedTextData(p.getIdentification_mark(), "Identification Mark") %> style="padding:15px;width:300px;margin-left:100px;" autocomplete="off"></div></td>
					</td>
				</tr>
				<tr style="transform: translateY(57px)">
					<td><p style="text-align:justify"> 
					<b>Annual Income</b></td>
					<td><div class="cols2"><input type="text" name="annual_income" id="annual_income" <%= savedTextData(p.getAnnual_income(), "Annual Income") %> style="padding:15px;width:300px;margin-left:100px;" autocomplete="off"></div></td>
					</td>
				</tr>
				<tr style="transform: translateY(73px)">
					<td> <p style="text-align:justify"> 
					<b>Residential Type</b></td>
					<td><div class="cols3" style="width:200px;margin-left:100px;">
					<select name="residential_status" id="residential_status" >
            			<option id="residential_status" value="" disabled selected><a style="color: #cccccc;">Residential status</a></option>	
						<option <%= savedDropDownData(p.getResidential_status(),"Resident Individual") %> value="Resident Individual">Resident Individual</option>
						<option <%= savedDropDownData(p.getResidential_status(),"Non-Resident Indian") %> value="Non-Resident Indian">Temporary</option>
						<option <%= savedDropDownData(p.getResidential_status(),"Foreign National") %> value="Foreign National">Foreign National</option>
						<option <%= savedDropDownData(p.getResidential_status(),"Person Of Indian Origin") %> value="Person Of Indian Origin">Person Of Indian Origin</option>
					</select></div>
					</td>
					<br>
				</tr>
				<tr style="transform: translateY(85px)">
					<td>
					<p style="text-align:justify"> 
					<b>Permanent Address</b></td>
					<td>
					<div class="cols" style="padding:0px;width:150px;margin-left:100px;">
					<input type="text" name="per_flat" <%= savedAddress(p.getPermanent_address(), 0, "Flat No/Street") %> id="per_flat" autocomplete="off"/></div>
					<div class="cols">
					<input type="text" name="per_locality" <%= savedAddress(p.getPermanent_address(), 1, "Area") %> id="per_locality" autocomplete="off"></div>
					<div class="cols">
	    			<input type="text" name="per_city" <%= savedAddress(p.getPermanent_address(), 2, "City") %> id="per_city" autocomplete="off"/></div>
					</td>
				</tr>
				<tr style="transform: translateY(70px)">
					<td></td>
					<td>		
						<div class="cols" style="padding:0px;width:150px;margin-left:100px;">
						<input type="text" name="per_pincode" <%= savedAddress(p.getPermanent_address(),3,"Pincode") %> id="per_pincode" autocomplete="off"></div>
						<div class="cols">
						<input type="text" name="per_state" <%= savedAddress(p.getPermanent_address(),4,"State") %> id="per_state" autocomplete="off"></div>
						<div class="cols">
	   					<input type="text" name="per_country" <%= savedAddress(p.getPermanent_address(),5,"Country") %> id="per_country" autocomplete="off"/></div>
	   				</td>
	   			</tr>
				<tr style="transform: translateY(80px)">
					<td><p style="text-align:justify"> 
					<b>Current Address same as <br/>that of Permanent Address</b></td>
					<td>
	   				<div class="colsr"><input type="radio" name="same_add" value="Yes" <%= savedCheckedBox(p.getSame_add(), "Yes") %> style="margin-left:50px;vertical-align: baseline;" onclick="showCur();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yes</div>&nbsp;
        			<div class="colsr"><input type="radio" name="same_add" value="No" <%= savedCheckedBox(p.getSame_add(), "No") %> style="margin-left:70px;vertical-align: baseline;" onclick="showCur1();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No</div>
					</td>
				</tr>
			</table>
		
			<div id="d" style="visibility: hidden;" >		
				<table>
				<tr>
					<td>
					<p style="text-align:justify;"> 
					<b>Current Address</b></td>
					<td>
					<div class="cols" style="padding:0px;width:150px;margin-left:100px;">
					<input type="text" name="cur_flat" <%= savedAddress(p.getCurrent_address(),0,"Flat No/Street") %> id="cur_flat" autocomplete="off"/></div>
					<div class="cols">
					<input type="text" name="cur_locality" <%= savedAddress(p.getCurrent_address(),1,"Area") %> id="cur_locality" autocomplete="off"></div>
					<div class="cols">
	    			<input type="text" name="cur_city" <%= savedAddress(p.getCurrent_address(),2,"City") %> id="cur_city" autocomplete="off"/></div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>		
						<div class="cols" style="padding:0px;width:150px;margin-left:100px;">
						<input type="text" name="cur_pincode" <%= savedAddress(p.getCurrent_address(),3,"Pincode") %> id="cur_pincode" autocomplete="off"></div>
						<div class="cols">
						<input type="text" name="cur_state" <%= savedAddress(p.getCurrent_address(),4,"State") %> id="cur_state" autocomplete="off"></div>
						<div class="cols">
	   					<input type="text" name="cur_country" <%= savedAddress(p.getCurrent_address(),5,"Country") %> id="cur_country" autocomplete="off"/></div>
	   				</td>
	   			</tr>
	   			</table>
	   		</div>
			<br/><br/>
			<button type="submit" class="next action-button" name="save" value="Save" formaction="save_personal_details"> <i class="far fa-save"></i>&nbsp;Save</button>
			<button type="submit" class="next action-button" name="home" value="Home" formaction="backToHome"> <i class="fas fa-home"></i>&nbsp;Home</button>
			<button type="submit" class="next action-button" name="savenext" value="SaveAndNext" style="width: 131px;" formaction="insert_personal_details" onclick="return validation()">Save & Next &nbsp;<i class="fas fa-forward"></i></button>
		</fieldset>
		</form>
		
		<div id="popup1" class="overlay" >
    		<div class="popup" style="transform: translateX(317px);height: 150px;">
				<h2 >Welcome!</h2><hr>
        		<a class="close" href="#">&times;</a>
        		<p align="center" style="font-family: sans-serif;margin-top: 20px;">
            		Thank you for choosing Standard Chartered. In this page, You are required to fill up all the necessary details to open an account with us.
					Please fill the form carefully in order to avoid any errors.
        		</p>
    		</div>
		</div>
	
	<!-- jQuery -->
	<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<!-- jQuery easing plugin -->
	<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
	
	<script>

  		function selectap(){
        	var applicant_type = document.getElementById("applicant_type").value;
        	if(applicant_type==""){
            	document.getElementById("occupation").disabled=true;
            	document.body.scrollTop = 0;
            	document.documentElement.scrollTop = 0; 
            	document.getElementById("username").innerHTML = "Please select applicant type";
            	return false;
        	}
    	}

		function yesnoCheck(){  
     		var applicant_type = document.getElementById("applicant_type").value;
     		if(applicant_type=="Employee") {
     			document.getElementById("occupation").disabled=false;
     			if(occupation==""){
    				//   alert("Name must be in alphabets only");
    				document.body.scrollTop = 0;
        			document.documentElement.scrollTop = 0;
      				document.getElementById('username').innerHTML ="Occupation Field cannot be left empty";
      				return false;
     			}
     		}
     		else{
         		document.getElementById("occupation").disabled=true;
         		document.getElementById("occupation").selectedIndex="0";
     		}
		}
		function Title(){
			var name_title = document.getElementById("name_title").value;
			if(name_title=="Mr"){
				document.getElementById("gender").options["1"].disabled=false;
				document.getElementById("gender").selectedIndex="1";
				document.getElementById("gender").options["2"].disabled=true;
			}
			if(name_title=="Ms"||name_title=="Mrs"){
				document.getElementById("gender").options["2"].disabled=false;
				document.getElementById("gender").selectedIndex="2";
				document.getElementById("gender").options["1"].disabled=true;
			}
		}
		
		function validation(){	
			var name_title = document.getElementById("name_title").selectedIndex;
			var first_name =document.getElementById('first_name').value;
			var last_name = document.getElementById('last_name').value;
			var fname_title = document.getElementById("fname_title").selectedIndex;
			var father_first_name = document.getElementById('father_first_name').value;
			var father_last_name = document.getElementById('father_last_name').value;
			var mname_title = document.getElementById("mname_title").selectedIndex;
			var mother_first_name = document.getElementById('mother_first_name').value;
			var mother_last_name = document.getElementById('mother_last_name').value;
			var date_of_birth = document.getElementById('date_of_birth').value;
			var nationality = document.getElementById('nationality').value;
			var gender = document.getElementById("gender").selectedIndex;
			var mobile = document.getElementById('mobile').value;
			var email = document.getElementById('email').value;
			var marital_status = document.getElementById("marital_status").selectedIndex;
			var occupation = document.getElementById('occupation').value;
			var highest_qual = document.getElementById("highest_qual").selectedIndex;
			var identification_mark = document.getElementById('identification_mark').value;
			var annual_income = document.getElementById('annual_income').value;
			var residential_status = document.getElementById("residential_status").selectedIndex;
			var applicant_type = document.getElementById("applicant_type").selectedIndex;
			var per_flat = document.getElementById('per_flat').value;
			var per_locality = document.getElementById('per_locality').value;
			var per_city = document.getElementById('per_city').value;
			var per_pincode = document.getElementById('per_pincode').value;
			var per_state = document.getElementById('per_state').value;
			var per_country = document.getElementById('per_country').value;
			var cur_flat = document.getElementById('cur_flat').value;
			var cur_locality = document.getElementById('cur_locality').value;
			var cur_city = document.getElementById('cur_city').value;
			var cur_pincode = document.getElementById('cur_pincode').value;
			var cur_state = document.getElementById('cur_state').value;
			var cur_country = document.getElementById('cur_country').value;
			var regex =/^[a-zA-Z]+$/;
			var regex1 = /^[0-9]+$/;
			var regex2 = /^[789]\d{9}$/;
			var regex3 = /^[0-9]\d{5}$/;
			
			if(name_title == 0){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;		
				document.getElementById("username").innerHTML = "Please select a name title";
	 			return false;
			}

			if(first_name==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="First Name Field cannot be left empty";
   				return false;  
			}
			
			if(regex.test(first_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="First Name must be in alphabets only";
		 		return false;
			}

			if(last_name==""){
				//   alert("Name must be in alphabets only");
 	 			document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
 	 			document.getElementById('username').innerHTML ="Last Name Field cannot be left empty";
   				return false;   
			}

			if(regex.test(last_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Last Name must be in alphabets only";
	 			return false;
			}

			if(fname_title == 0){		
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById("username").innerHTML = "Please select a father name title";
	 			return false;
			}

			if(father_first_name==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Father First Name Field cannot be left empty";
   				return false;
			}

			if(regex.test(father_first_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Father First Name must be in alphabets only";
	 			return false;
			}

			if(father_last_name==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Father Last Name Field cannot be left empty";
  	 			return false;
			}
			
			if(regex.test(father_last_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Father Last Name must be in alphabets only";
	 			return false;
			}

			if(mname_title == 0){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;		
				document.getElementById("username").innerHTML = "Please select a mother name title";
	 			return false;
			}

			if(mother_first_name==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Mother First Name Field cannot be left empty";
   				return false;
			}

			if(regex.test(mother_first_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Mother First Name must be in alphabets only";
	 			return false;
			}

			if(mother_last_name==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Mother Last Name Field cannot be left empty";
   				return false; 
			}

			if(regex.test(mother_last_name) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Mother Last Name must be in alphabets only";
	 			return false;
			}

			if(date_of_birth==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Date Of Birth Field cannot be left empty";
   				return false;
			}

			if(nationality==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Nationality Field cannot be left empty";
   				return false; 
			}
			
			if(regex.test(nationality) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Nationality must be in alphabets only";
	 			return false;
			}

			if(gender == 0){		
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById("username").innerHTML = "Please select a gender";
	 			return false;
			}

			if(mobile==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Mobile Field cannot be left empty";
   				return false; 
			}

			if(regex1.test(mobile) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Mobile must be 10 digit number only";
				return false;
			}

			if(email==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Email Field cannot be left empty";
   				return false; 
			}

			if(marital_status == 0){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;		
				document.getElementById("username").innerHTML = "Please select a Marital Status";
	 			return false;
	 		}

			if(applicant_type == 0){		
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById("username").innerHTML = "Please select Applicant Type";
	 			return false;
			}

			if(highest_qual == 0){		
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById("username").innerHTML = "Please select your Highest Qualification";
	 			return false;
			}

			if(identification_mark==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Identification Mark Field cannot be left empty";
   				return false; 
			}
			
			if(annual_income==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Annual Income Field cannot be left empty";
   				return false; 
			}


			if(regex1.test(annual_income) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Annual Income field must be in numbers only";
	 			return false;
			}

			if(residential_status == 0){		
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById("username").innerHTML = "Please select your Residential Status";
	 			return false;
			}

			if(per_flat==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Flat No. Field cannot be left empty";
   				return false; 
			}

			if(per_locality==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Locality Field cannot be left empty";
   				return false; 
			}

			if(per_city==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="City Field cannot be left empty";
   				return false; 
			}

			if(regex.test(per_city) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="City field must be in alphabets only";
	 			return false;
			}

			if(per_pincode==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Pincode Field cannot be left empty";
   				return false; 
			}

			if(regex3.test(per_pincode) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Pincode must be 6 digit number";
	 			return false;
			}

			if(per_state==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="State Field cannot be left empty";
   				return false; 
			}

			if(regex.test(per_state) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="State field must be in alphabets only";
	 			return false;
			}

			if(per_country==""){
				//   alert("Name must be in alphabets only");
  				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
  				document.getElementById('username').innerHTML ="Country Field cannot be left empty";
   				return false; 
			}

			if(regex.test(per_country) == false){
				document.body.scrollTop = 0;
			    document.documentElement.scrollTop = 0;
				document.getElementById('username').innerHTML ="Country field must be in alphabets only";
	 			return false;
			}

			if(document.getElementById("d").style.visibility=='visible'){
				if(cur_flat==""){
				//   alert("Name must be in alphabets only");
  					document.body.scrollTop = 0;
    				document.documentElement.scrollTop = 0;
  					document.getElementById('username').innerHTML ="Current Flat No. Field cannot be left empty";
   					return false; 
				}

				if(cur_locality==""){
					//   alert("Name must be in alphabets only");
			 	 	document.body.scrollTop = 0;
    				document.documentElement.scrollTop = 0;
			 	 	document.getElementById('username').innerHTML ="Current Locality Field cannot be left empty";
   					return false; 
				}

				if(cur_city==""){
					//   alert("Name must be in alphabets only");
  					document.body.scrollTop = 0;
    				document.documentElement.scrollTop = 0;
  					document.getElementById('username').innerHTML ="Current City Field cannot be left empty";
   					return false; 
				}

				if(regex.test(cur_city) == false){
					document.body.scrollTop = 0;
				    document.documentElement.scrollTop = 0;
					document.getElementById('username').innerHTML ="Current City field must be in alphabets only";
	 				return false;
				}

				if(cur_pincode==""){
					//   alert("Name must be in alphabets only");
	  				document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
	  				document.getElementById('username').innerHTML ="Pincode Field cannot be left empty";
	   				return false; 
				}

				if(regex3.test(cur_pincode) == false){
					document.body.scrollTop = 0;
				    document.documentElement.scrollTop = 0;
					document.getElementById('username').innerHTML ="Pincode must be 6 digit number";
		 			return false;
				}

				if(cur_state==""){
					//   alert("Name must be in alphabets only");
  					document.body.scrollTop = 0;
    				document.documentElement.scrollTop = 0;
  					document.getElementById('username').innerHTML ="Current State Field cannot be left empty";
   					return false; 
				}

				if(regex.test(cur_state) == false){
					document.body.scrollTop = 0;
				    document.documentElement.scrollTop = 0;
					document.getElementById('username').innerHTML ="Current State field must be in alphabets only";
	 				return false;
				}

				if(cur_country==""){
					//   alert("Name must be in alphabets only");
  					document.body.scrollTop = 0;
    				document.documentElement.scrollTop = 0;
  					document.getElementById('username').innerHTML ="Current Country Field cannot be left empty";
   					return false; 
				}

				if(regex.test(cur_country) == false){
					document.body.scrollTop = 0;
				    document.documentElement.scrollTop = 0;
					document.getElementById('username').innerHTML ="Current Country field must be in alphabets only";
	 				return false;
				}
			}
		}

		function showCur1(){
			document.getElementById("d").style.visibility='visible';
		}
		function showCur(){
			document.getElementById("d").style.visibility='hidden';
		}
	</script>

	<footer id="footer" style="transform: translateY(1900px);height:60px;">
		<div class="inner">
			<p style="font-size:larger;" class="copyright">&copy; Standard Chartered Bank 2018. All rights reserved. <!-- <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>. --></p>
		</div>
	</footer>
	
	</body>
</html>
