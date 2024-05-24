<%@ page import ="java.sql.*" %>

<%
   
String name=request.getParameter("name");
String address=request.getParameter("address");
String email=request.getParameter("email");
String phonenum=request.getParameter("phonenum");
String username=request.getParameter("username");
String password=request.getParameter("password");


   
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
Statement st=conn.createStatement();

int i = st.executeUpdate("insert into flog_reg(name,address,email,phonenum,username,password) values('"+name+"','"+address+"','"+email+"','"+phonenum+"','"+username+"','"+password+"')");
 if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("farmerlogin.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("farmerlogin.jsp");
    }
%>