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
    <style>   
       body{
background-image:url('img/bg-img/70.jpg');
background-size:cover;
}
</style>
<div class="wrapper">
    
     <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
     
           
        <span class="brand-text font-weight-light"><center>
                <b>KRISHIBHAVAN<br> Thekkumkara</b></center></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        
        <div class="info">
          <a href="#" class="d-block">Admin Panel</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="reg_staff.jsp" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Add Staff
               
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="staff_notice.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Staff Notice</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="view_staff.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>View Staff</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="view_feedback.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>View FeedBack</p>
                </a>
              </li>
            
          <li class="nav-item">
                <a href="view_fieldreport.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>View Field Report</p>
                </a>
              </li>
            
          <li class="nav-item">
            <a href="view_leave.jsp" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Display leave
                <span class="right badge badge-danger"></span>
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="update_notice.jsp" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Update notice
                
                <span class="badge badge-info right"></span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              
            
              
              <li class="nav-item">
                <a href="logout_admin.jsp" class="nav-link">
                 
                  <p>Log out</p>
                </a>
             
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="logout_admin.jsp" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Log out
                
              </p>
            </a>
            
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

     
  <!-- Content Wrapper. Contains page content -->
 
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content" style="margin-left:250px;">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        
          </div>
 
         

 
<div class="container" >
   
<table class="table">

    
 
<div class="container">
<table class="table">


<div class="w3-container">
<div class="container">
<div class="col-lg-12">
<br><br>
<h1 class="text-warning text-center"><font color="green">View Staff </font></h1>
<table class="table table-striped table-hover table-bordered">
<tr class="bg-dark text-white text-center">
<tr>
<td><b>id</b></td>
<td><b>Name</b></td>
<td><b>gender</b></td>
<td><b>number</b></td>
<td><b>address</b></td>

<td><b>Email</b></td>
<td><b>Position</b></td>

<td><b>Update</b></td>
<td><b>delete</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from staffs_reg";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
   
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("number") %></td>
<td><%=resultSet.getString("address") %></td>


<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("position") %></td>

<td><a href="upadate.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Update</button></a></td>


<td><a href="delete_staff.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>


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
