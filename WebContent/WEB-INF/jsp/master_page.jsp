<html >
    <head> 
    	<title>SCB</title>
    	<link rel="icon" href="http://1.bp.blogspot.com/-XS2N6rMmwYs/T98UptXFzXI/AAAAAAAAATc/cMMAGyPt0Y8/s1600/Standard+Chartered+Icon.jpg"/>
        <link rel="stylesheet" href="resources/MasterPageResources/style.css">
        <style type="text/css">    
            * {
                margin: 0;
                padding: 0;
            }
            body {
                background-color: #000;
            }
            .button {
                position: absolute;
    			background-color: #4CAF50; /* Green */
    			border: none;
    			color: white;
    			padding: 15px 32px;
    			text-align: center;
    			text-decoration: none;
    			display: inline-block;
    			font-size: 16px;
    			/*margin: 4px 2px;*/
    			cursor: pointer;
    			border-radius: 5px;
    			transform: translateX(440px) translateY(450px);
			}

			.button2:hover {
   	 			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
			}
            .fly-in-text {
                /*list-style: none;
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translateX(36%) translateY(-50%);*/

                            list-style: none;
                position: absolute;
               /*margin-left: 40px;*/
                top: 60%;
                transform:translateY(-80px) translateX(26%);
            }
            .fly-in-text li {
                display: inline-block;
                margin-right: 15px;
                font-family: Open Sans, Arial;
                font-weight: 600;
                font-size: 2em;
                color: #fff;
                opacity: 1;
                transition: all 2.5s ease;
            }
            .fly-in-text li:last-child {
                margin-right: 0;
            }
            .fly-in-text.hidden li {
                opacity: 0;
            }

            .fly-in-text.hidden li:nth-child(1) { transform: translateX(-200px) translateY(-200px); }
            .fly-in-text.hidden li:nth-child(2) { transform: translateX(20px) translateY(100px); }
            .fly-in-text.hidden li:nth-child(3) { transform: translateX(-150px) translateY(-80px); }
            .fly-in-text.hidden li:nth-child(4) { transform: translateX(10px) translateY(-200px); }
            .fly-in-text.hidden li:nth-child(5) { transform: translateX(-300px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(6) { transform: translateX(20px) translateY(-20px); }
            .fly-in-text.hidden li:nth-child(7) { transform: translateX(30px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(8) { transform: translateX(30px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(9) { transform: translateX(-200px) translateY(-200px); }
            .fly-in-text.hidden li:nth-child(10) { transform: translateX(20px) translateY(100px); }
            .fly-in-text.hidden li:nth-child(11) { transform: translateX(-150px) translateY(-80px); }
            .fly-in-text.hidden li:nth-child(12) { transform: translateX(10px) translateY(-200px); }
            .fly-in-text.hidden li:nth-child(13) { transform: translateX(-300px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(14) { transform: translateX(20px) translateY(-20px); }
            .fly-in-text.hidden li:nth-child(15) { transform: translateX(30px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(16) { transform: translateX(30px) translateY(200px); }
            .fly-in-text.hidden li:nth-child(18) { transform: translateX(-156px) translateY(176px); }
            .fly-in-text.hidden li:nth-child(19) { transform: translateX(17px) translateY(-98px); }
            .fly-in-text.hidden li:nth-child(20) { transform: translateX(46px) translateY(216px); }
            .fly-in-text.hidden li:nth-child(21) { transform: translateX(-195px) translateY(167px); }
               .fly-in-text.hidden li:nth-child(22) { transform: translateX(67px) translateY(-200px); }
            .fly-in-text.hidden li:nth-child(23) { transform: translateX(82px) translateY(195px); }
            
/*
            ___________________________________________________*/
             .fly-in-text1 {
                list-style: none;
                position: absolute;
               /*margin-left: 40px;*/
                top: 60%;
                transform:translateY(-50%) translateX(88%);
            }
            .fly-in-text1 li {
                display: inline-block;
                margin-right: 15px;
                font-family: Arial, Helvetica, sans-serif;
                font-weight: 600;
                font-size: 2em;
                color: #fff;
                opacity: 1;
                transition: all 2.5s ease;
            }
            .fly-in-text1 li:last-child {
                margin-right: 0;
            }
            .fly-in-text1.hidden li {
                opacity: 0;
            }
            .fly-in-text1.hidden li:nth-child(1) { transform: translateX(-200px) translateY(-200px); }
            .fly-in-text1.hidden li:nth-child(2) { transform: translateX(20px) translateY(100px); }
            .fly-in-text1.hidden li:nth-child(3) { transform: translateX(-150px) translateY(-80px); }
            .fly-in-text1.hidden li:nth-child(4) { transform: translateX(10px) translateY(-200px); }
            .fly-in-text1.hidden li:nth-child(5) { transform: translateX(-300px) translateY(200px); }
            .fly-in-text1.hidden li:nth-child(6) { transform: translateX(20px) translateY(-20px); }
            .fly-in-text1.hidden li:nth-child(7) { transform: translateX(30px) translateY(200px); }
            .fly-in-text1.hidden li:nth-child(9) { transform: translateX(30px) translateY(200px); }
            .fly-in-text1.hidden li:nth-child(10) { transform: translateX(50px) translateY(-200px); }
            .fly-in-text1.hidden li:nth-child(11) { transform: translateX(20px) translateY(100px); }
            .fly-in-text1.hidden li:nth-child(12) { transform: translateX(-150px) translateY(-80px); }
            .fly-in-text1.hidden li:nth-child(13) { transform: translateX(10px) translateY(-200px); }
            .fly-in-text1.hidden li:nth-child(14) { transform: translateX(-300px) translateY(200px); }
            .fly-in-pic {
                 transform: translateX(570px) translateY(30%);
                opacity: 1;
                transition: all 2.5s ease;
            }
            
            .fly-in-pic.hidden {
                opacity: 0;
            }
           .btn-primary{color:#fff;background-color:#337ab7;border-color:#2e6da4}.btn-primary.focus,.btn-primary:focus{color:#fff;background-color:#286090;border-color:#122b40}.btn-primary:hover{color:#fff;background-color:#286090;border-color:#204d74}.btn-primary.active,.btn-primary:active,.open>.dropdown-toggle.btn-primary{color:#fff;background-color:#286090;border-color:#204d74} 
        </style>
    </head>
	
	<body>
		<video autoplay muted loop class="bg-video"   height="100%" width="100%" style="margin-right: 0px;padding-right: 0px;">
    		<source src="resources/MasterPageResources/18.mp4" type="video/webm">
		</video>
		<div style="position: absolute;background: rgba(0,0,0,0.3);height: 100%;width: 100%;"></div>
  		<div>
  			<img src="resources/MasterPageResources/l2.png" style="width:180px; height: 190px;padding: 0px;" class="fly-in-pic hidden"></img>
 			<a href="visitLogin" class="fly-in-pic hidden" ><button class="button button2" >visit</button></a>

        <!--<ul class="fly-in-text hidden">
            <li>W</li>
            <li>E</li>
            <li>L</li>
            <li>C</li>
            <li>O</li>
            <li>M</li>
            <li>E</li>
        </ul>
        <ul class="fly-in-text hidden" style="transform: translateY(30px) translateX(-55px)">
            <li>T</li>
            <li>O</li>
        </ul>-->
         <ul class="fly-in-text hidden">
            <li>S</li>
            <li>T</li>
            <li>A</li>
            <li>N</li>
            <li>D</li>
            <li>A</li>
            <li>R</li>
            <li>D</li>
        
            <li> </li>
            <li>C</li>
            <li>H</li>
            <li>A</li>
            <li>R</li>
            <li>T</li>
            <li>E</li>
            <li>R</li>
            <li>E</li>
            <li>D</li>
            <li> </li>
            <li>B</li>
            <li>A</li>
            <li>N</li>
            <li>K</li>
        </ul>
        <ul class="fly-in-text1 hidden">
            <li>H</li>
            <li>E</li>
            <li>R</li>
            <li>E</li>
           
            <li> </li>
            <li>F</li>
            <li>O</li>
            <li>R</li>
            <li> </li>
            <li>G</li>
            <li>O</li>
            <li>O</li>
            <li>D</li>
        
        </ul>
       <!--<a href="#" class="fly-in-pic hidden"><img class="button button2"></img></a>-->
     </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script type="text/javascript">
            
            $(function() {
                
                setTimeout(function() {
                    $('.fly-in-text').removeClass('hidden');
                }, 500);
                setTimeout(function() {
                    $('.fly-in-text1').removeClass('hidden');
                }, 500);
                 setTimeout(function() {
                    $('.fly-in-pic').removeClass('hidden');
                }, 2200);
            })();
           
        </script>
	</body>
</html>