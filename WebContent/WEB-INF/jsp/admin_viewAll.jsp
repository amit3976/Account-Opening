<%@ page import="java.util.*" %>
<%@ page import="com.scb.bean.*" %>
<html>
	<head>
		<title>View All</title>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	</head>
	<body bgcolor="#800000">
		<div align="center">
			<h2>LIST OF APPLICATIONS </h2>
			<div class="container">
        
  			<table class="table table-striped" >
			    <th>APPLICATION ID</th>
			    <th>View Details</th>
				<% 
					ArrayList<Integer> al = (ArrayList<Integer>)request.getAttribute("list"); 
					for(Integer app_id : al) {						
				%>
				<form action="view" method="post">
					<tr>
				     	<td><input type="text" name="id" style="border: none;background: none;" value="<%= app_id %>" readonly></input></td>
				  		<td><button class="btn btn-default" type="submit">View</button></td>
					</tr>		
				</form>
				<%				
					}
				%>
			</table>
			</div>
			<form><button type="submit" aria-hidden="true" class="btn btn-default" formaction="backToAdminHome"><i class="fa fa-home"></i>&nbsp;Home</button></form>
		</div>
		<br>
		<br>
	</body>
</html>