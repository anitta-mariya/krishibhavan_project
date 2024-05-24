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
String sql ="select * from field_report where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Field Report</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Course Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link href="css/style_1.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<!-- //js -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<!-- //web-fonts --> 
</head>
<body>
	  <a href="view_fieldreport.jsp"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	
	<!-- banner --> 
<div class="video"> 
	<div class="center-container">
	    <div class="w3ls-agileinfo">
			
		</div>
		 <div class="bg-agile">
			<h2>FIELD REPORT </h2>
			<div class="login-form">	
				<form action="update_field_qry.jsp" method="post">
                                    <input type="hidden" class="input-field" placeholder="id" name="id" value="<%=resultSet.getString("id") %>"  required>
					<input type="text"  name="sname" value="<%=resultSet.getString("sname") %>"  placeholder="Name of staff" required="" />
					<input type="text"  name="fname" value="<%=resultSet.getString("fname") %>" placeholder="Name of Farmer" required="" />
					<input type="text"  name="address" value="<%=resultSet.getString("address") %>" placeholder="Address of Farmer" required="" />
					<input type="text"  name="place" value="<%=resultSet.getString("place") %>" placeholder="Place of Farmer" required="" />
                                        	
					
                                        <br><input type="text"  name="subject" value="<%=resultSet.getString("subject") %>" placeholder="subject" required="" />
                                        <div class="input-group">
                                    <textarea class="textarea--style-6" type="text" name="message" value="<%=resultSet.getString("message") %>"  placeholder="Description about field visit"></textarea>
                                </div>
                                        
					
					<input type="submit" value="Submit">
				</form>	
			</div>	
		</div>
	<!-- //banner --> 
	 <!--copyright-->
		
	<!--//copyright-->
	</div>	
</div>	
<!-- end document-->
<%    
}
connection.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
        </body>
</html>
