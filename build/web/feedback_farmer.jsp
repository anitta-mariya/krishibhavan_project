<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/feedback_farmer.css">
	</head>

	<body>
		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="images/p1.jpg" alt="">
				</div>
				<form action="insert_query_feedback.jsp">
					<h3>FeedBack</h3>
					<div class="form-row">
						<input type="text" class="form-control" placeholder="Name" name="name" required>
						<input type="text" class="form-control" placeholder="Mail"name="mail" required>>
					</div>
					<div class="form-row">
						<input type="text" class="form-control" placeholder="Phone"name="phone" required>
						
					</div>
					<textarea name="message" id="" placeholder="Message"  class="form-control" style="height: 130px;"></textarea>
					<button>Submit
						<i class="zmdi zmdi-long-arrow-right"></i>
					</button>
				</form>
				
			</div>
		</div>

		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/main.js"></script>
           
        </body>
</html>
