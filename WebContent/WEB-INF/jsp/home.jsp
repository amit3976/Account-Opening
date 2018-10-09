<!DOCTYPE HTML>
<!--
	Full Motion by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Home</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/HomeResources/assets/css/main.css" />
		<link rel="stylesheet" href="resources/HomeResources/assets/css/font-awesome.min.css">
	
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<style>
			.swal-button--cancel {
    			background: #aaa;
			}
			
			.overlay.fieldset{
    			visibility:hidden; 
    			opacity:0;
			}

			.content{
				background-color: #fefefe;
    			/*margin: 15% auto; /* 15% from the top and centered */
    			padding: 20px;
    			/*border: 1px solid #888;*/
    			width: 70%; 
    			height: 70%;    
			}   
			.overlay {
			  	position: fixed;
  				top: 0;
  				bottom: 0;
  				left: 0;
  				right: 0;
  				background: rgba(0, 0, 0, 0.7);
  				transition: opacity 500ms;
  				visibility: hidden;
  				opacity: 0;
			}
			.overlay:target {
  				visibility: visible;
  				opacity: 1;
			}

			.popup {
  				margin: 70px auto;
  				padding: 20px;
  				background: #fff;
  				border-radius: 5px;
  				width: 50%;
  				height:37%;
  				position: relative;
  				transition: all 5s ease-in-out;
			}

			.popup h2 {
  				margin-top: 0;
  				color: #333;
  				font-family: Tahoma, Arial, sans-serif;
			}
			.popup .close {
  				position: absolute;
  				top: 20px;
  				background: background: #06D85F;
  				right: 30px;
  				transition: all 200ms;
  				font-size: 15px;
  				font-weight: bold;
  				text-decoration: none;
  				color: #333;
			}
			.popup .close:hover {
  				color: #06D85F;
			}
			.popup .content {
  				max-height: 20%;
  				overflow: auto;
			}

			@media screen and (max-width: 500px){
  				.box{
    				width: 70%;
  				}
  				.popup{
    				width: 50%;
  				}
			}
		</style>
	</head>
	
	<body id="top">
	
		<header id="footer" style="height: 70px;background: white;">
			<img height="70px" src="resources/HomeResources/assets/images/l2.png" alt="" style="transform: translate(-510px,-55px);" /></a>
			<a href="#popup1"><i class="fa fa-question-circle fa-2x" aria-hidden="true" style="transform: translate(400px,-75px);color:blue;"></i></a>
			<button type="submit" aria-hidden="true" style="transform: translate(450px,-80px);" onclick="logout()">Logout</button>
		</header>
		
		<script>
			function logout(){
					swal({
						  title: "Are you sure?",
						  text: "Click Ok to Log Out!",
						  icon: "warning",
						  buttons: true,
						  buttonColor: 'red',
						  dangerMode: true,
						})
						.then((willDelete) => {
						  if (willDelete) {
						    location.href = "logout";
						    
						  }
						});
				}
		</script>
 		<div style="height: 50px;width: 100%;transform: translateY(-12px);" >
  			<div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  			<div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  			<div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  			<div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  			<div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(0px);"></div>  
		</div>		
			<!-- Main -->
				<div id="main" style=" transform: translateY(-24px); " >
					<div class="inner">

					<!-- Boxes -->
					<form method="post">
						<div class="thumbnails">
							<div class="box">
								<img height="220px" src="resources/HomeResources/assets/images/openbank.jpg" alt="" / class="image fit">
								<div class="inner">
									<h3>Create Bank Account</h3>
									<p>Apply online for a new bank account.....</p>
									<input type="submit" value="APPLY" class="button fit" ${is_disable_1 } formaction="create">
								</div>
							</div> 

							<div class="box">
								<img src="resources/HomeResources/assets/images/finishstatus.jpg" alt="" class="image fit"/>
								<div class="inner">
									<h3>Finish Submission</h3>
									<p>Complete your account details...</p>
									<input type="submit" value="RESUME" class="button style3 fit" formaction="restore_personal_details" data-poptrox="youtube,800x400" ${is_disable_2 }>
								</div>
							</div>
							
							<div class="box">
								<img height="220px" src="resources/HomeResources/assets/images/checkstatus.jpg" alt="" class="image fit"/>
								<div class="inner">
									<h3>Check Status</h3>
									<p>Check to see your  application status...</p>
									<input type="submit" value="CHECK" class="button style2 fit" formaction="status" data-poptrox="youtube,800x400" ${is_disable_3 }>
								</div>
							</div>
						</div>
						</form>
					</div>
				</div>
				
				<div id="popup1" class="overlay" >
    		<div class="popup" style="transform: translateX(317px);height: 350px;">
				<h2 >Welcome!</h2><hr>
        		
        		<h4 align="center" style="font-family: sans-serif;margin-top: 20px;color: black;">
            		If you want to open an account with us, please click on the "Apply" button under the Create Account section. 
This will redirect you to the registration page where you will be asked to enter your details and upload certain documents.

If you have already begun to fill up the form and had to leave it midway, no worries! Your session is saved and you can resume filling
your details where you left off. Kindly click on the "Resume" button under the Finish Submission section.

Once you've filled up the neccesary details and uploaded the required documents, you can check to see if your application to create an account with us 
has been approved or rejected. Kindly click on the "Check" button under the "Check status" section.
					
        		</h4>
        		<a class="close" href="#">&times;</a>
    		</div>
		</div>
	
			<!-- Footer -->
				<footer id="footer" style="height: 30px;transform: translateY(5px);">
					<div class="inner">	
						<!-- <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul> -->
						<p class="copyright">&copy; Standard Chartered Bank 2018. All rights reserved.  <!-- <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>. --></p>
					</div>
				</footer>

		<!-- Scripts -->
			<script src="resources/HomeResources/assets/js/jquery.min.js"></script>
			<script src="resources/HomeResources/assets/js/jquery.scrolly.min.js"></script>
			<script src="resources/HomeResources/assets/js/jquery.poptrox.min.js"></script>
			<script src="resources/HomeResources/assets/js/skel.min.js"></script>
			<script src="resources/HomeResources/assets/js/util.js"></script>
			<script src="resources/HomeResources/assets/js/main.js"></script>

	</body>
</html>