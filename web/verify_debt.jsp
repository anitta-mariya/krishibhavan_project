<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "krishibhavan";
String userid = "root";
String password = "";
try{
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from debt_relief where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
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
<style>
            body{
                background-image:url(img/bg-img/40.jpg);
                background-size:cover;
               
            }
            </style>

<script src="js/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="css/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,500,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<form action="verify_debt_qry.jsp" id="testform" method="post" novalidate>	
    <div class="main">
		<h1>Debt-Relief Registration Verification</h1>
		<div class="agileinfo_main">
			
				<fieldset style="border: 1px solid #999">
					<legend>Farmer Details :</legend>
					<input id="name" name="id" type="hidden" value="<%=resultSet.getString("id") %>"required />
					
					<p for="firstName" class="w3_field1">Name</p>
					<input id="name" name="name" type="text"  value="<%=resultSet.getString("name") %>"required required data-error-msg="We need to know who you are" />
					
					
                                         <p for="gender">Verify</p>
					
					<select id="weight" name="status" required>
						<option value="Verified">Verify</option>
						
					</select>
					
				
				</fieldset>

				
		
				<input type="submit" value="Submit">
                                <br><br><br><br><br><br><br><br><br><br><br><br>
			
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
      <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>