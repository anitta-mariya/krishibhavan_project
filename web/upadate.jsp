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
String sql ="select * from staffs_reg where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>



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
<!-- //web-fonts -->
</head>
<style>
    body{
        background-image: url(img/bg-img/a1.jpg);
        background-size: cover;
    }
    </style>
    
<body>
    <a href="view_staff.jsp"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	
	<div class="center-container">
		<!--header-->
		<div class="header-w3l">
			<h1>Staff Registration</h1>
		</div>
		<!--//header-->
		<!--main-->
	<div class="agileits-register">
		<form action="update_staff_qry.jsp" method="post">
			<input type="hidden" name="id" value="<%=resultSet.getString("id") %>" placeholder="Your Name" required=""/>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Name:</span>
					<input type="text" name="name" value="<%=resultSet.getString("name") %>" placeholder="Your Name" required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid">
					<span>Gender:</span>
					<div class="w3_gender">
						<div class="colr ert">
							<label class="radio"><input type="radio" name="gender" value="<%=resultSet.getString("gender") %>" value="male" checked=""><i></i>Male</label>
						</div>
						<div class="colr">
							<label class="radio"><input type="radio" name="gender" value="<%=resultSet.getString("gender") %>" value="female"><i></i>Female</label>
						</div>
						<div class="clear"> </div>
					</div>
                                        <div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Phone</span>
					<input type="text" name="number" value="<%=resultSet.getString("number") %>" placeholder="Your Phone Number" required=""/>
					<div class="clear"> </div>
				</div>
					 <div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Address</span>
					<input type="text" name="address" value="<%=resultSet.getString("address") %>" placeholder="Your Address" required=""/>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Date Of Birth:</span>
					<input class="date" id="datepicker" value="<%=resultSet.getString("age") %>"name="age" type=date required="" />
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Position:</span>
					<select id="w3_country1" value="<%=resultSet.getString("position") %>"onchange="change_country(this.value)" name="position" value="<%=resultSet.getString("position") %>" class="frm-field required"> 
						<option value="">Select Position</option>
						<option value="A grade staff">A grade</option>
						<option value="B grade staff">B grade</option>    
						  						
					</select>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Email:</span>
					<input type="email" name="email" value="<%=resultSet.getString("email") %>" placeholder="Your E-mail" required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Password:</span>
					<input type="password" name="pwd" value="<%=resultSet.getString("pwd") %>" placeholder="Your Password " required=""/>
					<div class="clear"> </div>
				</div>
				
				<input type="submit" value="Register Here" />
				<div class="clear"></div>
			</form>
		</div>
		<div class="banner-left">
			<img src="images/1.png" alt=""> 
		</div>
		
	<div class="clear"></div>
		<!--//main-->
		<!--footer-->
		<div class="footer">
			
		</div>
		<!--//footer-->
	</div>
	
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

<%    
}
connection.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
