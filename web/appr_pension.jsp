
<!--A Design by W3layouts 
Author: W3layout
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
String sql ="select * from pensionreg where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<div style="background-color: #87CEFA"
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Course Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link href="css/css_admin/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<!-- //js -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<!-- //web-fonts --> 
</head>
<body>
    <a href="appr_viewpension_admin.jsp"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	

	
	<!-- banner --> 
        <br><br>
<div class="video"> 
	<div class="center-container">
	    <div class="w3ls-agileinfo">
				
		</div>
		 <div class="bg-agile">
			<h2>Approval Form </h2>
			<div class="login-form">	
				<form action="appr_viewpension_qry.jsp" method="post">
                                    <input id="name" name="id" type="hidden" value="<%=resultSet.getString("id") %>"required />
				
					<input type="text"  name="name" value="<%=resultSet.getString("name") %>" placeholder="Tittle" required="" />
					
                                        <br><br>
                                        <select id="weight" name="appstatus" required>
						<option value="Approved">Approve</option>
                                                <br>
					</select><br><br>
					<input type="submit" value="Submit">
				</form>	
			</div>	
                 </div></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!-- //banner --> 
	 <!--copyright-->
		
	<!--//copyright-->
	</div>
                                         <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>	
</body>
</html>