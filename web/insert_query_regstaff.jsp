
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%   
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String number=request.getParameter("number");
String address=request.getParameter("address");
String age=request.getParameter("age");
String position=request.getParameter("position");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");


//String city_name=request.getParameter("city_name");
//String email=request.getParameter("email");

Connection conn=null;
 Statement st=null;
try
{
    
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
 st=conn.createStatement();

String sql="insert into staffs_reg(name,gender,number,address,age,position,email,pwd) values('"+name+"','"+gender+"','"+number+"','"+address+"','"+age+"','"+position+"','"+email+"','"+pwd+"')";
st.executeUpdate(sql);
response.sendRedirect("reg_staff.jsp");
out.print("Data is successfully inserted!");
}
catch(Exception e)
{
out.print(e.getMessage());

}
%>