<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>farmer login registration</title>
 
	<!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Space Register Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->

	<!-- css files -->
	<link href="css/cssflogreg/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- css files -->

	<!-- Online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
	<!-- //Online-fonts -->

</head>
<body>
                                 <a href="index.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	

<div class="single-welcome-slides bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/81.jpg);">
	<!-- Main Content -->
	<div class="main">
		<div class="main-w3l">
			
			<div class="w3layouts-main">
				<h2><span>Register now</span></h2>
					<form action="insert_query_flogreg.jsp" method="post">
						<input placeholder="Full Name" name="name" type="text" required="">
						<input placeholder="Address" name="address" type="text" required="">
				
						
						<input placeholder="Email" name="email" type="email" required="">
						<input placeholder="Phone Number" name="Phonenum" type="text" required="">
						<input placeholder="Username" name="username" type="text" required="">
						
						<input placeholder="Password" name="password" type="password"  id="password1" required="">
						
						
                                          <input type="submit" value="Get Started" name="login">

                                        </form><br><br><br><br>
			</div>
			<!-- //main -->
			
			<!-- password-script -->
			<script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Passwords Don't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
			<!-- //password-script -->

                </div>
			
		</div>
	</div>
	<!-- //Main Content -->

</body>
</html>
