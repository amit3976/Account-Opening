<html style="height: 194%;">
	<head>
		<title>Account Details</title>
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/AccountFormResources/anothersample.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="resources/AccountFormResources/help.css">
	</head>
	<body>
	
	<%@ include file= "ModelAccountDetails.jsp" %>
	
		<header id="head" style="background: white;height: 70px;">
       		<img src="resources/images/l2.png" style="width:160px; height: 60px;padding: 0px;float:left;transform: translate(10px,6px);"></img><br>
      		<p>
      			<a  href="#popup1"  onclick="document.getElementById("f1").visibility='hidden'"><i style="width:70px; height: 70px;padding: 0px;float:right;transform: translateX(-80px);" class="far fa-question-circle fa-2x"></i></a>
  			</p>
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
				<li class="active">Account Details Form</li>
				<li>KYC Documents Upload</li>
				<li>Completion</li>
			</ul>
		${result }
		<fieldset>
			<h2 class="fs-title">Account Details Form</h2>
				
			<br>
			<span id="username" style="color: red;" class="alert alert-danger alert-dismissable">${error }</span>
			<br>
			<table cellspacing="15">
				<tr>
					<td>
						<b>Account Type</b>
					</td>
					<div class="proofs">
					<td> 
						<select name="account_type" id="account_type">
            				<option id="account_type" value="" disabled selected><a style="color: #cccccc;">Select your option</a></option>
							<option <%= savedDropDown(a.getAccount_type(), "Savings") %> value="Savings">Savings</option>
							<option <%= savedDropDown(a.getAccount_type(), "Current") %> value="Current">Current</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<b>Account For</b>
					</td>
					<td>
						<select name="account_for" id="account_for">
							<option id="account_for" value="" disabled selected><a style="color: #cccccc;">Select your option</a></option>
							<option <%= savedDropDown(a.getAccount_for(), "Individual") %> value="Individual">Individual</option>
							<option <%= savedDropDown(a.getAccount_for(), "Joint") %> value="Joint">Joint</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b>Aadhar Number</b></td>
					<td>
						<input type="text" class="proofs" name="aadhar_num" id="aadhar_num" maxlength="12" <%= savedTextData(a.getAadhar_num(),"12-digit Aadhar") %> autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td><b>Pan Number</b></td>
					<td>
						<input type="text" class="proofs" name="pan_num" id="pan_num" maxlength="10" <%= savedTextData(a.getPan_num(),"For Ex - ABCDE1234F") %> autocomplete="off"/>
					</td>
				</tr>
				
				<tr>
					<td><b>State</b></td>
					<td>
  						<select id="state" size="1" onclick="fillstate()" style="width: 170px;">
        					<option value="" selected="selected">-- Select State --</option>
    					</select>
    					&nbsp;&nbsp;&nbsp;<input type="text" style="width: 200px;" name="state" id="statebox" <%= savedTextData(a.getState(),"State") %> readonly="readonly"> 
					</td>
				</tr>
				<tr>
					<td><b>City</b></td>
					<td>
    					<select id="city" size="1" onclick="fillcity()" style="width: 170px;">
        					<option value="" selected="selected">-- Select City--</option>
    					</select>
    					&nbsp;&nbsp;&nbsp;<input type="text" style="width: 200px;" name="city" id="citybox" <%= savedTextData(a.getCity(),"City") %> readonly="readonly">
					</td>
				</tr>
				<tr>
					<td><b>Branch</b></td>
					<td>  
    					<select id="branch" size="1" onclick="fillbranch()" style="width: 170px;">
        					<option value="" selected="selected">-- Select Branch--</option>
   	 					</select>
   	 					&nbsp;&nbsp;&nbsp;<input type="text" style="width: 200px;" name="branch" id="branchbox" <%= savedTextData(a.getBranch(),"Branch") %> readonly="readonly">
					</td>
				</tr>
			</table>
			<br/><br/>
			<button type="submit" name="previous" class="previous action-button" value="Previous" formaction="restore_personal_details"> <i class="fas fa-backward"></i>&nbsp;Previous</button>
			<button type="submit" name="save" class="next action-button" value="Save" formaction="save_account_details"> <i class="far fa-save"></i>&nbsp;Save</button>
			<button type="submit" class="next action-button" name="home" value="Home" formaction="backToHome"> <i class="fas fa-home"></i>&nbsp;Home</button>
			<button type="submit" name="savenext" class="next action-button" style="width: 131px;" value="Save and Next" formaction="insert_account_details" onclick="return validation1()">Save & Next &nbsp;<i class="fas fa-forward"></i></button>
		</fieldset>
		</form>
		
		<div id="popup1" class="overlay" >
    		<div class="popup" style="transform: translateX(317px);height: 150px;">
			<h2 >Welcome!</h2><hr>
        		<a class="close" href="#">&times;</a>
        		<p align="center" style="font-family: sans-serif;margin-top: 20px;">
            		Please choose the preferred option for account type. 
					Kindly fill in the right Aadhar and PAN details. Any incorrect details filled would result in your application getting rejected. 
        		</p>
    		</div>
		</div>
		<script type="text/javascript">
			var countryStateInfo = {
				"Karnataka": {
					"Bangalore": ["Residency Road","M G Road","Cunningham Road"],
					"Mysore": ["Mysore palace","Urban Estate"]
				},
				"Tamil Nadu": {
					"Chennai": ["Anna Salai","Adyar","Haddows Road","Rajaji Salai","Rrt Mylapore"],
					"Coimbatore": ["Coimbator"]
				},
				"Haryana": {
					"Gurgaon" : ["Gurgaon","Sector 14"]
				},
				"West Bengal": {
					"Kolkata": ["Gariahat",	"Salt Lake","R.B Avenue","New Alipore","Church Lane" ],
					"Howrah": ["Howrah"]
				},
				"Maharashtra": {
					"Mumbai": ["Bandra","Andheri","Chembur" ],
					"Pune": ["Sasun Road","Pune"]
				}
			}
			
			window.onload = function(){
			//Get html elements
				var countySel = document.getElementById("state");
				var stateSel = document.getElementById("city");	
				var citySel = document.getElementById("branch");
				// var zipSel = document.getElementById("zipSel");
	
				//Load countries
				for (var country in countryStateInfo) {
					countySel.options[countySel.options.length] = new Option(country, country);
				}	
	
				//County Changed
				countySel.onchange = function () {
		 
		 			stateSel.length = 1; // remove all options bar first
		 			citySel.length = 1; // remove all options bar first
					//  zipSel.length = 1; // remove all options bar first
		 
	 				if(this.selectedIndex < 1)
		 				return; // done
		 					 
		 			for (var state in countryStateInfo[this.value]) {
			 			stateSel.options[stateSel.options.length] = new Option(state, state);
					}
				}
	
				//State Changed
				stateSel.onchange = function () {		 
		 
		 			citySel.length = 1; // remove all options bar first
					//  zipSel.length = 1; // remove all options bar first
		 
		 			if (this.selectedIndex < 1)
			 			return; // done
		 
					//  for (var city in countryStateInfo[countySel.value][this.value]) {
					// 	 citySel.options[citySel.options.length] = new Option(city, city);
					//  }

					var city = countryStateInfo[countySel.value][this.value];
					for (var i = 0; i < city.length; i++) {
						citySel.options[citySel.options.length] = new Option(city[i], city[i]);
					}
				}		
			}

			function fillstate() {
				var s = document.getElementById("state").value;
				document.getElementById("statebox").setAttribute("value",s);
			}

			function fillcity() {
				var c = document.getElementById("city").value;
				document.getElementById("citybox").setAttribute("value", c);
			}

			function fillbranch() {
				var b = document.getElementById("branch").value;
				document.getElementById("branchbox").setAttribute("value", b);
			}

			function validation1(){
			    var account_type = document.getElementById("account_type").selectedIndex;
			    var account_for = document.getElementById("account_for").selectedIndex;
			    var aadhar_num = document.getElementById('aadhar_num').value;
			    var pan_num = document.getElementById('pan_num').value;
			    var state = document.getElementById("statebox").value;
			    var city = document.getElementById("citybox").value;
			    var branch = document.getElementById("branchbox").value;
			    var regex1 =/^[0-9]+$/;
			    var regex =/^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;

			    if(account_type == 0){
			    	document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;      
			    	document.getElementById("username").innerHTML = "Please select a Account Type";
			     	return false;
				}
			    if(account_for == 0){
			    	document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById("username").innerHTML = "Please select Account For Field";
			     	return false;
				}

				if(aadhar_num==""){
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('username').innerHTML ="Adhar Number Field cannot be left empty";
			   		return false;
				}

				if(regex1.test(aadhar_num) == false){
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById('username').innerHTML ="Aadhar number must be in numbers only";
			     	return false;
				}

				if(aadhar_num.length!=12){
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById('username').innerHTML ="Give valid Aadhar Number";
			     	return false;
				}

				if(pan_num==""){
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
				    //   alert("Name must be in alphabets only");
			 	 	document.getElementById('username').innerHTML ="Enter Pan Number";
			   		return false; 
				}

				if(regex.test(pan_num) == false){
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById('username').innerHTML ="Give a valid pan number";
			     	return false;
				}

				if(state == 0){     
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById("username").innerHTML = "Please select state";
			     	return false;
				}

			    if(city == 0){      
			    	document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById("username").innerHTML = "Please select a city";
			     	return false;
				}
				
				if(branch == 0){        
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	document.getElementById("username").innerHTML = "Please select a bank branch";
			     	return false;
				}
			}
		</script>

		<footer id="footer" style="transform: translateY(900px);height:50px;">
			<div class="inner">
            	<p style="font-size:larger;" class="copyright">&copy; Standard Chartered Bank 2018. All rights reserved. <!-- <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>. --></p>
			</div>
	    </footer>
	
		<!-- jQuery -->
		<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<!-- jQuery easing plugin -->
		<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
	</body>
</html>


