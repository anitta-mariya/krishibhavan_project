
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
 



        <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
   <meta charset="utf-8">
  <link rel="stylesheet" href="css/w3.css">
  
   <li class="active"><a href="slayout.html"><b>back</b></a></li>
  
<br><br>
	
 <form class="form-inline" method="post" action="serqry_pension.jsp">
<input type="text" name="id" class="form-control" placeholder="Search roll no..">
<button type="submit" name="save" class="btn btn-primary">Search</button></form>		
    
   
        <div class="container" style="
  margin-right: 168px;
">
			<br />
			
			
                        
			<br />
			<br />
		
			<br />
			<form method="post" id="user_form">
				<h1 class="text-warning text-center"><font color="green">Pension Registration View</font></h1>
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
                                                        <th>Status</th>
                                                        
							<th>Verify</th>
                                                        <th>reject</th>
						</tr>
                        



<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from pensionreg";
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
<td><%=resultSet.getString("status") %></td>








<td><a href="verify_pension.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Verify</button></a></td>
<td><a href="dele_pension.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>

</tr>
 <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                                        </table>
                        </form>
    
				</div>
				
		

			<br />
		
</body>
</html>
     
  	