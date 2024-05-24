
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>


<head>
 

<meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title></title>
  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">
  <!-- Core Stylesheet -->
  <link rel="stylesheet" href="style.css">
</head>

<header class="header-area">
    <!-- Top Header Area -->
    <div class="top-header-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="top-header-content d-flex align-items-center justify-content-between">
              <!-- Top Header Content -->
              <div class="top-header-meta">
                <p>Welcome to <span>Krishibhavan Thekkumkara</span>, we hope you will enjoy our services and have good experience</p>
              </div>
              <!-- Top Header Content -->
              <div class="top-header-meta text-right">
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="krishioffice@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: krishioffice@gmail.com</span></a>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +84 223 9000</span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <a href="adminpanel.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	

   
 <!-- Navbar Area -->
    <div class="famie-main-menu">
      <div class="classy-nav-container breakpoint-off">
        <div class="container">
          <!-- Menu -->
          <nav class="classy-navbar justify-content-between" id="famieNav">
            <!-- Nav Brand -->
            <p><h1>Krishibhavan Thekkumkara</h1></p>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
              <!-- Close Button -->
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>
              <!-- Navbar Start -->
             
                

          <!-- Search Form -->
          <div class="search-form">
            <form action="#" method="get">
              <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
              <button type="submit" class="d-none"></button>
            </form>
            <!-- Close Icon -->
            <div class="closeIcon"><i class="fa fa-times" aria-hidden="true"></i></div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- ##### Header Area End ##### -->
  



        <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
   <meta charset="utf-8">
  <link rel="stylesheet" href="css/w3.css">
  
  
  
        
	<div class="single-welcome-slides bg-img bg-overlay jarallax">
		
    
   
        <div class="container" style="
  margin-right: 168px;
">
			<br />
			
			
                        
			<br />
			<br />
		
			<br />
			<form method="post" id="user_form">
				<h1 class="text-warning text-center"><font color="white">Crop Registration View</font></h1>
<table class="table table-striped table-hover table-bordered">
<tr class="bg-dark text-white text-center">
					
						
    <th>Id</th>
							<th>Name</th>
                                                        <th>Number</th>
                                                        <th>Email</th>
                                                        <th>Thaluk</th>
                                                        <th>Panchayath</th>
                                                        <th>Ration card no.</th>
							<th>aadhar card no.</th>
							
                                                      <th>Approve Status</th>
							<th>Approve</th>
                                                        
						</tr>
                        



<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from crop_reg where status='Verified'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
    

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phonenum") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("thaluk") %></td>
<td><%=resultSet.getString("panchayath") %></td>
<td><%=resultSet.getString("rationnum") %></td>
<td><%=resultSet.getString("aadharnum") %></td>
<td><%=resultSet.getString("appstatus") %></td>






<td><a href="appr_crop.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Approve</button></a></td>

</tr>
 <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                                        </table>
    
				</div>
				
		
        
			<br />
 </div>        
                                        
  </form>

</body>
</html>
     
  	