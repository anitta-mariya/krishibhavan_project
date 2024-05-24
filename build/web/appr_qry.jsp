<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/krishibhavan";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String from_date=request.getParameter("from_date");
String to_date=request.getParameter("to_date");
String status=request.getParameter("status");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update apply_leave set name=?,from_date=?,to_date=?,status=? where id="+id;
ps = con.prepareStatement(sql);

ps.setString(1, name);
ps.setString(2,from_date);
ps.setString(3, to_date);
ps.setString(4, status);



int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("view_leave.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>