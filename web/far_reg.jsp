<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/aaa.jpg);">
<title>Registration Forms</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Product Delivery Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->

<script src="js/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="css/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,500,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
    <a href="flayout.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	

<form action="insert_query_freg.jsp" id="testform" method="post" novalidate>	
    <div class="main">
        <h1><b><font color="white">FARMER REGISTRATION OFFICE</b></h1>
		<div class="agileinfo_main">
			
				<fieldset style="border: 1px solid #999">
					<legend>Farmer Details :</legend>
					
					<p for="firstName" class="w3_field1">Name</p>
					<input id="name" name="name" type="text" required data-error-msg="We need to know who you are" />
					
					<p for="phoneNum">Address</p>
					<input id="address" name="address" type="text" required data-error-msg="Please enter your address" />
			  
					<p for="phoneNum">Phone number</p>
					<input id="phonenum" name="phonenum" type="text" required data-error-msg="Please enter your phone number" />
			  
					<p for="emailAddress">Email address</p>
					<input id="email" name="email" type="email" required data-error-msg="Please enter your valid email address" ></input>
			  
				
					<p for="gender">Gender</p>
					
					<select id="weight" name="gender" required>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
					<br>
					<p for="pickdate">Date Of Birth</p>
					<input class="dob" id="dob" name="dob" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '2/08/2013';}" required="">
				
					<p for="city2">Thaluk</p>
					<input id="thaluk" name="thaluk" type="text" required data-error-msg="We need to know which thaluk" />
					
					<p for="state">Block</p>
					<input id="block" name="block" type="text" required data-error-msg="We need to know which block" />
					
					<p for="panchayath">Panchayath</p>
					<input id="panchayath" name="panchayath" type="text" required data-error-msg="We need to know which pachayath" />
					<p for="village">Village</p>
					<input id="village" name="village" type="text" required data-error-msg="We need to know which village" />
					
					
				</fieldset>

				<fieldset style="border: 1px solid #999">
					<legend>Attachment:</legend>
					
					<p for="pincode2">Ration Card No:</p>
					<input id="rationnum" name="rationnum" type="text" required data-error-msg="Please enter your ration card number" />
					
					
					<p for="city">Ration card copy</p>
					<input id="rationcopy" name="rationcopy" type="file" required data-error-msg="" />
					
					
					<p for="pincode">Aadhar card number</p>
					<input id="aadharnum" name="aadharnum" type="text" required data-error-msg="Please enter your aadhar card number" />
					
			  <p for="pincode2">Aadhar card copy</p>
					<input id="aadharcopy" name="aadharcopy" type="file" required data-error-msg="" />
				</fieldset>
				
				
		
				<input type="submit" value="Submit">
				<input type="reset" value="Reset" />
				
			
		</div>
		<!-- Calendar -->
				<link rel="stylesheet" href="css/css/jquery-ui.css" />
				<script src="js/js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
		<script src="js/js/attrvalidate.jquery.js" type="text/javascript"></script>
		<script type="text/javascript">
		  $(document).ready(function(){
			$('#testform').attrvalidate();
			$('#resetBtn').click(function(){ $('#testform').attrvalidate('reset'); });
			$('#expandBtn').click(function(){
			  var collapsible = $('#' + $(this).attr('aria-controls'));
			  $(collapsible).attr('aria-hidden', ($(collapsible).attr('aria-hidden') === 'false'));
			  $(this).attr('aria-expanded', ($(this).attr('aria-expanded') === 'false'));
			});
		  });
		</script>
		
    </div></div></form>
    
</body>
</html>