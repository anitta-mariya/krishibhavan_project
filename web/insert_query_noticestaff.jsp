<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String message=request.getParameter("message");



//String city_name=request.getParameter("city_name");
//String email=request.getParameter("email");

Connection conn=null;
 Statement st=null;
try
{
    
Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
 st=conn.createStatement();

String sql="insert into staff_notice(message) values('"+message+"')";
st.executeUpdate(sql);
response.sendRedirect("staff_notice.jsp");
out.print("Data is successfully inserted!");
}
catch(Exception e)
{
out.print(e.getMessage());

}
%>