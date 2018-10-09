<html>
	<head>
		<title>Application Status</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/HomeResources/assets/css/main.css" />	
		<link rel="stylesheet" href="resources/HomeResources/assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<style>
			.swal-button--cancel {
    			background: #aaa;
			}
		</style>
	</head>
	
	<body id="top">
	
		<header id="footer" style="height: 70px;background: white;">
			<img height="70px" src="resources/HomeResources/assets/images/l2.png" alt="" style="transform: translate(-510px,-55px);" /></a>
			<button type="submit" aria-hidden="true" style="transform: translate(450px,-80px);" onclick="logout()">Logout</button>
		</header>
		
   		<script>
// 				function logoutFunction() {
//     			    var r = confirm("Do you want to logout!");;
//     			    if (r == true) {
//     			  		return true;
//     			    }
//     			    else {
//         			    return false;
//         			}
// 				}
				function logout(){
					swal({
						  title: "Are you sure?",
						  text: "Once deleted, you will not be able to recover this imaginary file!",
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
    	<div style="height: 50px;width: 100%;transform: translateY(-9px);" >
  			<div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  			<div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  			<div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  			<div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  			<div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(0px);"></div>  
		</div>
		
		<div id="main" style="height:420px;" >
			<div class="inner">
			<!-- Boxes -->
				<div class="thumbnails">
					<div class="box" style="transform: translateY(-50px);">
						<% String status =(String)request.getAttribute("status"); 
							if(status.equalsIgnoreCase("pending")){
						%>
							<a class="image fit"><i class="fa fa-cog fa-spin" style="color: orange; font-size:140px"></i></a>
							<div class="inner">
								<h3>APPLICATION UNDER PROCESS</h3>
								<p>Welcome! Your application is still under review and is currently being processed. 
								You will be notified as soon as it is processed.</p>
							</div>
						<%	} 
							else if(status.equalsIgnoreCase("approved")) { 
						%>
							<a class="image fit"><i class="fas fa-user-check" style="color: #0de82a; font-size:140px;transform: translate(17px,8px)"></i></a>
							<div class="inner">
								<h3>APPLICATION APPROVED</h3>
								<p>Congratulations! Your request to open an account with us has been processed successfuly.
									To know more about the details, kindly click on the button below</p>
								<a href="newBankAccount" class="button style3 fit" data-poptrox="youtube,800x400">BANK ACCOUNT DETAILS</a>
							</div>
						<%	} 
							else if(status.equalsIgnoreCase("rejected")) {
						%>
							<a class="image fit"><i class="fas fa-user-slash" style="color:red; font-size:140px;transform: translate(4px,8px)"></i></a>
							<div class="inner">
								<h3>APPLICATION REJECTED</h3>
								<p>Oops! We regret to inform you that your application has been rejected. 
									Kindly click on the button below to know the details.</p>
								<a href="rejectDetails" class="button style3 fit" data-poptrox="youtube,800x400">DETAILS</a>
							</div>
						<% } %>
					</div>		
				</div>
			</div>
		</div>
		<div align="center">
		<form method="post">
			<input type="submit" name="home" class="next action-button" value="Home" formaction="backToHome">
		</form>
		</div>
		
		<!-- Footer -->
		<footer id="footer" style="transform: translateY(2px);height:200px;padding-top: 5px" >
			<div class="inner" style="padding:5px;">
				<center>
				<p>It is essential that you do not take into consideration or respond to any information on this site or send any information
or materials to us before you read this Important Legal Notice, Client Charter and our Data Protection and Privacy 
Policy.   </p>
				</center>
				<p class="copyright" style="transform: translateY(-20px);">&copy; The A TEAM: </p>
			</div>
		</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>