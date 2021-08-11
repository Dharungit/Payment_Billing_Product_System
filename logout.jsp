<%

session.removeAttribute("username");
session.invalidate();
response.sendRedirect("index.jsp");

%>