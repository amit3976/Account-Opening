<%@ page import="com.scb.bean.*" %>
<%@ page import="java.util.*" %>

<html>
	<head>
		<title>Bank Account Details</title>
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
    	<div style="height: 50px;width: 100%;transform: translateY(-9px);" >
  			<div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  			<div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  			<div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  			<div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  			<div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(0px);"></div>  
		</div>

		<div align="center">
			<% 
				if(request.getAttribute("list") != null ) { 
			%>
				<h2>Bank Account Details</h2><br>
				<div class="container" id="table">
					<table class="table">
						<tr>
							<th>Application Id</th>
							<th>Account Number</th>
							<th>IFSC Code</th>
							<th>Account type</th>
							<th>Branch</th>
							<th>City</th>
							<th>State</th>
							<th>Aadhar Number</th>
							<th>Pan Number</th>
							<th>Approved On</th>
						</tr>	
				
					<%
						ArrayList<ApprovedBean> l= (ArrayList<ApprovedBean>) request.getAttribute("list");
						for( ApprovedBean apb :l) {
					%>
						<tr>
							<td><%= apb.getApp_id() %></td>
							<td><%= apb.getAccount_number() %></td>
							<td><%= apb.getIfsc_code() %></td>
							<td><%= apb.getAccount_type() %>
							<td><%= apb.getBranch() %>
							<td><%= apb.getCity() %></td>
							<td><%= apb.getState() %></td>
							<td><%= apb.getAadhar_num() %></td>
							<td><%= apb.getPan_num() %></td>
							<td><%= apb.getApproved_on() %></td>
						</tr>
					<%	} %>
					</table>
				</div>
			<%	} 
				else if(request.getAttribute("reason") != null) {
			%>
				<div>
					<h3>Reason For Rejection</h3><br>
					<textarea rows="4" cols="50" readonly="readonly" style="width: 50%;font-size: 14px;">${reason }</textarea>
					<br>
					<h4>Do You Want To apply again?</h4>
					<form method="post">
						<input type="submit" name="apply" class="next action-button" value="Apply Again" formaction="applyAgain">
					</form>
				</div>
			<%	} %>
			<br>	
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