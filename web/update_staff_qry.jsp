<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/krishibhavan";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String number=request.getParameter("number");
String address=request.getParameter("address");
String age=request.getParameter("age");
String position = request.getParameter("position");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update staffs_reg set name=?,gender=?,number=?,address=?,age=?,position=?,email=?,pwd=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2,gender);
ps.setString(3,number);
ps.setString(4,address);
ps.setString(5,age);
ps.setString(6,position);
ps.setString(7, email);
ps.setString(8, pwd);



int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("view_staff.jsp");
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
