<%@ page import ="java.sql.*" %>

<%
   
String sname=request.getParameter("sname");
String fname=request.getParameter("fname");
String address=request.getParameter("address");
String place=request.getParameter("place");
String phonenum=request.getParameter("phonenum");
String date=request.getParameter("date");
String subject=request.getParameter("subject");
String message=request.getParameter("message");

   
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
Statement st=conn.createStatement();

 int i = st.executeUpdate("insert into field_report(sname,fname,address,place,phonenum,date,subject,message) values('"+sname+"','"+fname+"','"+address+"','"+place+"','"+phonenum+"','"+date+"','"+subject+"','"+message+"')");
 if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("field_report.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("slayout.html");
    }
%>