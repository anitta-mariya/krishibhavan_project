
<%@ page import ="java.sql.*" %>

<%
   
String name=request.getParameter("name");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String phonenum=request.getParameter("phonenum");
String email=request.getParameter("email");
String thaluk=request.getParameter("thaluk");
String block=request.getParameter("block");
String panchayath=request.getParameter("panchayath");
String village=request.getParameter("village");
String area=request.getParameter("area");
String rationnum=request.getParameter("rationnum");
String rationcopy=request.getParameter("rationcopy");
String aadharnum=request.getParameter("aadharnum");
String aadharcopy=request.getParameter("aadharcopy");


   
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan", "root", "");
Statement st=conn.createStatement();

int i = st.executeUpdate("insert into crop_reg(name,address,dob,gender,phonenum,email,thaluk,block,panchayath,village,area,rationnum,rationcopy,aadharnum,aadharcopy) values('"+name+"','"+address+"','"+dob+"','"+gender+"','"+phonenum+"','"+email+"','"+thaluk+"','"+block+"','"+panchayath+"','"+village+"','"+area+"','"+rationnum+"','"+rationcopy+"','"+aadharnum+"','"+aadharcopy+"')");
 if (i>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("cropreg.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("farmerlog.html");
    }
%>