<html>
	<head>
		<title>login_page</title>
		<meta charset="UTF-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/css/login_style.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<script type="text/javascript" src="resources/js/noback.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<style>
			.icon-bar {
 		 		position: fixed;
  				top: 50%;
		  		-webkit-transform: translateY(-50%);
  				-ms-transform: translateY(-50%);
  				transform: translateY(-50%);
			}

			.icon-bar a {
  				display: block;
	  			text-align: center;
  				padding: 16px;
  				transition: all 0.3s ease;
  				color: white;
  				font-size: 20px;
			}

			.icon-bar a:hover {
  				background-color: #000;
			}

			.facebook {
  				background: #3B5998;
  				color: white;
			}

			.twitter {
  				background: #55ACEE;
  				color: white;
			}

			.youtube {
  				background: #bb0000;
  				color: white;
			}

			.content {
  				margin-left: 75px;
  				font-size: 30px;
			}
		</style>
	</head>
	<body style="margin: 0; background-image: url('resources/images/3.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat;">
	
      	<div id="particles-js"> </div>
        <div class="logo"style="background: rgba(0,0,0,0.5);height: 70px;" > 
			<img src="resources/images/lo.jpg" style="width:160px; height: 60px;padding: 0px;float:left;transform: translateY(3px);"></img><br>
   		</div>
   		
   		<div style="background: rgba(192,192,192,0.7);width:500px;height: 330px;margin: 10px;border-radius: 20px;transform: translate(415px,90px);">
    		<h1 style="font-family: sans-serif;transform: translate(190px,30px);"><b>Log In</b></h1>
  			<form action="login" method = "post">
    			<div class="lnbox1" style="margin-left: 28%;margin-top: 5%;"> 
     				<div class="text1" >
   	 					<i class="far fa-user"></i>
   						<input type="text" id = "name" placeholder="UserName(Email)" name = "username" autocomplete="off" required="required"><br><br>
     				</div>
     				<div class="text1" >
         				<i class="fas fa-lock"></i>
      					<input type="password" id = "pass" placeholder="Password" name = "password" autocomplete="off" required="required"><br><br>
      				</div>
      				<br>
     				<input class="submit_btn"  type="submit" value="Log In"> 
    			</div> 
  			</form>
  			<div style="margin-left: 28%;margin-top: 45%;">
  				<a style="font-family: sans-serif;color:black;transform: translateY(-30px);font-weight: 600;">New User?? </a> &ensp; 
  				<a href="signup"> <input class="btn3"  type="submit" value="Sign Up!"></a>
  			</div>
   		</div>
   		
    	<div style="width: 500px;height: 70px;transform: translate(424px,80px);">${res}</div>
   		
   		<script type="text/javascript">
			function validation() {
    			var name = document.getElementById('name').value;
            	var pass = document.getElementById('pass').value;

      			if((name=="")) {
                	alert ("Fill Username");
                	return false;
            	}
      			if((pass=="")) {
                	alert ("Fill Password");
                	return false;
            	}
            	return true;
			}
   		</script>
   		

     	<div class="icon-bar"> 
  			<a href="https://www.facebook.com/StandardChartered/" class="facebook"><i class="fa fa-facebook"></i></a>  
 			<a href="https://twitter.com/StanChart?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" class="twitter"><i class="fa fa-twitter"></i></a> 	 
  			<a href="https://www.youtube.com/channel/UC5IAqa7FQ7353r2YygV9_JQ" class="youtube"><i class="fa fa-youtube"></i></a>  
  		</div> 
		<script type="text/javascript" src="resources/js/particles.js"></script>
       	<script type="text/javascript" src="resources/js/app.js"></script>
       	<footer style="background: rgba(0,0,0,0.5);height: 50px;padding: 0%;transform: translate(0px,122px);position:relative;"> <!--transform: translate(0px,28px);-->
		</footer>
	</body>
</html>