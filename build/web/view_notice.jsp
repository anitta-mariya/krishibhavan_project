<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
   <meta charset="utf-8">
  <link rel="stylesheet" href="css/w3.css">
  
  
  
  <link rel="stylesheet" href="css/css_admin/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="css/css_admin/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="css/css_admin/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="css/css_admin/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/css_admin/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="css/css_admin/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="css/css_admin/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="css/css_admin/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <a href="slayout.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>
   
<div class="wrapper">

  <!-- Navbar -->
 
  <!-- /.navbar -->

  
  <!-- Content Wrapper. Contains page content -->
 
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content" style="margin-left:80px;">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        
          </div>
 
         <style>   
       body{
background-image:url('img/bg-img/70.jpg');
background-size:cover;
}
</style>


 
<div class="container" style="margin-left:168px;" >
   


<div class="w3-container">
<div class="container">
<div class="col-lg-12">
<br><br>
<h1 class="text-warning text-center"><font color="red">View Notice</font></h1>
<table class="table table-striped table-hover table-bordered">
<tr class="bg-dark text-white text-center">
<tr>
<td>id</td>
<td>Message</td>

<td>Delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from staff_notice";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
   
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("message") %></td>





<td><a href="delete_viewnotice.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>


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
 
 
</body>

</html>
