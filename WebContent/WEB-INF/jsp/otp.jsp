<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>OTP</title>
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<header id="head" style="background: white; height: 70px;">
       		<img src="resources/SignupResources/images/l2.png" style="width:160px; height: 60px;padding: 0px;float:left;transform: translate(10px,6px);"></img><br></div>
   		</header>
    	<div style="height: 50px;width: 100%;" >
  			<div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  			<div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  			<div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  			<div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  			<div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;"></div>  
		</div>
		
		<div align="center">
			<div style="width: 700px; border-style:solid;">
				<div align="left" style="transform: translateY(20px);"><font size="4px"><b>Validate OTP (One Time Passcode)</b></font></div><div align="right" style="transform: translateY(-20px);"><a href="signup" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-circle-arrow-left"></span> Go Back</a></div>
				<hr>
				A One Time Passcode has been sent to <strong><%= session.getAttribute("signup_user") %></strong><br><br>
				Please enter the OTP below to verify your Email Address. If you cannot see the email from "alister4701@gmail.com" in your inbox, make sure to check your SPAM folder.<br><br>  
				<form method="post">
					<input type="number" name="entered_otp" placeholder="Enter OTP here" required autocomplete="off">
					<br><br>
					<input type ="submit" value="Validate OTP" formaction="validateOTP" class="btn btn-success btn-lg"><br><br>
				</form>
				<form method="post"><input type ="submit" value="Resend OTP" formaction="resendOTP" class="btn btn-warning btn-lg"><br><br></form>
			</div>
		</div>
		<footer style="background-image: linear-gradient(to right, #32d345,#4788ef);height: 50px;padding: 0%;transform: translate(0px,77px);"> <!--transform: translate(0px,28px);-->
			<center><p style="color: black;transform: translateY(20px);">&copy; 2018 ::THE A TEAM</p></center>
		</footer>
	</body>
</html>