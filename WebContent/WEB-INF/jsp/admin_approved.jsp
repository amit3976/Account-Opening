<%@ page import="java.util.*" %>
<%@ page import="com.scb.bean.*" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Approved Applications</title>
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	</head>
	
	<body> 
		<div align="center">
			<h2>Approved Applications</h2>
			<div class="container" id="table">
				<table class="table">
					<tr>
						<th>Application Id</th>
						<th>Account Number</th>
						<th>IFSC Code</th>
						<th>Account Type</th>
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
						<td><%= apb.getAccount_type() %></td>
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
			<form method="post">
            	<br><br>
				<button type="submit" aria-hidden="true" class="btn btn-default" formaction="backToAdminHome"><i class="fa fa-home"></i>&nbsp;Home</button>
			</form>
		</div>
	</body>
</html>