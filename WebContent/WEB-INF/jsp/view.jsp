<%@ page import="java.util.*" %>
<%@ page import="com.scb.bean.*" %>
<html>
	<head>
		<title>Application Form <%= session.getAttribute("app_id") %></title>
	  	<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    	<script type="text/javascript">
        	$("#btnPrint").live("click", function () {
            	var Application = $("#table").html();
            	var printWindow = window.open('', '', 'height=400,width=800');
            	printWindow.document.write('<html><head><title>APPLICATION</title>');
            	printWindow.document.write('</head><body >');
          
            	printWindow.document.write(Application);
           
            	printWindow.document.write('</body></html>');
            	printWindow.document.close();
            	printWindow.print();
        	});
    	</script>
	</head>
	<body bgcolor="green">
		<div align="center">
			<h2><strong>Customer Application</strong></h2>
			<div class="container" id="table">
			<table  class="table" align="center">
				<% 
					PersonalBean pb = (PersonalBean)request.getAttribute("personalDetails"); 
					AccountBean ab = (AccountBean)request.getAttribute("accountDetails");
					if(pb != null) {
				%>
					<tr>
						<td colspan="2"><h3>Personal Details</h3></td>
					</tr>
					<tr class="info">
						<th>APPLICATION ID</th>
						<td><%= session.getAttribute("app_id")%></td>
					</tr>		
			    	<tr class="success">
			       		<th>Full Name</th>
				   		<td><% String temp = pb.getFull_name();
				   			temp = temp.replaceAll("_", "");
				   			out.println(temp);%>
				   		</td>
					</tr>
					<tr class="info">
				    	<th>Father Name</th>
						<td><% temp = pb.getFather_name();
				   			temp = temp.replaceAll("_", "");
				   			out.println(temp);%>
				   		</td>
					</tr>
					<tr class="success">
						<th>Mother Name</th>
						<td><% temp = pb.getMother_name();
				   			temp = temp.replaceAll("_", "");
				   			out.println(temp);%>
				   		</td>
					</tr>
					<tr class="info">
						<th>Date Of Birth</th>
						<td><%= pb.getDate_of_birth() %></td>
					</tr>
					<tr class="success">
						<th>Email</th>
						<td><%= pb.getEmail() %></td>
					</tr>
					<tr class="info">
						<th>Mobile</th>
						<td><%= pb.getMobile()%></td>
					</tr>
					<tr class="success">
						<th>Gender</th>
						<td><%= pb.getGender() %></td>	
					</tr>
					<tr class="info">
						<th>Marital Status</th>
						<td><%= pb.getMarital_status() %></td>
					</tr>
					<tr class="success">
						<th>Nationality</th>
						<td><%= pb.getNationality() %></td>
					</tr>					
					<tr class="info">
						<th>Residential Status</th>
						<td><%= pb.getResidential_status() %></td>
					</tr>
					<tr class="success">
						<th>Identification Mark</th>
						<td><%= pb.getIdentification_mark() %></td>
					</tr>
					<tr class="info">
						<th>Applicant Type</th>
						<td><%= pb.getApplicant_type() %></td>
					</tr>
					<tr class="success">
						<th>Occupation</th>
						<td><%= pb.getOccupation() %></td>
					</tr>
					<tr class="info">
						<th>Annual Income</th>
						<td><%= pb.getAnnual_income() %></td>
					</tr>
					<tr class="success">
						<th>Highest Qualifications</th>
						<td><%= pb.getHighest_qual() %></td>
					</tr>
					<tr class="info">
						<th>Permanent Address</th>
						<td><% 	temp = pb.getPermanent_address();
				   			temp = temp.replaceAll("%", "");
				   			out.println(temp);%>
				   		</td>
					</tr>
					<tr class="success">
						<th>Current Address</th>
						<td><% 	temp = pb.getCurrent_address();
				   			temp = temp.replaceAll("%", "");
				   			out.println(temp);%>
				   		</td>
					</tr>
				<% } 
					else if(ab != null) { %>
					<tr>
						<td colspan="2"><h3>Account Details</h3></td>
					</tr>
					<tr class="info">
						<th>APPLICATION ID</th>
						<td><%= session.getAttribute("app_id")%></td>
					</tr>
					<tr class="success">
						<th>Account Type</th>
						<td><%= ab.getAccount_type()%></td>
					</tr>
					<tr class="info">
						<th>Account For</th>
						<td><%= ab.getAccount_for()%></td>
					</tr>
					<tr class="success">
						<th>Aadhar Number</th>
						<td><%= ab.getAadhar_num()%></td>
					</tr>
					<tr class="info">
						<th>Pan Number</th>
						<td><%= ab.getPan_num()%></td>
					</tr>
					<tr class="success">
						<th>State</th>
						<td><%= ab.getState()%></td>
					</tr>
					<tr class="info">
						<th>City</th>
						<td><%= ab.getCity()%></td>
					</tr>
					<tr class="success">
						<th>Branch</th>
						<td><%= ab.getBranch()%></td>
					</tr>
				<%	}
				%>
			</table>
			</div> 
			
			<form method="post">
				<input type="hidden" name="id" value="<%= session.getAttribute("app_id") %>"> 	
				<button type="submit" class="btn btn-warning" formaction="view" style="float: left;transform:translateX(115px);"><i class="fas fa-user"></i>&nbsp;PERSONAL DETAILS</button>  
            	<button type="submit" class="btn btn-warning" formaction="account" style="float: left;transform:translateX(120px);"><i class="fas fa-address-book"></i>&nbsp;ACCOUNT DETAILS</button>
            	<button type="submit" class="btn btn-warning" formaction="docs" style="float: left;transform:translateX(125px);"><i class="fas fa-id-card"></i>&nbsp;KYC DETAILS</button>
            	<button type="button" class="btn btn-info"  id="btnPrint" style="float: left;transform:translateX(130px);"><i class="fas fa-print"></i>&nbsp;PRINT</button>
            	<button type="submit" class="btn btn-success" formaction="accept" style="float: right;transform:translateX(-115px);"><i class="fas fa-check"></i>&nbsp;APPROVE</button>     
            	<button type="submit" class="btn btn-DANGER" formaction="reject" style="float: right;transform:translateX(-120px);"><i class="fas fa-times"></i>&nbsp;REJECT</button>
            	<br>
				<br>
				<br>
				<button type="submit" aria-hidden="true" class="btn btn-default" formaction="view_applications"><i class="glyphicon glyphicon-list"></i>&nbsp;View All</button>
			</form>
			
		</div>
		<br>
		<br>
	</body>
</html>