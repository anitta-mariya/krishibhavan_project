a<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("staff_login.jsp");
%>