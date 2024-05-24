a<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("farmerlogin.jsp");
%>