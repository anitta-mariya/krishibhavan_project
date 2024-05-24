<%@ page import ="java.sql.*" %>

<%
   
String name=request.getParameter("name");
String mail=request.getParameter("mail");
String phone=request.getParameter("phone");
String message=request.getParameter("message");
  
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
Statement st=conn.createStatement();

int i = st.executeUpdate("insert into feedback_farmer(name,mail,phone,message) values('"+name+"','"+mail+"','"+phone+"','"+message+"')");
 if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("contact.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>