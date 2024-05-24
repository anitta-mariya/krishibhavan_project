<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/krishibhavan";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id=request.getParameter("id");
String sname=request.getParameter("sname");
String fname=request.getParameter("fname");
String address=request.getParameter("address");
String place=request.getParameter("place");
String subject=request.getParameter("subject");
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
String sql="Update field_report set id=?,sname=?,fname=?,address=?,place=?,subject=?,message=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,sname);
ps.setString(3,fname);
ps.setString(4,address);
ps.setString(5,place);
ps.setString(6,subject);
ps.setString(7,message);


int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("view_fieldreport.jsp");
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
