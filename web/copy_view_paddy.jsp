

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




<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>Vadyakalashektra</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    <link rel="apple-touch-icon" href="#" />

    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="css/css/bootstrap.min.css" />
    <!-- Pogo Slider CSS -->
    <link rel="stylesheet" href="css/css/pogo-slider.min.css" />
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/css/style_1.css" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/css/responsive.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/css/custom.css" />

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

    <!-- end loader -->
    <!-- END LOADER -->

    <!-- Start header -->
    
    <!-- End header -->

    <!-- Start Banner -->
    
    <!-- End Banner -->
    
    <!-- section -->
    
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from paddy_reg";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    <!-- section --> <input id="fname" type="hidden" name="id" value="<%=resultSet.getString("id") %>"required />
         
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="full text_align_right_img">
                     <br>  <br><br> <img src="images/Beanie/<%=resultSet.getString("rationcopy")%>"  width="400" />&nbsp;&nbsp;
                    </div>
                </div>
                <div class="col-md-6 layout_padding">
                    <div class="full paddding_left_15">
                        <div class="heading_main text_align_left">
						
						 <img src="images/Beanie/<%=resultSet.getString("aadharcopy")%>" width="400"  />
						  	
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
                                                 
                                                 
                                                 <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
	<!-- end section -->
   
    <!-- section -->
    
    <!-- end section -->
    <!-- Start Footer -->
    
</body>

</html>