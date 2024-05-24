a<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("adminlog.jsp");
%>