<html style="height: 205%">
	<head>
		<title>Kyc Details</title>
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/AccountFormResources/anothersample.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<link rel="stylesheet" href="resources/AccountFormResources/help.css">
	</head>
	<body>
	
	<%@ include file= "ModelKycDetails.jsp" %>
		
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
		<form id="msform" method="post" enctype="multipart/form-data">
			<!-- progressbar -->
			<ul id="progressbar">
				<li class="active">Personal Details Form</li>
				<li class="active">Account Details Form</li>
				<li class="active">KYC Documents Upload</li>
				<li>Completion</li>
			</ul>
			${result }
			<fieldset>
				<h2 class="fs-title">Kyc documents Upload</h2>
				<br>
				<span id="error" style="color: red;" class="alert alert-danger alert-dismissable"> </span>
				<br>
				<table cellspacing="25" align="center" style="margin-left: 124px;">
					<tr align="center">
						<td align="center" width="40%"  height="50%">
							<b>Address Proof</b><br>	
  							<input type="file" name="uploads" accept="image/jpg,image/jpeg" size="250">
        				</td>
        				<td style="padding-bottom:10px;" width="60%" height="50%" >
        					<div class="divstyle"> <%= imagePreview(k.getAddress_proof())%></div>
        				</td>
        			</tr>	
					<tr align="center">
						<td align="center" >
							<b> Upload Pan Card</b><br>
  							<input type="file" name="uploads" accept="image/jpg,image/jpeg" >
						</td>
						<td style="padding-bottom:10px;">
        					<div class="divstyle"> <%= imagePreview(k.getPan_card())%></div>
        				</td>
					</tr>	
					<tr align="center">
						<td align="center" >
							<b>Upload Aadhar Card</b><br>
  							<input type="file" name="uploads" accept="image/jpg,image/jpeg" >
						</td>
						<td style="padding-bottom:10px;">
        					<div class="divstyle"> <%= imagePreview(k.getAadhar_card())%></div>
        				</td>
					</tr>	
					<tr align="center">
						<td align="center" >
							<b>Photograph</b><br>
  							<input type="file" name="uploads" accept="image/jpg,image/jpeg" >
						</td>
						<td style="padding-bottom:10px;">
        					<div class="divstyle"> <%= imagePreview(k.getPhotograph())%></div>
        				</td>
					</tr>
					<tr align="center">
						<td align="center" >
							<b>Signature</b><br>
  							<input type="file" id="pic" name="uploads" accept="image/jpg,image/jpeg" >
						</td>
						<td style="padding-bottom:10px;">
        					<div class="divstyle"> <%= imagePreview(k.getSignature())%></div>
        				</td>
					</tr>
				</table>
				<input type="hidden" id="proof1" value="<%= k.getAddress_proof() %>">
				<input type="hidden" id="proof2" value="<%= k.getPan_card() %>">
				<input type="hidden" id="proof3" value="<%= k.getAadhar_card() %>">
				<input type="hidden" id="proof4" value="<%= k.getPhotograph() %>">
				<input type="hidden" id="proof5" value="<%= k.getSignature() %>">
				<br/><br/>
				<a href="restore_account_details" class="previous action-button" style="font-size: 12px;" ><i class="fas fa-backward"></i>&nbsp;Previous</a>
				<button type="submit" name="save" class="next action-button" value="Save" formaction="save_kyc_details"><i class="far fa-save"></i>&nbsp;Save</button>
				<button type="submit" name="home" class="next action-button" value="Home" formaction="backToHome"><i class="fas fa-home"></i>&nbsp;Home</button>
				<button type="submit" name="savenext" class="next action-button" value="Next" formaction="insert_kyc_details" style="width: 131px;" onclick="return validate()">Save & Next &nbsp;<i class="fas fa-forward"></i></button>
			</fieldset>
		</form>
			
		<div id="popup1" class="overlay" >
    		<div class="popup" style="transform: translateX(317px);height: 150px;">
				<h2 >Welcome!</h2><hr>
        		<a class="close" href="#">&times;</a>
        		<p align="center" style="font-family: sans-serif;margin-top: 20px;">
        			Please upload photos in jpeg/jpg format only.
            		Please make sure to upload documents which are clear and visible. For Aadhar card, it is imperative that both the front and back side are uploaded clearly. 
					Same goes for PAN card. 
					Only the mentioned fields are considered as valid address proofs! 
        		</p>
    		</div>
		</div>
		
		<!-- <footer id="footer" style="transform: translateY(1030px);height:40px;">
			<div class="inner">
            	<p style="font-size:larger;" class="copyright">&copy; Standard Chartered Bank 2018. All rights reserved. <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>.</p>
			</div>
	    </footer> -->
	
		<!-- jQuery -->
		<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<!-- jQuery easing plugin -->
		<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
		
		<script type="text/javascript">
			function validate() {
				var proof1 = document.getElementById('proof1').value;
				var proof2 = document.getElementById('proof2').value;
				var proof3 = document.getElementById('proof3').value;
				var proof4 = document.getElementById('proof4').value;
				var proof5 = document.getElementById('proof5').value;
				if(proof1 =="") {
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('error').innerHTML ="Please attach address proof";
			   		return false;
				}
				if(proof2 =="") {
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('error').innerHTML ="Please attach pan card proof";
			   		return false;
				}
				if(proof3 =="") {
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('error').innerHTML ="Please attach aadhar card proof";
			   		return false;
				}
				if(proof4 =="") {
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('error').innerHTML ="Please attach one passport size photograph";
			   		return false;
				}
				if(proof5 =="") {
					document.body.scrollTop = 0;
	    			document.documentElement.scrollTop = 0;
			    	//   alert("Name must be in alphabets only");
			  		document.getElementById('error').innerHTML ="Please attach signature photo";
			   		return false;
				}
				return true;
			}
		</script>
	</body>
</html>


