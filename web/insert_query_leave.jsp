<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%   
String name=request.getParameter("name");
String from_date=request.getParameter("from_date");
String to_date=request.getParameter("to_date");
String description=request.getParameter("description");


//String city_name=request.getParameter("city_name");
//String email=request.getParameter("email");

Connection conn=null;
 Statement st=null;
try
{
    
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
 st=conn.createStatement();

String sql="insert into apply_leave(name,from_date,to_date,description) values('"+name+"','"+from_date+"','"+to_date+"','"+description+"')";
st.executeUpdate(sql);
response.sendRedirect("apply_leave.jsp");
out.print("Data is successfully inserted!");
}
catch(Exception e)
{
out.print(e.getMessage());

}
%>