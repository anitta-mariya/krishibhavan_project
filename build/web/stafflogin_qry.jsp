<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishibhavan",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from  staffs_reg where email='" + email + "' and pwd='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("slayout.html");
    } else {
        out.println("Invalid password or username <a href='staff_login.jsp'>try again</a>");
    }
%> 