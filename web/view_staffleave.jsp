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
<title>display department</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
   <meta charset="utf-8">
  <link rel="stylesheet" href="css/w3.css">
  
 
 <a href="slayout.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>
   <style>   
       body{
background-image:url('img/bg-img/70.jpg');
background-size:cover;
}
</style>
 
<div class="container">
<table class="table">


<div class="w3-container">
<div class="container">
<div class="col-lg-12">
<br><br>
<h1 class="text-warning text-center"><font color="red">View leave Status</font></h1>
<table class="table table-striped table-hover table-bordered">
<tr class="bg-dark text-white text-center">
<tr>
<td>Name</td>
<td>From date</td>
<td>To date</td>
<td>Status</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from apply_leave";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
   

   

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("from_date") %></td>
<td><%=resultSet.getString("to_date") %></td>
<td><%=resultSet.getString("status") %></td>


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
