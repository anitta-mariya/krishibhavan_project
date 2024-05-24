<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Krishibhavan</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Perfect Match Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/style3.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=GFS+Neohellenic:400,400i,700,700i&amp;subset=greek" rel="stylesheet">
<!-- //web-fonts --></head>
<style>
    body{
        background-image: url(img/bg-img/a1.jpg);
        background-size: cover;
    }
    </style>
    </head>
<body >
    

  <!-- Content Wrapper. Contains page content -->
 
    <!-- /.content-header -->

    <a href="adminpanel.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>
	<div class="center-container" style="left-margin:1680x;">
		<!--header-->
		<div class="header-w3l" style="left-margin:160px;">
	<h1>Staff Registration </h1>
		</div>
		<!--//header-->
		<!--main-->
	<div class="agileits-register">
		<form action="insert_query_regstaff.jsp" method="post">
			 
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Name:</span>
					<input type="text" name="name" placeholder="Your Name" required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid">
					<span>Gender:</span>
					<div class="w3_gender">
						<div class="colr ert">
							<label class="radio"><input type="radio" name="gender" value="male" checked=""><i></i>Male</label>
						</div>
						<div class="colr">
							<label class="radio"><input type="radio" name="gender" value="female"><i></i>Female</label>
						</div>
						<div class="clear"> </div>
					</div>
                                        <div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Phone</span>
					<input type="text" name="number" placeholder="Your Phone Number" required=""/>
					<div class="clear"> </div>
				</div>
					 <div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Address</span>
					<input type="text" name="address" placeholder="Your Address" required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Date Of Birth:</span>
					<input class="date" id="datepicker" name="age" type=date required="" />
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Position:</span>
					<select id="w3_country1" onchange="change_country(this.value)" name="position" class="frm-field required"> 
						<option value="">Select position</option>
						<option value="A grade staff">A grade</option>
						<option value="B grade staff">B grade</option>    
						  						
					</select>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Email:</span>
					<input type="email" name="email" placeholder="Your E-mail" required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Password:</span>
					<input type="password" name="pwd" placeholder="Your Password " required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3-agree">
					
				</div>
				<input type="submit" value="Register Here" />
				<div class="clear"></div>
		
                </form>
            
            
</div></center>

		
		
	
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
	<script>
	  $(function() {
		$( "#datepicker" ).datepicker();
	 });
	</script>
<!-- //Calendar -->		

</body>
</html>
