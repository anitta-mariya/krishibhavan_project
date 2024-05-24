<%@ page import ="java.sql.*" %>
<%
    String Username = request.getParameter("Username");    
    String Password = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin_login where Username='" + Username + "' and Password='" + Password + "'");
    if (rs.next()) {
        session.setAttribute("Username", Username);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("adminpanel.html");
    } else {
        out.println("Invalid password <a href='adminlog.jsp'>try again</a>");
    }
%>
