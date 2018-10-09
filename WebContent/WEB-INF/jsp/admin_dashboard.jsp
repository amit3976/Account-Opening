<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Admin Dashboard</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
		<link rel="stylesheet" href="resources/admin/css/main.css" />
		<link rel="stylesheet" href="resources/admin/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<style>
			.swal-button--cancel {
    			background: #aaa;
			}
		</style>
	</head>

	<body id="top">
	
  		<header id="footer" style="height: 50px;background: white;">
            <img height="70px" src="resources/admin/css/images/l2.png" alt="" style="transform: translate(-530px,-55px);" />
 	        <button type="submit" aria-hidden="true" style="transform: translate(450px,-80px);" onclick="logout()">Logout</button>
        </header>
        <script>
				/* function logoutFunction() {
    			    var r = confirm("Do you want to logout!");;
    			    if (r == true) {
    			  		return true;
    			    }
    			    else {
        			    return false;
        			}
				} */
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
		<div style="height: 50px;width: 100%;" >
            <div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
            <div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
            <div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
            <div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
            <div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(0px);"></div>  
        </div>
        <center>
		<h1>ADMIN DASHBOARD</h1>
		</center>
		
		<form method="post">
			<div id="main" style="transform: translateY(-24px);" >
				<div class="inner">
					<div class="thumbnails">
              			<div class="box" style="transform: translateX(30px);" >
							<a class="image fit"><i class="fas fa-users fa-10x" style="transform: translateY(25px);"></i></a>
							<div class="inner">
								<h3>View Applications</h3>
								<button  type="submit" class="button fit" formaction="view_applications" >VIEW</button>
							</div>
						</div>
                         
						<div class="box" style="transform: translateX(30px); ">
							<a class="image fit"><i style="transform: translate(19px,20px);" class="fas fa-user-check fa-10x"></i></a>
							<div class="inner">
								<h3>Approved Applications</h3>
								<button type="submit" class="button style2 fit"  formaction="approved_applications" >CHECK</button>
							</div>
						</div> 					
					</div>
				</div>
			</div>
     	</form>
		<!-- Footer -->
		<footer id="footer" style="height:  10px;">
			<div class="inner">
				<p style="font-size:larger;" class="copyright">&copy; Standard Chartered Bank 2018. All rights reserved. <!-- <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a href="http://coverr.co/">Coverr</a>. --></p>
			</div>
		</footer>

		<!-- Scripts -->
		<script src="resources/admin/js/jquery.min.js"></script>
		<script src="resources/admin/js/jquery.scrolly.min.js"></script>
		<script src="resources/admin/js/jquery.poptrox.min.js"></script>
		<script src="resources/admin/js/skel.min.js"></script>
		<script src="resources/admin/js/util.js"></script>
		<script src="resources/admin/js/main.js"></script>
	</body>
</html>