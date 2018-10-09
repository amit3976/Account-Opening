<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Application Form <%= session.getAttribute("app_id") %></title>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	</head>
	<body>

		<div class="container">
 			<center> <h2><strong>Customer Application</strong></h2></center>
 			<h3>Uploaded Documents</h3>
  			<div id="myCarousel" class="carousel slide" data-ride="carousel">
    			<!-- Indicators -->
    			<ol class="carousel-indicators">
      				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      				<li data-target="#myCarousel" data-slide-to="1"></li>
      				<li data-target="#myCarousel" data-slide-to="2"></li>
       				<li data-target="#myCarousel" data-slide-to="3"></li>
        			<li data-target="#myCarousel" data-slide-to="4"></li>
    			</ol>

    			<!-- Wrapper for slides -->
    			<div align="center">
   					<div  class="carousel-inner" style=" height: 500px">
        
         				<%  int counter=0;
        				String div1="item active"; 
            			String div2="item";
            			String temp = (String)request.getAttribute("doc");
            			String arr[] = temp.split(",");
            			%>
    
     					<% for(int i=0; i<arr.length; i++) { 
     						if(counter==0){ %>
            					<div class="<%= div1 %>" >
            					<%counter++;} 
     							else{
            				%>
           						<div class="<%= div2 %>">
            				<%} %>
      						<img src= "<%= arr[i] %>" style="width: 70%;">
         					</div>
  
      					<% } %>
    
    					<!-- Left and right controls -->
    					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
      						<span class="glyphicon glyphicon-chevron-left"></span>
      						<span class="sr-only">Previous</span>
    					</a>
    					<a class="right carousel-control" href="#myCarousel" data-slide="next">
      						<span class="glyphicon glyphicon-chevron-right"></span>
      						<span class="sr-only">Next</span>
    					</a>
  					</div>
				</div>
			</div>
		</div>
		<br>
		<form method="post">
				<input type="hidden" name="id" value="<%= session.getAttribute("app_id") %>"> 	
				<button type="submit" class="btn btn-warning" formaction="view" style="float: left;transform:translateX(115px);"><i class="fas fa-user"></i>&nbsp;PERSONAL DETAILS</button>  
            	<button type="submit" class="btn btn-warning" formaction="account" style="float: left;transform:translateX(120px);"><i class="fas fa-address-book"></i>&nbsp;ACCOUNT DETAILS</button>
            	<button type="submit" class="btn btn-warning" formaction="docs" style="float: left;transform:translateX(125px);"><i class="fas fa-id-card"></i>&nbsp;KYC DETAILS</button>
            	<button type="submit" class="btn btn-success" formaction="accept" style="float: right;transform:translateX(-115px);"><i class="fas fa-check"></i>&nbsp;APPROVE</button>     
            	<button type="submit" class="btn btn-danger" formaction="reject" style="float: right;transform:translateX(-120px);"><i class="fas fa-times"></i>&nbsp;REJECT</button>
				<br>
				<br>
				<br>
				<div align="center">
					<button type="submit" aria-hidden="true" class="btn btn-default" formaction="view_applications"><i class="glyphicon glyphicon-list"></i>&nbsp;View All</button>
				</div>
		</form>
	</body>
</html>