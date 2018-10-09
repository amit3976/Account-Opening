<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign up</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

        
<!--===============================================================================================-->  
    <link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/animate/animate.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/select2/select2.min.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/vendor/daterangepicker/daterangepicker.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/css/util.css">
    <link rel="stylesheet" type="text/css" href="resources/SignupResources/css/main.css">


<!--===============================================================================================-->
</head>
<body >
    <header id="head" style="background: white; height: 70px;">
       	<img src="resources/SignupResources/images/l2.png" style="width:160px; height: 60px;padding: 0px;float:left;transform: translate(10px,6px);"></img><br></div>
       	<p>
       		<a class="trigger_popup_fricc"  data-toggle="modal" data-target="#myModal"><i style="width:70px; height: 70px;padding: 0px;float:right;" class="far fa-question-circle fa-2x"></i></a>
 			<div class="modal fade" id="myModal" role="dialog">
    			<div class="modal-dialog">
    
      			<!-- Modal content-->
      				<div class="modal-content">
        				<div class="modal-header">
          					<button type="button" class="close" data-dismiss="modal">&times;</button>
         	 				<h4 class="modal-title">Welcome to Standard Chartered!</h4>
        				</div>
        				<div class="modal-body">
          					<p>
								If you are an existing user, please enter your registered email ID and password to login.
								For new users, please click on the "Sign up" button which will redirect you to creating an account with us.</p>
        				</div>
        				<div class="modal-footer">
          					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        				</div>
      				</div> 
    			</div>
  			</div>
  		</p>
   </header>
    <div style="height: 50px;width: 100%;" >
  <div style="width: 25%; height: 50%; float:left; color: transparent; background: #0de82a"></div>
  <div style="width: 8%; height: 50%;float:left; color: transparent; background: #14b729"></div>
  <div style="width: 12%;height: 50%; float:left; color: transparent; background: #101b59"></div>
  <div style="width: 5%; height: 50%;float:left; color: transparent; background: #425cf4"></div>
  <div style="width: 50%; height: 50%;float:left; color: transparent; background: #5162c6;transform: translateY(-24px);"></div>  
</div>
    <div class="limiter" style="transform: translateY(-25px);">
        <div class="container-login100">
            <div class="login100-more" style="background: url('resources/SignupResources/images/premium3.jpg'); background-size: cover;
                 background-position:bottom;
                 background-repeat: no-repeat;"></div>

            <div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50" style="background: white;">
            <!--background: #80ff80;
                 background: -webkit-linear-gradient(top, #80ff80,  #99e6ff, #80ff80,#99e6ff);
                 background: -o-linear-gradient(top, #80ff80,  #99e6ff, #80ff80,  #99e6ff);
                 background: -moz-linear-gradient(top, #80ff80, #99e6ff, #80ff80,  #99e6ff);
                 background: linear-gradient(top, #80ff80,  #99e6ff, #80ff80,  #99e6ff);">-->
                
                <form class="login100-form validate-form" action = "register" method ="post">
                	<div>${res }</div>
                    <h class="login100-form-title p-b-59">
                        REGISTER
                    </h>

                    <div class="wrap-input100 validate-input" data-validate="Valid Name is required: Abc Xyz">
                        <span class="label-input100">Full Name</span>
                        <input class="input100"  type="text" name="full_name" placeholder="Name..." id="fullname" autocomplete="off">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <span class="label-input100">Email(Username)</span>
                        <input class="input100" type="text" name="email" placeholder="Username..." autocomplete="off">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Date Of Birth :XX-XX-XXXX">
                        <span class="label-input100">Date Of Birth</span>
                        <input class="input100" style="color: #cccccc;" type="date" min="1900-01-01" max='2001-12-31' id="date" name="dob" placeholder="DOB">
                        <span class="focus-input100"></span>
                    </div>

                    <!-- <div class="wrap-input100 validate-input" >
                        <span class="label-input100" >Do You Have Adhar Card?</span>
                        <input type="radio" style="height: 20px;" class="input100" name="is_adhar" id="ad1" required /><label class="txt1" style="transform: translateY(-20px);">Yes</label>
                    	<input type="radio" style="height: 20px;"  class="input100" name="is_adhar" id="ad3" required /><label class="txt1" style="transform: translateY(-20px);">No</label>
                        <span class="focus-input100"></span>
                        
                    </div> -->
                    <input type="text" value="yes" name="is_adhar" style="visibility: hidden;">
                    <div class="wrap-input100 validate-input" data-validate="Please provide 10 digit valid mobile no.">
                        <span class="label-input100">Mobile Number</span>
                        <input class="input100"  type="text" name="mobile" id="mobileno" placeholder="Mobile Number..." autocomplete="off">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                        <span class="label-input100">Password</span>
                        <input class="input100" type="password" name="password" id="pass" placeholder="*************" autocomplete="off">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Matching to Password">
                        <span class="label-input100">Repeat Password</span>
                        <input class="input100" type="password" name="repeatpass" id="repeatpass" placeholder="*************" autocomplete="off">
                        <span class="focus-input100"></span>
                    </div>

                    <!--<div class="flex-m w-full p-b-33">
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                <span class="txt1">
                                    I agree to the
                                    <a href="#" class="txt2 hov1">
                                        Terms of User
                                    </a>
                                </span>
                            </label>
                        </div>

                        
                    </div>-->

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button class="login100-form-btn">
                                SUBMIT
                            </button>
                        </div>

                        <a href="backToLogin" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
                            BACK
                        <i class="fas fa-caret-square-left"></i>
                        </a>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/bootstrap/js/popper.js"></script>
    <script src="resources/SignupResources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/daterangepicker/moment.min.js"></script>
    <script src="resources/SignupResources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="resources/SignupResources/js/main.js"></script>
    
        <script>	
			$(window).load(function () {
    			$(".trigger_popup_fricc").click(function(){
       				$('.hover_bkgr_fricc').show();
    			});
    			$('.hover_bkgr_fricc').click(function(){
        			$('.hover_bkgr_fricc').hide();
    			});
    			$('.popupCloseButton').click(function(){
        			$('.hover_bkgr_fricc').hide();
    			});
			});
    	</script>
    
	<footer style="background-image: linear-gradient(to right, #32d345,#4788ef);height: 50px;padding: 0%;transform: translate(0px,-24px);"> <!--transform: translate(0px,28px);-->
		<center><p style="color: black;transform: translateY(20px);">&copy; 2018 ::THE A TEAM</p></center>
	</footer>
</body>
</html>