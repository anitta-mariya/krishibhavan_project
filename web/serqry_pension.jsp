
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "krishibhavan";
String userid = "root";
String password = "";
String id=request.getParameter("id");
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
<body>
    <h1><center>Search Data</center></h1>
<center>   
<table border="3">
<tr>
<td>Account Book Copy</td>
<td>Aadhar copy</td>
<td>Ration Card Copy</td>

</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
statement=connection.createStatement();
String sql ="select * from pensionreg where id='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><img src="images/Beanie/<%=resultSet.getString("accountcopy") %>"width="300" height="300"></td>
<td><img src="images/Beanie/<%=resultSet.getString("aadharcopy") %>" width="300" height="300"></td>
<td><img src="images/Beanie/<%=resultSet.getString("rationcopy") %>"width="300" height="300"></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>
</table>
</body>
</html