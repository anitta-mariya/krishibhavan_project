<!DOCTYPE html>
<html lang="en">
<head>
	<title>Farmer login</title>
	<style>
	
	/* Set a style for all buttons */
button {
  background-color: #2DC015;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

</style>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/jpg" href="images/agri1.jpg"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util_far.css">
	<link rel="stylesheet" type="text/css" href="css/main_far.css">
<!--===============================================================================================-->
</head>
<body>
	                             <a href="index.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	

	<div class="limiter">
		<div class="container-login100" style="background-image: url('img/bg-img/65.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					farmer Account Login
				</span>
				<form action="log_qry_farmer.jsp" method="post" class="login100-form validate-form p-b-33 p-t-5">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					
					
					
					<div class="container-login100-form-btn m-t-32">
						<button type="submit" class="login100-form-btn">
							Login
                                                        </button>
					</div>
					
						<div class="container-login100-form-btn m-t-32">
					
							
							<label class="label-checkbox100" for="">
						
							<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

                                                        <a href="flogreg.jsp">
                                                            <center>
                                                            <input type="button" value="Create new"></a>
</center>
                                           
										  </label>
							</a>
						</div>
                        </div>
			

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery_far/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition_far/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap_far/js/popper.js"></script>
	<script src="vendor/bootstrap_far/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2_far/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker_far/moment.min.js"></script>
	<script src="vendor/daterangepicker_far/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime_far/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>