<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/krishibhavan";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id=request.getParameter("id");
String message=request.getParameter("message");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update staff_notice set id=?,message=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,message);

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("update_notice.jsp");
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
